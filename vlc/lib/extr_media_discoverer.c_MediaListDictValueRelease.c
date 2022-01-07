
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int libvlc_media_list_release (void*) ;

__attribute__((used)) static void
MediaListDictValueRelease( void* mlist, void* obj )
{
    libvlc_media_list_release( mlist );
    (void)obj;
}
