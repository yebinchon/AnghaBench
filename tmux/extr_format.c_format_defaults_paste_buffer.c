
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct paste_buffer {int dummy; } ;
struct format_tree {int dummy; } ;


 int format_add (struct format_tree*,char*,char*,...) ;
 int format_add_tv (struct format_tree*,char*,struct timeval*) ;
 int free (char*) ;
 int paste_buffer_created (struct paste_buffer*) ;
 int paste_buffer_data (struct paste_buffer*,size_t*) ;
 char* paste_buffer_name (struct paste_buffer*) ;
 char* paste_make_sample (struct paste_buffer*) ;
 int timerclear (struct timeval*) ;

void
format_defaults_paste_buffer(struct format_tree *ft, struct paste_buffer *pb)
{
 struct timeval tv;
 size_t size;
 char *s;

 timerclear(&tv);
 tv.tv_sec = paste_buffer_created(pb);
 paste_buffer_data(pb, &size);

 format_add(ft, "buffer_size", "%zu", size);
 format_add(ft, "buffer_name", "%s", paste_buffer_name(pb));
 format_add_tv(ft, "buffer_created", &tv);

 s = paste_make_sample(pb);
 format_add(ft, "buffer_sample", "%s", s);
 free(s);
}
