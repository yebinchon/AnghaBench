; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_mmoutput.c_MCIAVI_GetInfoVideo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_mmoutput.c_MCIAVI_GetInfoVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ash.fccType='%c%c%c%c'\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ash.fccHandler='%c%c%c%c'\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ash.dwFlags=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ash.wPriority=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ash.wLanguage=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ash.dwInitialFrames=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ash.dwScale=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ash.dwRate=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"ash.dwStart=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ash.dwLength=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"ash.dwSuggestedBufferSize=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ash.dwQuality=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"ash.dwSampleSize=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"ash.rcFrame=(%d,%d,%d,%d)\0A\00", align 1
@ckidSTREAMFORMAT = common dso_local global i32 0, align 4
@MMIO_FINDCHUNK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"Can't find 'strf' chunk\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"Can't alloc input BIH\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"bih.biSize=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"bih.biWidth=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"bih.biHeight=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"bih.biPlanes=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"bih.biBitCount=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"bih.biCompression=%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"bih.biSizeImage=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"bih.biXPelsPerMeter=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"bih.biYPelsPerMeter=%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"bih.biClrUsed=%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"bih.biClrImportant=%d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_16__*)* @MCIAVI_GetInfoVideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCIAVI_GetInfoVideo(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @LOWORD(i32 %12)
  %14 = call i32 @LOBYTE(i32 %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 13
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @LOWORD(i32 %18)
  %20 = call i32 @HIBYTE(i32 %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @HIWORD(i32 %24)
  %26 = call i32 @LOBYTE(i32 %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @HIWORD(i32 %30)
  %32 = call i32 @HIBYTE(i32 %31)
  %33 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %20, i32 %26, i32 %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @LOWORD(i32 %37)
  %39 = call i32 @LOBYTE(i32 %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @LOWORD(i32 %43)
  %45 = call i32 @HIBYTE(i32 %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @HIWORD(i32 %49)
  %51 = call i32 @LOBYTE(i32 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @HIWORD(i32 %55)
  %57 = call i32 @HIBYTE(i32 %56)
  %58 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %45, i32 %51, i32 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %118, i32 %123, i32 %128, i32 %133)
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %139 = call i32 @mmioAscend(i32 %137, %struct.TYPE_16__* %138, i32 0)
  %140 = load i32, i32* @ckidSTREAMFORMAT, align 4
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  store i32 %140, i32* %141, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %146 = load i32, i32* @MMIO_FINDCHUNK, align 4
  %147 = call i64 @mmioDescend(i32 %144, %struct.TYPE_16__* %8, %struct.TYPE_16__* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %3
  %150 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %151 = load i32, i32* @FALSE, align 4
  store i32 %151, i32* %4, align 4
  br label %262

152:                                              ; preds = %3
  %153 = call i32 (...) @GetProcessHeap()
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.TYPE_12__* @HeapAlloc(i32 %153, i32 0, i32 %155)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %158, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = icmp ne %struct.TYPE_12__* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %152
  %164 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %165 = load i32, i32* @FALSE, align 4
  store i32 %165, i32* %4, align 4
  br label %262

166:                                              ; preds = %152
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = ptrtoint %struct.TYPE_12__* %172 to i32
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @mmioRead(i32 %169, i32 %173, i32 %175)
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %181)
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %187)
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %193)
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %199)
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 %205)
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %211)
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %217)
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 %223)
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32 %229)
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 %235)
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 %241)
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @SetRect(i32* %244, i32 0, i32 0, i32 %249, i32 %254)
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* @TRUE, align 4
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %166, %163, %149
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @mmioAscend(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @mmioDescend(i32, %struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local %struct.TYPE_12__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @mmioRead(i32, i32, i32) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
