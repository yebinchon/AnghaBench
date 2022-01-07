
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int NTSTATUS ;


 int COMPRESSION_ENGINE_MAXIMUM ;
 int COMPRESSION_FORMAT_DEFAULT ;
 int COMPRESSION_FORMAT_LZNT1 ;
 int COMPRESSION_FORMAT_NONE ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUPPORTED_COMPRESSION ;
 int ok (int,char*,int) ;
 int pRtlGetCompressionWorkSpaceSize (int,int*,int*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlGetCompressionWorkSpaceSize(void)
{
    ULONG compress_workspace, decompress_workspace;
    NTSTATUS status;

    if (!pRtlGetCompressionWorkSpaceSize)
    {
        win_skip("RtlGetCompressionWorkSpaceSize is not available\n");
        return;
    }


    status = pRtlGetCompressionWorkSpaceSize(COMPRESSION_FORMAT_NONE, &compress_workspace,
                                             &decompress_workspace);
    ok(status == STATUS_INVALID_PARAMETER, "got wrong status 0x%08x\n", status);

    status = pRtlGetCompressionWorkSpaceSize(COMPRESSION_FORMAT_DEFAULT, &compress_workspace,
                                             &decompress_workspace);
    ok(status == STATUS_INVALID_PARAMETER, "got wrong status 0x%08x\n", status);

    status = pRtlGetCompressionWorkSpaceSize(0xFF, &compress_workspace, &decompress_workspace);
    ok(status == STATUS_UNSUPPORTED_COMPRESSION, "got wrong status 0x%08x\n", status);


    compress_workspace = decompress_workspace = 0xdeadbeef;
    status = pRtlGetCompressionWorkSpaceSize(COMPRESSION_FORMAT_LZNT1, &compress_workspace,
                                             &decompress_workspace);
    ok(status == STATUS_SUCCESS, "got wrong status 0x%08x\n", status);
    ok(compress_workspace != 0, "got wrong compress_workspace %u\n", compress_workspace);
    ok(decompress_workspace == 0x1000, "got wrong decompress_workspace %u\n", decompress_workspace);

    compress_workspace = decompress_workspace = 0xdeadbeef;
    status = pRtlGetCompressionWorkSpaceSize(COMPRESSION_FORMAT_LZNT1 | COMPRESSION_ENGINE_MAXIMUM,
                                             &compress_workspace, &decompress_workspace);
    ok(status == STATUS_SUCCESS, "got wrong status 0x%08x\n", status);
    ok(compress_workspace != 0, "got wrong compress_workspace %u\n", compress_workspace);
    ok(decompress_workspace == 0x1000, "got wrong decompress_workspace %u\n", decompress_workspace);
}
