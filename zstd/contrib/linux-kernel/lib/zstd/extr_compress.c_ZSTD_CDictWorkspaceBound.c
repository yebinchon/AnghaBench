
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_compressionParameters ;
typedef int ZSTD_CDict ;


 size_t ZSTD_ALIGN (int) ;
 size_t ZSTD_CCtxWorkspaceBound (int ) ;

size_t ZSTD_CDictWorkspaceBound(ZSTD_compressionParameters cParams) { return ZSTD_CCtxWorkspaceBound(cParams) + ZSTD_ALIGN(sizeof(ZSTD_CDict)); }
