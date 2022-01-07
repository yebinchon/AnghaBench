; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_block.c_pci_vtblk_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_block.c_pci_vtblk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { i32, i32 }
%struct.blockif_ctxt = type { i32 }
%struct.pci_vtblk_softc = type { %struct.TYPE_13__, %struct.blockif_ctxt*, %struct.TYPE_12__, i32, %struct.TYPE_14__, i32, %struct.pci_vtblk_ioreq* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, i64, %struct.TYPE_10__, i32, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i8*, i8* }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.pci_vtblk_ioreq = type { i64, %struct.pci_vtblk_softc*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.pci_vtblk_ioreq*, i32 }

@CC_SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"virtio-block: backing device required\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not open backing file\00", align 1
@VTBLK_RINGSZ = common dso_local global i32 0, align 4
@pci_vtblk_done = common dso_local global i32 0, align 4
@vtblk_vi_consts = common dso_local global i32 0, align 4
@VTBLK_BLK_ID_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"BHYVE-%02X%02X-%02X%02X-%02X%02X\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@BLOCKIF_IOV_MAX = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@VIRTIO_DEV_BLOCK = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@VIRTIO_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_STORAGE = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@VIRTIO_TYPE_BLOCK = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devinst*, i8*)* @pci_vtblk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vtblk_init(%struct.pci_devinst* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinst*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca %struct.blockif_ctxt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_vtblk_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pci_vtblk_ioreq*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i32, i32* @CC_SHA256_DIGEST_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %239

26:                                               ; preds = %2
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %28 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %29 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %32 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %27, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %37 = call %struct.blockif_ctxt* @blockif_open(i8* %35, i8* %36)
  store %struct.blockif_ctxt* %37, %struct.blockif_ctxt** %7, align 8
  %38 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %7, align 8
  %39 = icmp eq %struct.blockif_ctxt* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %239

