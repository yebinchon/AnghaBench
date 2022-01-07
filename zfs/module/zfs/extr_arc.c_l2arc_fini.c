
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cv_destroy (int *) ;
 int l2arc_dev_list ;
 int l2arc_dev_mtx ;
 int l2arc_do_free_on_write () ;
 int l2arc_feed_thr_cv ;
 int l2arc_feed_thr_lock ;
 int l2arc_free_on_write ;
 int l2arc_free_on_write_mtx ;
 int list_destroy (int ) ;
 int mutex_destroy (int *) ;

void
l2arc_fini(void)
{






 l2arc_do_free_on_write();

 mutex_destroy(&l2arc_feed_thr_lock);
 cv_destroy(&l2arc_feed_thr_cv);
 mutex_destroy(&l2arc_dev_mtx);
 mutex_destroy(&l2arc_free_on_write_mtx);

 list_destroy(l2arc_dev_list);
 list_destroy(l2arc_free_on_write);
}
