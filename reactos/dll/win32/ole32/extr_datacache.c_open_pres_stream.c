
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;


 int* CONTENTS ;
 int E_FAIL ;
 int IStorage_OpenStream (int *,int const*,int *,int,int ,int **) ;
 int STGM_READ ;
 int STGM_SHARE_EXCLUSIVE ;
 int STREAM_NUMBER_CONTENTS ;
 int STREAM_NUMBER_NOT_SET ;

__attribute__((used)) static HRESULT open_pres_stream( IStorage *stg, int stream_number, IStream **stm )
{
    WCHAR pres[] = {2,'O','l','e','P','r','e','s',
                    '0' + (stream_number / 100) % 10,
                    '0' + (stream_number / 10) % 10,
                    '0' + stream_number % 10, 0};
    const WCHAR *name = pres;

    if (stream_number == STREAM_NUMBER_NOT_SET) return E_FAIL;
    if (stream_number == STREAM_NUMBER_CONTENTS) name = CONTENTS;

    return IStorage_OpenStream( stg, name, ((void*)0), STGM_READ | STGM_SHARE_EXCLUSIVE, 0, stm );
}
