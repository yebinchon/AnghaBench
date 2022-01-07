
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp4mux_trackinfo_t ;
typedef int bo_t ;


 int * GetESDS (int *) ;
 int bo_add_32be (int *,int) ;
 int bo_add_fourcc (int *,char*) ;
 int box_gather (int *,int *) ;
 int * box_new (char*) ;

__attribute__((used)) static bo_t *GetWaveTag(mp4mux_trackinfo_t *p_track)
{
    bo_t *wave;
    bo_t *box;

    wave = box_new("wave");
    if(wave)
    {
        box = box_new("frma");
        if(box)
        {
            bo_add_fourcc(box, "mp4a");
            box_gather(wave, box);
        }

        box = box_new("mp4a");
        if(box)
        {
            bo_add_32be(box, 0);
            box_gather(wave, box);
        }

        box = GetESDS(p_track);
        box_gather(wave, box);

        box = box_new("srcq");
        if(box)
        {
            bo_add_32be(box, 0x40);
            box_gather(wave, box);
        }


        bo_add_32be(wave, 8);
        bo_add_32be(wave, 0);
    }
    return wave;
}
