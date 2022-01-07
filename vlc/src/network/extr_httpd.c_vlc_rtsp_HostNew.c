
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int httpd_host_t ;


 int * httpd_HostCreate (int *,char*,char*,int *) ;

httpd_host_t *vlc_rtsp_HostNew(vlc_object_t *p_this)
{
    return httpd_HostCreate(p_this, "rtsp-host", "rtsp-port", ((void*)0));
}
