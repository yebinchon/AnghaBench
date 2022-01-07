
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ io_child_type; scalar_t__ io_orig_stage; int io_flags; int io_orig_flags; scalar_t__ io_stage; int io_queued_timestamp; int io_lock; int ** io_children; int io_bp; scalar_t__* io_child_error; scalar_t__* io_state; scalar_t__ io_error; scalar_t__ io_pipeline_trace; scalar_t__ io_reexecute; int io_orig_pipeline; int io_pipeline; int * io_gang_tree; int * io_gang_leader; } ;
typedef TYPE_1__ zio_t ;
typedef int zio_link_t ;


 int ASSERT (int) ;
 int BP_ZERO (int ) ;
 scalar_t__ IO_IS_ALLOCATING (TYPE_1__*) ;
 scalar_t__ ZIO_CHILD_LOGICAL ;
 int ZIO_CHILD_TYPES ;
 int ZIO_FLAG_GODFATHER ;
 int ZIO_FLAG_REEXECUTED ;
 scalar_t__ ZIO_STAGE_OPEN ;
 int ZIO_WAIT_TYPES ;
 int __zio_execute (TYPE_1__*) ;
 int gethrtime () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_1__* zio_walk_children (TYPE_1__*,int **) ;

__attribute__((used)) static void
zio_reexecute(zio_t *pio)
{
 zio_t *cio, *cio_next;

 ASSERT(pio->io_child_type == ZIO_CHILD_LOGICAL);
 ASSERT(pio->io_orig_stage == ZIO_STAGE_OPEN);
 ASSERT(pio->io_gang_leader == ((void*)0));
 ASSERT(pio->io_gang_tree == ((void*)0));

 pio->io_flags = pio->io_orig_flags;
 pio->io_stage = pio->io_orig_stage;
 pio->io_pipeline = pio->io_orig_pipeline;
 pio->io_reexecute = 0;
 pio->io_flags |= ZIO_FLAG_REEXECUTED;
 pio->io_pipeline_trace = 0;
 pio->io_error = 0;
 for (int w = 0; w < ZIO_WAIT_TYPES; w++)
  pio->io_state[w] = 0;
 for (int c = 0; c < ZIO_CHILD_TYPES; c++)
  pio->io_child_error[c] = 0;

 if (IO_IS_ALLOCATING(pio))
  BP_ZERO(pio->io_bp);
 zio_link_t *zl = ((void*)0);
 mutex_enter(&pio->io_lock);
 for (cio = zio_walk_children(pio, &zl); cio != ((void*)0); cio = cio_next) {
  cio_next = zio_walk_children(pio, &zl);
  for (int w = 0; w < ZIO_WAIT_TYPES; w++)
   pio->io_children[cio->io_child_type][w]++;
  mutex_exit(&pio->io_lock);
  zio_reexecute(cio);
  mutex_enter(&pio->io_lock);
 }
 mutex_exit(&pio->io_lock);






 if (!(pio->io_flags & ZIO_FLAG_GODFATHER)) {
  pio->io_queued_timestamp = gethrtime();
  __zio_execute(pio);
 }
}
