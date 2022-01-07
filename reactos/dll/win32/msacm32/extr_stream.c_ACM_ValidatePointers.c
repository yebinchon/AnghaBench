
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pbPreparedSrc; scalar_t__ pbSrc; scalar_t__ cbPreparedSrcLength; scalar_t__ cbSrcLength; scalar_t__ pbPreparedDst; scalar_t__ pbDst; scalar_t__ cbPreparedDstLength; scalar_t__ cbDstLength; } ;
typedef TYPE_1__* PACMDRVSTREAMHEADER ;
typedef int BOOL ;



__attribute__((used)) static BOOL ACM_ValidatePointers(PACMDRVSTREAMHEADER padsh)
{

    return !(padsh->pbPreparedSrc != padsh->pbSrc ||
             padsh->cbPreparedSrcLength < padsh->cbSrcLength ||
             padsh->pbPreparedDst != padsh->pbDst ||
             padsh->cbPreparedDstLength < padsh->cbDstLength);
}
