
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_11__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_12__ {TYPE_7__* context; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
struct TYPE_13__ {scalar_t__ i_buffer; int p_buffer; struct TYPE_13__* p_next; } ;
typedef TYPE_3__ block_t ;
struct TYPE_14__ {int error; } ;


 int AVUNERROR (int) ;
 int avio_flush (TYPE_7__*) ;
 int avio_write (TYPE_7__*,int ,scalar_t__) ;
 int block_ChainRelease (TYPE_3__*) ;
 int block_Release (TYPE_3__*) ;
 int msg_Err (TYPE_1__*,char*,size_t,int ) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static ssize_t Write(sout_access_out_t *p_access, block_t *p_buffer)
{
    sout_access_out_sys_t *p_sys = (sout_access_out_sys_t*)p_access->p_sys;
    size_t i_write = 0;
    int val;

    while (p_buffer != ((void*)0)) {
        block_t *p_next = p_buffer->p_next;

        avio_write(p_sys->context, p_buffer->p_buffer, p_buffer->i_buffer);
        avio_flush(p_sys->context);
        if ((val = p_sys->context->error) != 0) {
            p_sys->context->error = 0;
            goto error;
        }
        i_write += p_buffer->i_buffer;

        block_Release(p_buffer);

        p_buffer = p_next;
    }

    return i_write;

error:
    msg_Err(p_access, "Wrote only %zu bytes: %s", i_write,
            vlc_strerror_c(AVUNERROR(val)));
    block_ChainRelease( p_buffer );
    return i_write;
}
