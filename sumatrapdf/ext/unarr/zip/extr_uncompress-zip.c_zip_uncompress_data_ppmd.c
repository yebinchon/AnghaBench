
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_12__ {int Base; } ;
struct TYPE_10__ {TYPE_4__ ctx; int alloc; } ;
struct TYPE_11__ {TYPE_2__ ppmd8; } ;
struct TYPE_9__ {int bytes_left; int* data; size_t offset; } ;
struct ar_archive_zip_uncomp {TYPE_3__ state; TYPE_1__ input; } ;


 scalar_t__ ERR_UNCOMP ;
 int Ppmd8_Alloc (TYPE_4__*,int,int *) ;
 int Ppmd8_DecodeSymbol (TYPE_4__*) ;
 int Ppmd8_Init (TYPE_4__*,int,int) ;
 int Ppmd8_RangeDec_Init (TYPE_4__*) ;
 int Ppmd8_RangeDec_IsFinishedOK (TYPE_4__*) ;
 int warn (char*) ;

__attribute__((used)) static uint32_t zip_uncompress_data_ppmd(struct ar_archive_zip_uncomp *uncomp, void *buffer, uint32_t buffer_size, bool is_last_chunk)
{
    uint32_t bytes_done = 0;

    if (!uncomp->state.ppmd8.ctx.Base) {
        uint8_t order, size, method;
        if (uncomp->input.bytes_left < 2) {
            warn("Insufficient data in compressed stream");
            return ERR_UNCOMP;
        }
        order = (uncomp->input.data[uncomp->input.offset] & 0x0F) + 1;
        size = ((uncomp->input.data[uncomp->input.offset] >> 4) | ((uncomp->input.data[uncomp->input.offset + 1] << 4) & 0xFF));
        method = uncomp->input.data[uncomp->input.offset + 1] >> 4;
        uncomp->input.bytes_left -= 2;
        uncomp->input.offset += 2;
        if (order < 2 || method > 2) {
            warn("Invalid PPMd data stream");
            return ERR_UNCOMP;
        }

        if (order == 2) {
            warn("PPMd freeze method isn't supported");
            return ERR_UNCOMP;
        }

        if (!Ppmd8_Alloc(&uncomp->state.ppmd8.ctx, (size + 1) << 20, &uncomp->state.ppmd8.alloc))
            return ERR_UNCOMP;
        if (!Ppmd8_RangeDec_Init(&uncomp->state.ppmd8.ctx))
            return ERR_UNCOMP;
        Ppmd8_Init(&uncomp->state.ppmd8.ctx, order, method);
    }

    while (bytes_done < buffer_size) {
        int symbol = Ppmd8_DecodeSymbol(&uncomp->state.ppmd8.ctx);
        if (symbol < 0) {
            warn("Invalid PPMd data stream");
            return ERR_UNCOMP;
        }
        ((uint8_t *)buffer)[bytes_done++] = (uint8_t)symbol;
    }

    if (is_last_chunk) {
        int symbol = Ppmd8_DecodeSymbol(&uncomp->state.ppmd8.ctx);
        if (symbol != -1 || !Ppmd8_RangeDec_IsFinishedOK(&uncomp->state.ppmd8.ctx)) {
            warn("Invalid PPMd data stream");
            return ERR_UNCOMP;
        }
    }

    return bytes_done;
}
