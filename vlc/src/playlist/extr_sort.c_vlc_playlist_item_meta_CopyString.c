
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 char* strdup (char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
vlc_playlist_item_meta_CopyString(const char **to, const char *from)
{
    if (from)
    {
        *to = strdup(from);
        if (unlikely(!*to))
            return VLC_ENOMEM;
    }
    else
        *to = ((void*)0);
    return VLC_SUCCESS;
}
