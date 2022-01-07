
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_part ;
typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_strlcpy (char*,char*,int) ;
 int fz_throw (int *,int ,char*) ;
 char* fz_xml_att (int *,char*) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;
 int * xps_read_part (int *,int *,char*) ;
 int xps_resolve_url (int *,int *,char*,char*,char*,int) ;

__attribute__((used)) static void
xps_find_image_brush_source_part(fz_context *ctx, xps_document *doc, char *base_uri, fz_xml *root, xps_part **image_part, xps_part **profile_part)
{
 char *image_source_att;
 char buf[1024];
 char partname[1024];
 char *image_name;
 char *profile_name;
 char *p;

 image_source_att = fz_xml_att(root, "ImageSource");
 if (!image_source_att)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find image source attribute");


 if (strstr(image_source_att, "{ColorConvertedBitmap") == image_source_att)
 {
  image_name = ((void*)0);
  profile_name = ((void*)0);

  fz_strlcpy(buf, image_source_att, sizeof buf);
  p = strchr(buf, ' ');
  if (p)
  {
   image_name = p + 1;
   p = strchr(p + 1, ' ');
   if (p)
   {
    *p = 0;
    profile_name = p + 1;
    p = strchr(p + 1, '}');
    if (p)
     *p = 0;
   }
  }
 }
 else
 {
  image_name = image_source_att;
  profile_name = ((void*)0);
 }

 if (!image_name)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find image source");

 if (image_part)
 {
  xps_resolve_url(ctx, doc, partname, base_uri, image_name, sizeof partname);
  *image_part = xps_read_part(ctx, doc, partname);
 }

 if (profile_part)
 {
  if (profile_name)
  {
   xps_resolve_url(ctx, doc, partname, base_uri, profile_name, sizeof partname);
   *profile_part = xps_read_part(ctx, doc, partname);
  }
  else
   *profile_part = ((void*)0);
 }
}
