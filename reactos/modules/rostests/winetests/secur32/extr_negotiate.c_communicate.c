
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sspi_data {int max_token; TYPE_4__* out_buf; TYPE_2__* in_buf; } ;
struct TYPE_8__ {TYPE_3__* pBuffers; } ;
struct TYPE_7__ {int pvBuffer; int cbBuffer; } ;
struct TYPE_6__ {TYPE_1__* pBuffers; } ;
struct TYPE_5__ {int cbBuffer; int pvBuffer; } ;


 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int trace (char*) ;

__attribute__((used)) static void communicate( struct sspi_data *from, struct sspi_data *to )
{
    trace( "running communicate\n" );
    memset( to->in_buf->pBuffers[0].pvBuffer, 0, to->max_token );
    memcpy( to->in_buf->pBuffers[0].pvBuffer, from->out_buf->pBuffers[0].pvBuffer,
            from->out_buf->pBuffers[0].cbBuffer );
    to->in_buf->pBuffers[0].cbBuffer = from->out_buf->pBuffers[0].cbBuffer;
    memset( from->out_buf->pBuffers[0].pvBuffer, 0, from->max_token );
}
