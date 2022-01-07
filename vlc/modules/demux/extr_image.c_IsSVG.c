
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * psz_url; } ;
typedef TYPE_1__ stream_t ;
typedef int ssize_t ;


 int FindSVGmarker (int*,int const*,int,char const*) ;
 char* strstr (int *,char*) ;
 int vlc_stream_Peek (TYPE_1__*,int const**,int) ;

__attribute__((used)) static bool IsSVG(stream_t *s)
{
    if (s->psz_url == ((void*)0))
        return 0;

    char *ext = strstr(s->psz_url, ".svg");
    if (!ext) return 0;

    const uint8_t *header;
    ssize_t size = vlc_stream_Peek(s, &header, 4096);
    if (size == -1)
        return 0;
    int position = 0;

    const char xml[] = "<?xml version=\"";
    if (!FindSVGmarker(&position, header, size, xml))
        return 0;
    if (position != 0)
        return 0;

    const char endxml[] = ">\0";
    if (!FindSVGmarker(&position, header, size, endxml))
        return 0;
    if (position <= 15)
        return 0;

    const char svg[] = "<svg";
    if (!FindSVGmarker(&position, header, size, svg))
        return 0;
    if (position < 19)
        return 0;





    return 1;
}
