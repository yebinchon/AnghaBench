
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct mpg123_pars_struct {int dummy; } ;
typedef int mpg123_pars ;
struct TYPE_16__ {int feedbuffer; int feedpool; } ;
struct TYPE_14__ {int buffer; int * cleanup_handle; int * r_lseek_handle; int * r_read_handle; int * iohandle; int * r_lseek; int * r_read; } ;
struct TYPE_13__ {int type; int class; } ;
struct TYPE_12__ {scalar_t__ size; scalar_t__ fill; int * rdata; int * data; } ;
struct TYPE_15__ {int* ntom_val; int ntom_step; int decoder_change; int index; int * make_decode_tables; int * synth_mono; int * synth; scalar_t__ down_sample; TYPE_6__ p; TYPE_3__ rdat; int err; int * wrapperclean; int * wrapperdata; int af; int icy; TYPE_2__ cpu_opts; int * xing_toc; int * layerscratch; int * dithernoise; int * conv16to8_buf; scalar_t__ rawdecwins; int * rawdecwin; scalar_t__ rawbuffss; int * rawbuffs; TYPE_1__ buffer; int own_buffer; } ;
typedef TYPE_4__ mpg123_handle ;


 int MPG123_OK ;
 int NTOM_MUL ;
 int TRUE ;
 int bc_prepare (int *,int ,int ) ;
 int decclass (int ) ;
 int defdec () ;
 int fi_init (int *) ;
 int frame_default_pars (TYPE_6__*) ;
 int frame_fixed_reset (TYPE_4__*) ;
 int frame_index_setup (TYPE_4__*) ;
 int init_icy (int *) ;
 int init_id3 (TYPE_4__*) ;
 int invalidate_format (int *) ;
 int memcpy (TYPE_6__*,int *,int) ;
 int mpg123_reset_eq (TYPE_4__*) ;

void frame_init_par(mpg123_handle *fr, mpg123_pars *mp)
{
 fr->own_buffer = TRUE;
 fr->buffer.data = ((void*)0);
 fr->buffer.rdata = ((void*)0);
 fr->buffer.fill = 0;
 fr->buffer.size = 0;
 fr->rawbuffs = ((void*)0);
 fr->rawbuffss = 0;
 fr->rawdecwin = ((void*)0);
 fr->rawdecwins = 0;

 fr->conv16to8_buf = ((void*)0);




 fr->layerscratch = ((void*)0);
 fr->xing_toc = ((void*)0);
 fr->cpu_opts.type = defdec();
 fr->cpu_opts.class = decclass(fr->cpu_opts.type);


 fr->ntom_val[0] = NTOM_MUL>>1;
 fr->ntom_val[1] = NTOM_MUL>>1;
 fr->ntom_step = NTOM_MUL;


 mpg123_reset_eq(fr);
 init_icy(&fr->icy);
 init_id3(fr);



 invalidate_format(&fr->af);
 fr->rdat.r_read = ((void*)0);
 fr->rdat.r_lseek = ((void*)0);
 fr->rdat.iohandle = ((void*)0);
 fr->rdat.r_read_handle = ((void*)0);
 fr->rdat.r_lseek_handle = ((void*)0);
 fr->rdat.cleanup_handle = ((void*)0);
 fr->wrapperdata = ((void*)0);
 fr->wrapperclean = ((void*)0);
 fr->decoder_change = 1;
 fr->err = MPG123_OK;
 if(mp == ((void*)0)) frame_default_pars(&fr->p);
 else memcpy(&fr->p, mp, sizeof(struct mpg123_pars_struct));


 bc_prepare(&fr->rdat.buffer, fr->p.feedpool, fr->p.feedbuffer);


 fr->down_sample = 0;
 frame_fixed_reset(fr);
 fr->synth = ((void*)0);
 fr->synth_mono = ((void*)0);
 fr->make_decode_tables = ((void*)0);




}
