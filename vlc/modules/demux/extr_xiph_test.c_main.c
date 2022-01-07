
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct params_s {int lavc; int packets_count; int** packets; int* packets_sizes; int * p_append; scalar_t__ i_append; void* codec; } ;


 int FAIL ;
 int OK ;
 int RUN (char*,int ,int*,int,int ) ;
 void* VLC_CODEC_VORBIS ;
 int XIPH_MAX_HEADER_COUNT ;
 int free (int *) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int,int) ;
 int test_xiph_AppendHeaders ;
 int test_xiph_CountHeaders ;
 int test_xiph_CountLavcHeaders ;
 int test_xiph_IsLavcFormat ;
 int test_xiph_PackHeaders ;
 int test_xiph_SplitHeaders ;
 int test_xiph_SplitLavcHeaders ;
 int* xiph0 ;
 int* xiph1 ;
 int* xiphlavc0 ;

int main(void)
{
    struct params_s params;

    params.lavc = 0;
    params.codec = VLC_CODEC_VORBIS;


    RUN("0", test_xiph_IsLavcFormat, xiph0, 0, OK);
    RUN("1", test_xiph_IsLavcFormat, xiph0, 1, OK);
    RUN("2", test_xiph_IsLavcFormat, xiph0, 2, OK);
    RUN("3", test_xiph_IsLavcFormat, xiph0, 6, OK);
    RUN("lavc0", test_xiph_IsLavcFormat, xiph0, 0, OK);
    RUN("lavc1", test_xiph_IsLavcFormat, xiph0, 1, OK);
    RUN("lavc2", test_xiph_IsLavcFormat, xiph0, 6, OK);
    RUN("lavc3", test_xiph_IsLavcFormat, xiphlavc0, 0, OK);
    RUN("lavc4", test_xiph_IsLavcFormat, xiphlavc0, 1, OK);
    params.lavc = 1;
    RUN("lavc5", test_xiph_IsLavcFormat, xiphlavc0, 37, OK);
    params.codec = 0;
    params.lavc = 0;
    RUN("lavc6", test_xiph_IsLavcFormat, xiphlavc0, 37, OK);


    params.packets_count = 0;
    RUN("0", test_xiph_CountHeaders, xiph0, 0, OK);
    params.packets_count = 1;
    RUN("1", test_xiph_CountHeaders, xiph0, 1, OK);
    params.packets_count = 3;
    RUN("2", test_xiph_CountHeaders, xiph1, 11, OK);


    params.packets_count = 3;
    params.codec = VLC_CODEC_VORBIS;
    RUN("lavc0", test_xiph_CountLavcHeaders, xiphlavc0, 37, OK);
    params.packets_count = 0;
    RUN("lavc1", test_xiph_CountLavcHeaders, xiphlavc0, 35, OK);
    RUN("lavc2", test_xiph_CountLavcHeaders, xiphlavc0, 0, OK);


    params.packets[0] = &xiph0[1];
    params.packets_sizes[0] = 5;
    params.packets_count = 1;
    RUN("0", test_xiph_SplitHeaders, xiph0, 6, OK);
    params.packets_sizes[0] = 0;
    RUN("1", test_xiph_SplitHeaders, xiph0, 1, OK);


    params.packets_count = 3;
    params.packets[0] = &xiph1[3];
    params.packets_sizes[0] = 5;
    params.packets[1] = &xiph1[8];
    params.packets_sizes[1] = 1;
    params.packets[2] = &xiph1[9];
    params.packets_sizes[2] = 2;
    RUN("2", test_xiph_SplitHeaders, xiph1, 11, OK);
    RUN("3", test_xiph_SplitHeaders, xiph1, 7, FAIL);


    uint8_t xiph2[265];
    memset(xiph2, 0xFF, 265);
    RUN("4", test_xiph_SplitHeaders, xiph2, 265, FAIL);
    xiph2[0] = 1;
    RUN("5", test_xiph_SplitHeaders, xiph2, 265, FAIL);
    xiph2[2] = 1;
    params.packets_count = 2;
    params.packets[0] = &xiph2[3];
    params.packets_sizes[0] = 256;
    params.packets[1] = &xiph2[3+256];
    params.packets_sizes[1] = 6;
    RUN("6", test_xiph_SplitHeaders, xiph2, 265, OK);



    params.packets_count = 3;
    params.packets[0] = &xiphlavc0[2];
    params.packets_sizes[0] = 30;
    params.packets[1] = &xiphlavc0[34];
    params.packets_sizes[1] = 1;
    params.packets[2] = &xiphlavc0[37];
    params.packets_sizes[2] = 0;
    RUN("lavc0", test_xiph_SplitLavcHeaders, xiphlavc0, 37, OK);
    RUN("lavc1", test_xiph_SplitLavcHeaders, xiphlavc0, 36, FAIL);
    RUN("lavc2", test_xiph_SplitLavcHeaders, xiphlavc0, 31, FAIL);


    params.packets_count = XIPH_MAX_HEADER_COUNT + 1;
    RUN("0", test_xiph_PackHeaders, xiph0, 6, FAIL);
    params.packets_count = 1;
    params.packets[0] = &xiph0[1];
    params.packets_sizes[0] = 5;
    RUN("1", test_xiph_PackHeaders, xiph0, 6, OK);


    params.packets_count = 0;
    RUN("2", test_xiph_PackHeaders, xiph1, 11, FAIL);
    params.packets_count = 3;
    params.packets[0] = &xiph1[3];
    params.packets_sizes[0] = 5;
    params.packets[1] = &xiph1[8];
    params.packets_sizes[1] = 1;
    params.packets[2] = &xiph1[9];
    params.packets_sizes[2] = 2;
    RUN("3", test_xiph_PackHeaders, xiph1, 11, OK);


    params.packets_count = 2;
    params.packets[0] = &xiph2[3];
    params.packets_sizes[0] = 256;
    params.packets[1] = &xiph2[3+256];
    params.packets_sizes[1] = 6;
    RUN("4", test_xiph_PackHeaders, xiph2, 265, OK);


    params.i_append = 0;
    params.p_append = ((void*)0);
    params.packets[0] = &xiph0[1];
    params.packets_sizes[0] = 5;
    RUN("0", test_xiph_AppendHeaders, xiph0, 6, OK);

    xiph2[0] = 1;
    xiph2[1] = 5;
    memcpy(&xiph2[2+0], &xiph0[1], 5);
    memcpy(&xiph2[2+5], &xiph0[1], 5);
    RUN("1", test_xiph_AppendHeaders, xiph2, 12, OK);

    free(params.p_append);
    params.i_append = 0;
    params.p_append = ((void*)0);
    for(size_t i=0; i<=XIPH_MAX_HEADER_COUNT; i++)
    {
        params.packets_sizes[0] = 0;
        xiph2[0] = i;
        xiph2[1 + i] = 0;
        RUN("2", test_xiph_AppendHeaders, xiph2, 1 + i,
            ((i < XIPH_MAX_HEADER_COUNT) ? OK : FAIL) );
    }

    free(params.p_append);

    return 0;
}
