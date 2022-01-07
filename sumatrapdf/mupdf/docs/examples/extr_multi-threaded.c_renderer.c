
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int pagenumber; int * pix; int bbox; int * list; int * ctx; } ;
typedef int fz_rect ;
typedef int fz_pixmap ;
typedef int fz_display_list ;
typedef int fz_device ;
typedef int fz_context ;


 int fprintf (int ,char*,int) ;
 int * fz_clone_context (int *) ;
 int fz_close_device (int *,int *) ;
 int fz_drop_context (int *) ;
 int fz_drop_device (int *,int *) ;
 int fz_identity ;
 int * fz_new_draw_device (int *,int *,int *) ;
 int fz_run_display_list (int *,int *,int *,int *,int *,int *) ;
 int stderr ;

void *
renderer(void *data)
{
 int pagenumber = ((struct data *) data)->pagenumber;
 fz_context *ctx = ((struct data *) data)->ctx;
 fz_display_list *list = ((struct data *) data)->list;
 fz_rect bbox = ((struct data *) data)->bbox;
 fz_pixmap *pix = ((struct data *) data)->pix;
 fz_device *dev;

 fprintf(stderr, "thread at page %d loading!\n", pagenumber);





 ctx = fz_clone_context(ctx);




 fprintf(stderr, "thread at page %d rendering!\n", pagenumber);
 dev = fz_new_draw_device(ctx, &fz_identity, pix);
 fz_run_display_list(ctx, list, dev, &fz_identity, &bbox, ((void*)0));
 fz_close_device(ctx, dev);
 fz_drop_device(ctx, dev);



 fz_drop_context(ctx);

 fprintf(stderr, "thread at page %d done!\n", pagenumber);

 return data;
}
