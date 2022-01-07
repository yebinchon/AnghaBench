
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (char const* const*) ;
 int * strnstr (char const*,char const* const,size_t) ;

__attribute__((used)) static bool IsHLS(const unsigned char *buf, size_t length)
{
    static const char *const hlsexts[] =
    {
        "#EXT-X-MEDIA:",
        "#EXT-X-VERSION:",
        "#EXT-X-TARGETDURATION:",
        "#EXT-X-MEDIA-SEQUENCE:",
        "#EXT-X-STREAM-INF:",
    };

    for (size_t i = 0; i < ARRAY_SIZE(hlsexts); i++)
        if (strnstr((const char *)buf, hlsexts[i], length) != ((void*)0))
            return 1;

    return 0;
}
