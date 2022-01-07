
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pcl_options ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int copy_opts (int *,int *) ;
 int fz_pcl_options_dj500 ;
 int fz_pcl_options_fs600 ;
 int fz_pcl_options_generic ;
 int fz_pcl_options_lj ;
 int fz_pcl_options_lj2 ;
 int fz_pcl_options_lj3 ;
 int fz_pcl_options_lj3d ;
 int fz_pcl_options_lj4 ;
 int fz_pcl_options_lj4d ;
 int fz_pcl_options_lj4pl ;
 int fz_pcl_options_ljet4 ;
 int fz_pcl_options_lp2563b ;
 int fz_pcl_options_oce9050 ;
 int fz_throw (int *,int ,char*,char const*) ;
 int strcmp (char const*,char*) ;

void fz_pcl_preset(fz_context *ctx, fz_pcl_options *opts, const char *preset)
{
 if (preset == ((void*)0) || *preset == 0 || !strcmp(preset, "generic"))
  copy_opts(opts, &fz_pcl_options_generic);
 else if (!strcmp(preset, "ljet4"))
  copy_opts(opts, &fz_pcl_options_ljet4);
 else if (!strcmp(preset, "dj500"))
  copy_opts(opts, &fz_pcl_options_dj500);
 else if (!strcmp(preset, "fs600"))
  copy_opts(opts, &fz_pcl_options_fs600);
 else if (!strcmp(preset, "lj"))
  copy_opts(opts, &fz_pcl_options_lj);
 else if (!strcmp(preset, "lj2"))
  copy_opts(opts, &fz_pcl_options_lj2);
 else if (!strcmp(preset, "lj3"))
  copy_opts(opts, &fz_pcl_options_lj3);
 else if (!strcmp(preset, "lj3d"))
  copy_opts(opts, &fz_pcl_options_lj3d);
 else if (!strcmp(preset, "lj4"))
  copy_opts(opts, &fz_pcl_options_lj4);
 else if (!strcmp(preset, "lj4pl"))
  copy_opts(opts, &fz_pcl_options_lj4pl);
 else if (!strcmp(preset, "lj4d"))
  copy_opts(opts, &fz_pcl_options_lj4d);
 else if (!strcmp(preset, "lp2563b"))
  copy_opts(opts, &fz_pcl_options_lp2563b);
 else if (!strcmp(preset, "oce9050"))
  copy_opts(opts, &fz_pcl_options_oce9050);
 else
  fz_throw(ctx, FZ_ERROR_GENERIC, "Unknown preset '%s'", preset);
}
