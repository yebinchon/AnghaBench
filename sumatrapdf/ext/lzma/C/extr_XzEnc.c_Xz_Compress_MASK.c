#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_25__ ;
typedef  struct TYPE_29__   TYPE_23__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_19__ ;
typedef  struct TYPE_26__   TYPE_15__ ;

/* Type definitions */
typedef  scalar_t__ UInt64 ;
struct TYPE_30__ {int /*<<< orphan*/  Read; } ;
struct TYPE_27__ {TYPE_25__ p; TYPE_25__* realStream; } ;
struct TYPE_29__ {TYPE_25__ p; TYPE_25__* inStream; } ;
struct TYPE_37__ {TYPE_19__ filter; TYPE_23__ sb; int /*<<< orphan*/  lzma2; } ;
struct TYPE_36__ {int /*<<< orphan*/  processed; TYPE_25__ p; int /*<<< orphan*/ * realStream; } ;
struct TYPE_26__ {int /*<<< orphan*/  Write; } ;
struct TYPE_35__ {scalar_t__ processed; TYPE_15__ p; int /*<<< orphan*/ * realStream; } ;
struct TYPE_34__ {int /*<<< orphan*/  unpackSize; scalar_t__ packSize; TYPE_4__* filters; } ;
struct TYPE_33__ {scalar_t__ id; int propsSize; void** props; } ;
struct TYPE_32__ {scalar_t__ id; int delta; int /*<<< orphan*/  ip; scalar_t__ ipDefined; } ;
struct TYPE_31__ {TYPE_3__* filterProps; int /*<<< orphan*/  lzma2Props; scalar_t__ checkId; } ;
struct TYPE_28__ {void* flags; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISeqOutStream ;
typedef  int /*<<< orphan*/  ISeqInStream ;
typedef  int /*<<< orphan*/  ICompressProgress ;
typedef  TYPE_1__ CXzStream ;
typedef  TYPE_2__ CXzProps ;
typedef  TYPE_3__ CXzFilterProps ;
typedef  TYPE_4__ CXzFilter ;
typedef  TYPE_5__ CXzBlock ;
typedef  TYPE_6__ CSeqSizeOutStream ;
typedef  TYPE_7__ CSeqCheckInStream ;
typedef  TYPE_8__ CLzma2WithFilters ;
typedef  void* Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_15__*,TYPE_25__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyWrite ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_23__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,void**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SeqCheckInStream_Read ; 
 int /*<<< orphan*/  FUNC7 (TYPE_19__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_15__*,void**,scalar_t__) ; 
 scalar_t__ XZ_ID_Delta ; 
 scalar_t__ XZ_ID_LZMA2 ; 
 scalar_t__ XZ_ID_Subblock ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,TYPE_15__*) ; 
 scalar_t__ FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_Alloc ; 

__attribute__((used)) static SRes FUNC18(CXzStream *xz, CLzma2WithFilters *lzmaf,
    ISeqOutStream *outStream, ISeqInStream *inStream,
    const CXzProps *props, ICompressProgress *progress)
{
  xz->flags = (Byte)props->checkId;

  FUNC3(FUNC1(lzmaf->lzma2, props->lzma2Props));
  FUNC3(FUNC17(xz->flags, outStream));

  {
    CSeqCheckInStream checkInStream;
    CSeqSizeOutStream seqSizeOutStream;
    CXzBlock block;
    int filterIndex = 0;
    CXzFilter *filter = NULL;
    const CXzFilterProps *fp = props->filterProps;
    
    FUNC10(&block);
    FUNC11(&block, 1 + (fp ? 1 : 0));
    
    if (fp)
    {
      filter = &block.filters[filterIndex++];
      filter->id = fp->id;
      filter->propsSize = 0;
      if (fp->id == XZ_ID_Delta)
      {
        filter->props[0] = (Byte)(fp->delta - 1);
        filter->propsSize = 1;
      }
      else if (fp->ipDefined)
      {
        FUNC8(filter->props, fp->ip);
        filter->propsSize = 4;
      }
    }

    {
      CXzFilter *f = &block.filters[filterIndex++];
      f->id = XZ_ID_LZMA2;
      f->propsSize = 1;
      f->props[0] = FUNC2(lzmaf->lzma2);
    }

    seqSizeOutStream.p.Write = MyWrite;
    seqSizeOutStream.realStream = outStream;
    seqSizeOutStream.processed = 0;
    
    FUNC3(FUNC12(&block, &seqSizeOutStream.p));
    
    checkInStream.p.Read = SeqCheckInStream_Read;
    checkInStream.realStream = inStream;
    FUNC6(&checkInStream, FUNC14(xz->flags));
    
    if (fp)
    {
      #ifdef USE_SUBBLOCK
      if (fp->id == XZ_ID_Subblock)
      {
        lzmaf->sb.inStream = &checkInStream.p;
        RINOK(SbEncInStream_Init(&lzmaf->sb));
      }
      else
      #endif
      {
        lzmaf->filter.realStream = &checkInStream.p;
        FUNC3(FUNC7(&lzmaf->filter, filter));
      }
    }

    {
      UInt64 packPos = seqSizeOutStream.processed;
      SRes res = FUNC0(lzmaf->lzma2, &seqSizeOutStream.p,
        fp ?
        #ifdef USE_SUBBLOCK
        (fp->id == XZ_ID_Subblock) ? &lzmaf->sb.p:
        #endif
        &lzmaf->filter.p:
        &checkInStream.p,
        progress);
      FUNC3(res);
      block.unpackSize = checkInStream.processed;
      block.packSize = seqSizeOutStream.processed - packPos;
    }

    {
      unsigned padSize = 0;
      Byte buf[128];
      while((((unsigned)block.packSize + padSize) & 3) != 0)
        buf[padSize++] = 0;
      FUNC5(&checkInStream, buf + padSize);
      FUNC3(FUNC9(&seqSizeOutStream.p, buf, padSize + FUNC13(xz->flags)));
      FUNC3(FUNC15(xz, block.unpackSize, seqSizeOutStream.processed - padSize, &g_Alloc));
    }
  }
  return FUNC16(xz, outStream);
}