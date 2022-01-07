
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 int free (char*) ;
 scalar_t__ likely (int ) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 size_t strcspn (char const*,char*) ;
 int strlen (char const*) ;
 int strspn (char const*,char*) ;
 int var_OptionParse (int *,char*,int) ;

int (var_LocationParse)(vlc_object_t *obj, const char *mrl, const char *pref)
{
    int ret = VLC_SUCCESS;
    size_t preflen = strlen (pref) + 1;

    assert(mrl != ((void*)0));
    while (*mrl != '\0')
    {
        mrl += strspn (mrl, ":;");

        size_t len = strcspn (mrl, ":;");
        char *buf = malloc (preflen + len);

        if (likely(buf != ((void*)0)))
        {


            snprintf (buf, preflen + len, "%s%s", pref, mrl);
            var_OptionParse (obj, buf, 0);
            free (buf);
        }
        else
            ret = VLC_ENOMEM;
        mrl += len;
    }

    return ret;
}
