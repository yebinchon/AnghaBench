
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int opj_event_mgr_t ;
struct TYPE_6__ {scalar_t__ track_type; unsigned int num_samples; int * sample; } ;
typedef TYPE_1__ mj2_tk_t ;
typedef int mj2_sample_t ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 scalar_t__ xml_out_frame (int *,int *,int *,unsigned int,int *) ;
 int xml_write_mdia (int *,int *,TYPE_1__*,unsigned int) ;
 int xml_write_tkhd (int *,int *,TYPE_1__*,unsigned int) ;
 int xml_write_udta (int *,int *,TYPE_1__*,unsigned int) ;

void xml_write_trak(FILE* file, FILE* xmlout, mj2_tk_t *track,
                    unsigned int tnum, unsigned int sampleframe, opj_event_mgr_t *event_mgr)
{
    fprintf(xmlout, "    <Track BoxType=\"trak\" Instance=\"%d\">\n", tnum);
    xml_write_tkhd(file, xmlout, track, tnum);


    xml_write_mdia(file, xmlout, track, tnum);
    xml_write_udta(file, xmlout, track,
                   tnum);

    if (track->track_type == 0) {



        if (sampleframe > 0 && sampleframe <= track->num_samples) {
            mj2_sample_t *sample;
            unsigned int snum;

            snum = sampleframe - 1;


            sample = &track->sample[snum];
            if (xml_out_frame(file, xmlout, sample, snum, event_mgr)) {
                return;
            }
        }
    }
    fprintf(xmlout, "    </Track>\n");
}
