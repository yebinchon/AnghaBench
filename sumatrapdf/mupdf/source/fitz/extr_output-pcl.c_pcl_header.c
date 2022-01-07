
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int odd_page_init ;
struct TYPE_4__ {char* odd_page_init; char* even_page_init; int page_count; int features; int orientation; int paper_size; scalar_t__ duplex; scalar_t__ duplex_set; int tumble; } ;
typedef TYPE_1__ fz_pcl_options ;
typedef int fz_output ;
typedef int fz_context ;
typedef int even_page_init ;


 int HACK__IS_A_LJET4PJL ;
 int PCL_CAN_SET_PAPER_SIZE ;
 int PCL_END_GRAPHICS_DOES_RESET ;
 int PCL_HAS_DUPLEX ;
 int PCL_HAS_ORIENTATION ;
 int fz_write_printf (int *,int *,char*,int) ;
 int fz_write_string (int *,int *,char*) ;
 int make_init (TYPE_1__*,char*,int,char*,int) ;

__attribute__((used)) static void
pcl_header(fz_context *ctx, fz_output *out, fz_pcl_options *pcl, int num_copies, int xres, int yres, int w, int h)
{
 char odd_page_init[80];
 char even_page_init[80];

 make_init(pcl, odd_page_init, sizeof(odd_page_init), pcl->odd_page_init, xres);
 make_init(pcl, even_page_init, sizeof(even_page_init), pcl->even_page_init, xres);

 if (pcl->page_count == 0)
 {
  if (pcl->features & HACK__IS_A_LJET4PJL)
   fz_write_string(ctx, out, "\033%-12345X@PJL\r\n@PJL ENTER LANGUAGE = PCL\r\n");
  fz_write_string(ctx, out, "\033E");

  fz_write_string(ctx, out, "\033&10e-180u36Z");

  if (pcl->features & PCL_HAS_ORIENTATION)
  {
   fz_write_printf(ctx, out, "\033&l%dO", pcl->orientation);
  }


  if (pcl->features & PCL_CAN_SET_PAPER_SIZE)
  {

   {
    int decipointw = (w * 720 + (xres>>1)) / xres;
    int decipointh = (h * 720 + (yres>>1)) / yres;

    fz_write_printf(ctx, out, "\033&f%dI", decipointw);
    fz_write_printf(ctx, out, "\033&f%dJ", decipointh);
   }
   fz_write_printf(ctx, out, "\033&l%dA", pcl->paper_size);
  }

  if (pcl->features & PCL_HAS_DUPLEX)
  {
   if (pcl->duplex_set)
   {
    if (pcl->duplex)
    {
     if (!pcl->tumble)
      fz_write_string(ctx, out, "\033&l1S");
     else
      fz_write_string(ctx, out, "\033&l2S");
    }
    else
     fz_write_string(ctx, out, "\033&l0S");
   }
   else
   {

    fz_write_string(ctx, out, "\033&l1S");
   }
  }
 }
 if ((pcl->features & PCL_HAS_DUPLEX) && pcl->duplex_set && pcl->duplex)
 {

  if (((pcl->page_count/num_copies)%2) == 0)
  {
   if (pcl->page_count != 0 && (pcl->features & PCL_CAN_SET_PAPER_SIZE))
   {
    fz_write_printf(ctx, out, "\033&l%dA", pcl->paper_size);
   }
   fz_write_string(ctx, out, "\033&l0o0l0E");
   fz_write_string(ctx, out, pcl->odd_page_init);
  }
  else
   fz_write_string(ctx, out, pcl->even_page_init);
 }
 else
 {
  if (pcl->features & PCL_CAN_SET_PAPER_SIZE)
  {
   fz_write_printf(ctx, out, "\033&l%dA", pcl->paper_size);
  }
  fz_write_string(ctx, out, "\033&l0o0l0E");
  fz_write_string(ctx, out, pcl->odd_page_init);
 }

 fz_write_printf(ctx, out, "\033&l%dX", num_copies);


 fz_write_string(ctx, out, "\033*rB\033*p0x0Y");



 if (pcl->features & PCL_END_GRAPHICS_DOES_RESET)
 {
  fz_write_string(ctx, out, pcl->odd_page_init);
  fz_write_printf(ctx, out, "\033&l%dX", num_copies);
 }


 fz_write_printf(ctx, out, "\033*t%dR", xres);




 fz_write_printf(ctx, out, "\033&u%dD", xres);

 pcl->page_count++;
}