42:                                               ; preds = %26
  %43 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %7, align 8
  %44 = call i32 @blockif_size(%struct.blockif_ctxt* %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %7, align 8
  %46 = call i32 @blockif_sectsz(%struct.blockif_ctxt* %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %7, align 8
  %48 = call i32 @blockif_psectsz(%struct.blockif_ctxt* %47, i32* %14, i32* %15)
  %49 = call %struct.pci_vtblk_softc* @calloc(i32 1, i32 136)
  store %struct.pci_vtblk_softc* %49, %struct.pci_vtblk_softc** %10, align 8
  %50 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %7, align 8
  %51 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %52 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %51, i32 0, i32 1
  store %struct.blockif_ctxt* %50, %struct.blockif_ctxt** %52, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %79, %42
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @VTBLK_RINGSZ, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %59 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %58, i32 0, i32 6
  %60 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %60, i64 %62
  store %struct.pci_vtblk_ioreq* %63, %struct.pci_vtblk_ioreq** %17, align 8
  %64 = load i32, i32* @pci_vtblk_done, align 4
  %65 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %17, align 8
  %66 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %17, align 8
  %69 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %17, align 8
  %70 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store %struct.pci_vtblk_ioreq* %68, %struct.pci_vtblk_ioreq** %71, align 8
  %72 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %73 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %17, align 8
  %74 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %73, i32 0, i32 1
  store %struct.pci_vtblk_softc* %72, %struct.pci_vtblk_softc** %74, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %17, align 8
  %78 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %57
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %53

82:                                               ; preds = %53
  %83 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %84 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %83, i32 0, i32 5
  %85 = call i32 @pthread_mutex_init(i32* %84, i32* null)
  %86 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %87 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %86, i32 0, i32 0
  %88 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %89 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %90 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %91 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %90, i32 0, i32 4
  %92 = call i32 @vi_softc_linkup(%struct.TYPE_13__* %87, i32* @vtblk_vi_consts, %struct.pci_vtblk_softc* %88, %struct.pci_devinst* %89, %struct.TYPE_14__* %91)
  %93 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %94 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %93, i32 0, i32 5
  %95 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %96 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32* %94, i32** %97, align 8
  %98 = load i32, i32* @VTBLK_RINGSZ, align 4
  %99 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %100 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i64 @strlen(i8* %103)
  %105 = trunc i64 %104 to i32
  %106 = call i32 @CC_SHA256(i8* %102, i32 %105, i32* %21)
  %107 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %108 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = load i32, i32* @VTBLK_BLK_ID_BYTES, align 4
  %113 = getelementptr inbounds i32, i32* %21, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = getelementptr inbounds i32, i32* %21, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds i32, i32* %21, i64 2
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds i32, i32* %21, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds i32, i32* %21, i64 4
  %122 = load i32, i32* %121, align 16
  %123 = getelementptr inbounds i32, i32* %21, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %111, i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %116, i32 %118, i32 %120, i32 %122, i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @DEV_BSIZE, align 4
  %128 = sdiv i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %131 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 6
  store i64 %129, i64* %132, align 8
  %133 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %134 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 5
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %137 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %138 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 4
  store i32 %136, i32* %139, align 8
  %140 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %141 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  store i64 0, i64* %143, align 8
  %144 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %145 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  %148 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %149 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %155 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  store i64 %153, i64* %156, align 8
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %82
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %13, align 4
  %163 = sdiv i32 %161, %162
  %164 = call i32 @ffsll(i32 %163)
  %165 = sub nsw i32 %164, 1
  br label %167

166:                                              ; preds = %82
  br label %167

167:                                              ; preds = %166, %160
  %168 = phi i32 [ %165, %160 ], [ 0, %166 ]
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  %171 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %172 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 3
  store i8* %170, i8** %174, align 8
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %167
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %15, align 4
  %180 = sub nsw i32 %178, %179
  %181 = load i32, i32* %13, align 4
  %182 = sdiv i32 %180, %181
  br label %184

183:                                              ; preds = %167
  br label %184

184:                                              ; preds = %183, %177
  %185 = phi i32 [ %182, %177 ], [ 0, %183 ]
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %189 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  store i8* %187, i8** %191, align 8
  %192 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %193 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  store i64 0, i64* %195, align 8
  %196 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %197 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  store i64 0, i64* %199, align 8
  %200 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %201 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  store i64 0, i64* %202, align 8
  %203 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %204 = load i32, i32* @PCIR_DEVICE, align 4
  %205 = load i32, i32* @VIRTIO_DEV_BLOCK, align 4
  %206 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %203, i32 %204, i32 %205)
  %207 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %208 = load i32, i32* @PCIR_VENDOR, align 4
  %209 = load i32, i32* @VIRTIO_VENDOR, align 4
  %210 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %207, i32 %208, i32 %209)
  %211 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %212 = load i32, i32* @PCIR_CLASS, align 4
  %213 = load i32, i32* @PCIC_STORAGE, align 4
  %214 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %211, i32 %212, i32 %213)
  %215 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %216 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %217 = load i32, i32* @VIRTIO_TYPE_BLOCK, align 4
  %218 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %215, i32 %216, i32 %217)
  %219 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %220 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %221 = load i32, i32* @VIRTIO_VENDOR, align 4
  %222 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %219, i32 %220, i32 %221)
  %223 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %224 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %223, i32 0, i32 0
  %225 = call i32 (...) @fbsdrun_virtio_msix()
  %226 = call i64 @vi_intr_init(%struct.TYPE_13__* %224, i32 1, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %184
  %229 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %230 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %229, i32 0, i32 1
  %231 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %230, align 8
  %232 = call i32 @blockif_close(%struct.blockif_ctxt* %231)
  %233 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %234 = call i32 @free(%struct.pci_vtblk_softc* %233)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %239

235:                                              ; preds = %184
  %236 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %10, align 8
  %237 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %236, i32 0, i32 0
  %238 = call i32 @vi_set_io_bar(%struct.TYPE_13__* %237, i32 0)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %239

239:                                              ; preds = %235, %228, %40, %24
  %240 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #2

declare dso_local %struct.blockif_ctxt* @blockif_open(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @blockif_size(%struct.blockif_ctxt*) #2

declare dso_local i32 @blockif_sectsz(%struct.blockif_ctxt*) #2

declare dso_local i32 @blockif_psectsz(%struct.blockif_ctxt*, i32*, i32*) #2

declare dso_local %struct.pci_vtblk_softc* @calloc(i32, i32) #2

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #2

declare dso_local i32 @vi_softc_linkup(%struct.TYPE_13__*, i32*, %struct.pci_vtblk_softc*, %struct.pci_devinst*, %struct.TYPE_14__*) #2

declare dso_local i32 @CC_SHA256(i8*, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @ffsll(i32) #2

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #2

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #2

declare dso_local i64 @vi_intr_init(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @fbsdrun_virtio_msix(...) #2

declare dso_local i32 @blockif_close(%struct.blockif_ctxt*) #2

declare dso_local i32 @free(%struct.pci_vtblk_softc*) #2

declare dso_local i32 @vi_set_io_bar(%struct.TYPE_13__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
