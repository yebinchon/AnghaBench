
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * db_data; } ;
struct TYPE_7__ {TYPE_1__ db; TYPE_3__* db_buf; int db_mtx; } ;
typedef TYPE_2__ dmu_buf_impl_t ;
struct TYPE_8__ {int * b_data; } ;
typedef TYPE_3__ arc_buf_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;

__attribute__((used)) static void
dbuf_set_data(dmu_buf_impl_t *db, arc_buf_t *buf)
{
 ASSERT(MUTEX_HELD(&db->db_mtx));
 ASSERT(buf != ((void*)0));

 db->db_buf = buf;
 ASSERT(buf->b_data != ((void*)0));
 db->db.db_data = buf->b_data;
}
