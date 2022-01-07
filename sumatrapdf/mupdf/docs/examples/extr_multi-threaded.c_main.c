
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct data {int pagenumber; int * list; int * pix; int bbox; int * ctx; } ;
typedef struct data pthread_t ;
typedef int pthread_mutex_t ;
typedef int fz_rect ;
typedef int fz_pixmap ;
typedef int fz_page ;
struct TYPE_3__ {int unlock; int lock; int * user; } ;
typedef TYPE_1__ fz_locks_context ;
typedef int fz_irect ;
typedef int fz_document ;
typedef int fz_display_list ;
typedef int fz_device ;
typedef int fz_context ;


 int FZ_LOCK_MAX ;
 int FZ_STORE_UNLIMITED ;
 int fail (char*) ;
 int fflush (int *) ;
 int fprintf (int ,char*,...) ;
 int free (struct data*) ;
 int fz_bound_page (int *,int *,int *) ;
 int fz_clear_pixmap_with_value (int *,int *,int) ;
 int fz_close_device (int *,int *) ;
 int fz_count_pages (int *,int *) ;
 int fz_device_rgb (int *) ;
 int fz_drop_context (int *) ;
 int fz_drop_device (int *,int *) ;
 int fz_drop_display_list (int *,int *) ;
 int fz_drop_document (int *,int *) ;
 int fz_drop_page (int *,int *) ;
 int fz_drop_pixmap (int *,int *) ;
 int fz_identity ;
 int * fz_load_page (int *,int *,int) ;
 int * fz_new_context (int *,TYPE_1__*,int ) ;
 int * fz_new_display_list (int *,int *) ;
 int * fz_new_list_device (int *,int *) ;
 int * fz_new_pixmap_with_bbox (int *,int ,int ,int *,int ) ;
 int * fz_open_document (int *,char*) ;
 int fz_register_document_handlers (int *) ;
 int fz_round_rect (int *,int *) ;
 int fz_run_page (int *,int *,int *,int *,int *) ;
 int fz_save_pixmap_as_png (int *,int *,char*) ;
 int lock_mutex ;
 struct data* malloc (int) ;
 scalar_t__ pthread_create (struct data*,int *,int ,struct data*) ;
 scalar_t__ pthread_join (struct data,void**) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int renderer ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 int unlock_mutex ;

int main(int argc, char **argv)
{
 char *filename = argc >= 2 ? argv[1] : "";
 pthread_t *thread = ((void*)0);
 fz_locks_context locks;
 pthread_mutex_t mutex[FZ_LOCK_MAX];
 fz_context *ctx;
 fz_document *doc;
 int threads;
 int i;



 for (i = 0; i < FZ_LOCK_MAX; i++)
 {
  if (pthread_mutex_init(&mutex[i], ((void*)0)) != 0)
   fail("pthread_mutex_init()");
 }







 locks.user = mutex;
 locks.lock = lock_mutex;
 locks.unlock = unlock_mutex;





 ctx = fz_new_context(((void*)0), &locks, FZ_STORE_UNLIMITED);



 fz_register_document_handlers(ctx);




 doc = fz_open_document(ctx, filename);




 threads = fz_count_pages(ctx, doc);
 fprintf(stderr, "spawning %d threads, one per page...\n", threads);

 thread = malloc(threads * sizeof (pthread_t));

 for (i = 0; i < threads; i++)
 {
  fz_page *page;
  fz_rect bbox;
  fz_irect rbox;
  fz_display_list *list;
  fz_device *dev;
  fz_pixmap *pix;
  struct data *data;





  page = fz_load_page(ctx, doc, i);



  fz_bound_page(ctx, page, &bbox);






  list = fz_new_display_list(ctx, &bbox);




  dev = fz_new_list_device(ctx, list);
  fz_run_page(ctx, page, dev, &fz_identity, ((void*)0));
  fz_close_device(ctx, dev);
  fz_drop_device(ctx, dev);




  fz_drop_page(ctx, page);



  pix = fz_new_pixmap_with_bbox(ctx, fz_device_rgb(ctx), fz_round_rect(&rbox, &bbox), ((void*)0), 0);
  fz_clear_pixmap_with_value(ctx, pix, 0xff);




  data = malloc(sizeof (struct data));

  data->pagenumber = i + 1;
  data->ctx = ctx;
  data->list = list;
  data->bbox = bbox;
  data->pix = pix;



  if (pthread_create(&thread[i], ((void*)0), renderer, data) != 0)
   fail("pthread_create()");
 }




 fprintf(stderr, "joining %d threads...\n", threads);
 for (i = threads - 1; i >= 0; i--)
 {
  char filename[42];
  struct data *data;

  if (pthread_join(thread[i], (void **) &data) != 0)
   fail("pthread_join");

  sprintf(filename, "out%04d.png", i);
  fprintf(stderr, "\tSaving %s...\n", filename);



  fz_save_pixmap_as_png(ctx, data->pix, filename);




  fz_drop_pixmap(ctx, data->pix);
  fz_drop_display_list(ctx, data->list);




  free(data);
 }

 fprintf(stderr, "finally!\n");
 fflush(((void*)0));

 free(thread);




 fz_drop_document(ctx, doc);
 fz_drop_context(ctx);

 return 0;
}
