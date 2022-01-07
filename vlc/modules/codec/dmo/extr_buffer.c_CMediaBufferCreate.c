
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int block_t ;
struct TYPE_6__ {int i_ref; int i_max_size; int b_own; TYPE_1__* vt; int * p_block; } ;
struct TYPE_5__ {int GetBufferAndLength; int GetMaxLength; int SetLength; int Release; int AddRef; int QueryInterface; } ;
typedef TYPE_1__ IMediaBuffer_vt ;
typedef TYPE_2__ CMediaBuffer ;


 int AddRef ;
 int GetBufferAndLength ;
 int GetMaxLength ;
 int QueryInterface ;
 int Release ;
 int SetLength ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;

CMediaBuffer *CMediaBufferCreate( block_t *p_block, int i_max_size,
                                  bool b_own )
{
    CMediaBuffer *p_mb = (CMediaBuffer *)malloc( sizeof(CMediaBuffer) );
    if( !p_mb ) return ((void*)0);

    p_mb->vt = (IMediaBuffer_vt *)malloc( sizeof(IMediaBuffer_vt) );
    if( !p_mb->vt )
    {
        free( p_mb );
        return ((void*)0);
    }

    p_mb->i_ref = 1;
    p_mb->p_block = p_block;
    p_mb->i_max_size = i_max_size;
    p_mb->b_own = b_own;

    p_mb->vt->QueryInterface = QueryInterface;
    p_mb->vt->AddRef = AddRef;
    p_mb->vt->Release = Release;

    p_mb->vt->SetLength = SetLength;
    p_mb->vt->GetMaxLength = GetMaxLength;
    p_mb->vt->GetBufferAndLength = GetBufferAndLength;

    return p_mb;
}
