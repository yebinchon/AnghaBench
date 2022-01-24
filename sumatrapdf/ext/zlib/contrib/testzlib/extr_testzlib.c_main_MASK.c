#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {unsigned char* next_in; unsigned char* next_out; long total_in; long avail_in; int avail_out; long total_out; } ;
typedef  TYPE_1__ z_stream ;
struct TYPE_16__ {int /*<<< orphan*/  QuadPart; } ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  double DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 double FUNC2 (TYPE_2__,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC3 (TYPE_2__,int /*<<< orphan*/ ) ; 
 double FUNC4 () ; 
 scalar_t__ FUNC5 (char*,long*,unsigned char**) ; 
 int /*<<< orphan*/  TRUE ; 
 int Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int /*<<< orphan*/  Z_SYNC_FLUSH ; 
 int FUNC6 (char*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (long) ; 
 scalar_t__ FUNC14 (unsigned char*,unsigned char*,long) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC16 (long,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 scalar_t__ FUNC18 (unsigned char*,long) ; 

int FUNC19(int argc, char *argv[])
{
    int BlockSizeCompress=0x8000;
    int BlockSizeUncompress=0x8000;
    int cprLevel=Z_DEFAULT_COMPRESSION ;
    long lFileSize;
    unsigned char* FilePtr;
    long lBufferSizeCpr;
    long lBufferSizeUncpr;
    long lCompressedSize=0;
    unsigned char* CprPtr;
    unsigned char* UncprPtr;
    long lSizeCpr,lSizeUncpr;
    DWORD dwGetTick,dwMsecQP;
    LARGE_INTEGER li_qp,li_rdtsc,dwResRdtsc;

    if (argc<=1)
    {
        FUNC17("run TestZlib <File> [BlockSizeCompress] [BlockSizeUncompress] [compres. level]\n");
        return 0;
    }

    if (FUNC5(argv[1],&lFileSize,&FilePtr)==0)
    {
        FUNC17("error reading %s\n",argv[1]);
        return 1;
    }
    else FUNC17("file %s read, %u bytes\n",argv[1],lFileSize);

    if (argc>=3)
        BlockSizeCompress=FUNC6(argv[2]);

    if (argc>=4)
        BlockSizeUncompress=FUNC6(argv[3]);

    if (argc>=5)
        cprLevel=(int)FUNC6(argv[4]);

    lBufferSizeCpr = lFileSize + (lFileSize/0x10) + 0x200;
    lBufferSizeUncpr = lBufferSizeCpr;

    CprPtr=(unsigned char*)FUNC13(lBufferSizeCpr + BlockSizeCompress);

    FUNC0(&li_qp,TRUE);
    dwGetTick=FUNC4();
    FUNC1(&li_rdtsc);
    {
        z_stream zcpr;
        int ret=Z_OK;
        long lOrigToDo = lFileSize;
        long lOrigDone = 0;
        int step=0;
        FUNC15(&zcpr,0,sizeof(z_stream));
        FUNC9(&zcpr,cprLevel);

        zcpr.next_in = FilePtr;
        zcpr.next_out = CprPtr;


        do
        {
            long all_read_before = zcpr.total_in;
            zcpr.avail_in = FUNC16(lOrigToDo,BlockSizeCompress);
            zcpr.avail_out = BlockSizeCompress;
            ret=FUNC7(&zcpr,(zcpr.avail_in==lOrigToDo) ? Z_FINISH : Z_SYNC_FLUSH);
            lOrigDone += (zcpr.total_in-all_read_before);
            lOrigToDo -= (zcpr.total_in-all_read_before);
            step++;
        } while (ret==Z_OK);

        lSizeCpr=zcpr.total_out;
        FUNC8(&zcpr);
        dwGetTick=FUNC4()-dwGetTick;
        dwMsecQP=FUNC2(li_qp,TRUE);
        dwResRdtsc=FUNC3(li_rdtsc,TRUE);
        FUNC17("total compress size = %u, in %u step\n",lSizeCpr,step);
        FUNC17("time = %u msec = %f sec\n",dwGetTick,dwGetTick/(double)1000.);
        FUNC17("defcpr time QP = %u msec = %f sec\n",dwMsecQP,dwMsecQP/(double)1000.);
        FUNC17("defcpr result rdtsc = %I64x\n\n",dwResRdtsc.QuadPart);
    }

    CprPtr=(unsigned char*)FUNC18(CprPtr,lSizeCpr);
    UncprPtr=(unsigned char*)FUNC13(lBufferSizeUncpr + BlockSizeUncompress);

    FUNC0(&li_qp,TRUE);
    dwGetTick=FUNC4();
    FUNC1(&li_rdtsc);
    {
        z_stream zcpr;
        int ret=Z_OK;
        long lOrigToDo = lSizeCpr;
        long lOrigDone = 0;
        int step=0;
        FUNC15(&zcpr,0,sizeof(z_stream));
        FUNC12(&zcpr);

        zcpr.next_in = CprPtr;
        zcpr.next_out = UncprPtr;


        do
        {
            long all_read_before = zcpr.total_in;
            zcpr.avail_in = FUNC16(lOrigToDo,BlockSizeUncompress);
            zcpr.avail_out = BlockSizeUncompress;
            ret=FUNC10(&zcpr,Z_SYNC_FLUSH);
            lOrigDone += (zcpr.total_in-all_read_before);
            lOrigToDo -= (zcpr.total_in-all_read_before);
            step++;
        } while (ret==Z_OK);

        lSizeUncpr=zcpr.total_out;
        FUNC11(&zcpr);
        dwGetTick=FUNC4()-dwGetTick;
        dwMsecQP=FUNC2(li_qp,TRUE);
        dwResRdtsc=FUNC3(li_rdtsc,TRUE);
        FUNC17("total uncompress size = %u, in %u step\n",lSizeUncpr,step);
        FUNC17("time = %u msec = %f sec\n",dwGetTick,dwGetTick/(double)1000.);
        FUNC17("uncpr  time QP = %u msec = %f sec\n",dwMsecQP,dwMsecQP/(double)1000.);
        FUNC17("uncpr  result rdtsc = %I64x\n\n",dwResRdtsc.QuadPart);
    }

    if (lSizeUncpr==lFileSize)
    {
        if (FUNC14(FilePtr,UncprPtr,lFileSize)==0)
            FUNC17("compare ok\n");

    }

    return 0;
}