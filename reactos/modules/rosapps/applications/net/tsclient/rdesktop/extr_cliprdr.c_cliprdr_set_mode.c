
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;


 int ui_clip_set_mode (int *,char const*) ;

void
cliprdr_set_mode(RDPCLIENT * This, const char *optarg)
{
 ui_clip_set_mode(This, optarg);
}
