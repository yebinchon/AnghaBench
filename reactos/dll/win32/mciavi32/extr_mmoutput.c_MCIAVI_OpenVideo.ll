; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_mmoutput.c_MCIAVI_OpenVideo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_mmoutput.c_MCIAVI_OpenVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i8*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"fcc %4.4s\0A\00", align 1
@ICTYPE_VIDEO = common dso_local global i32 0, align 4
@ICMODE_DECOMPRESS = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i64 0, align 8
@BI_RLE8 = common dso_local global i64 0, align 8
@BI_RLE4 = common dso_local global i64 0, align 8
@BI_BITFIELDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't locate codec for the file\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Can't alloc output BIH\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Can't open decompressor\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bih.biSize=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"bih.biWidth=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"bih.biHeight=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"bih.biPlanes=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"bih.biBitCount=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"bih.biCompression=%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"bih.biSizeImage=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"bih.biXPelsPerMeter=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"bih.biYPelsPerMeter=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"bih.biClrUsed=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"bih.biClrImportant=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Can't alloc output buffer\0A\00", align 1
@ICM_DECOMPRESS_BEGIN = common dso_local global i32 0, align 4
@ICERR_OK = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [27 x i8] c"Can't begin decompression\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MCIAVI_OpenVideo(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = ptrtoint i64* %6 to i32
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @mmioFOURCC(i8 signext 67, i8 signext 82, i8 signext 65, i8 signext 77)
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i64 @mmioFOURCC(i8 signext 77, i8 signext 83, i8 signext 86, i8 signext 67)
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* @ICTYPE_VIDEO, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = load i32, i32* @ICMODE_DECOMPRESS, align 4
  %27 = call i32 @ICLocate(i32 %21, i64 %22, %struct.TYPE_10__* %25, i32* null, i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %20
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @mmioFOURCC(i8 signext 68, i8 signext 73, i8 signext 66, i8 signext 32)
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %63, label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @mmioFOURCC(i8 signext 82, i8 signext 76, i8 signext 69, i8 signext 32)
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @BI_RGB, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @BI_RLE8, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @BI_RLE4, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @BI_BITFIELDS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55, %51, %47, %43, %34
  br label %199

64:                                               ; preds = %59
  %65 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %2, align 4
  br label %225

67:                                               ; preds = %20
  store i32 1028, i32* %5, align 4
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load i32, i32* %5, align 4
  %70 = call i8* @HeapAlloc(i32 %68, i32 0, i32 %69)
  %71 = bitcast i8* %70 to %struct.TYPE_11__*
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = icmp ne %struct.TYPE_11__* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %2, align 4
  br label %225

81:                                               ; preds = %67
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = call i32 @ICGetDisplayFormat(i32 %84, %struct.TYPE_10__* %87, %struct.TYPE_11__* %90, i32 0, i32 0, i32 0)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %81
  %94 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %2, align 4
  br label %225

96:                                               ; preds = %81
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %131)
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %143)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %149)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %155)
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 10
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %161)
  %163 = call i32 (...) @GetProcessHeap()
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @HeapAlloc(i32 %163, i32 0, i32 %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 5
  store i8* %169, i8** %171, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 5
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %96
  %177 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %178 = load i32, i32* @FALSE, align 4
  store i32 %178, i32* %2, align 4
  br label %225

179:                                              ; preds = %96
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @ICM_DECOMPRESS_BEGIN, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = ptrtoint %struct.TYPE_10__* %186 to i32
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = ptrtoint %struct.TYPE_11__* %190 to i32
  %192 = call i64 @ICSendMessage(i32 %182, i32 %183, i32 %187, i32 %191)
  %193 = load i64, i64* @ICERR_OK, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %179
  %196 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %197 = load i32, i32* @FALSE, align 4
  store i32 %197, i32* %2, align 4
  br label %225

198:                                              ; preds = %179
  br label %199

199:                                              ; preds = %198, %63
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @GetDC(i64 %207)
  br label %210

209:                                              ; preds = %199
  br label %210

210:                                              ; preds = %209, %204
  %211 = phi i32 [ %208, %204 ], [ 0, %209 ]
  store i32 %211, i32* %4, align 4
  %212 = load i32, i32* %4, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %210
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @MCIAVI_PaintFrame(%struct.TYPE_9__* %215, i32 %216)
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = call i32 @ReleaseDC(i64 %220, i32 %221)
  br label %223

223:                                              ; preds = %214, %210
  %224 = load i32, i32* @TRUE, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %195, %176, %93, %78, %64
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @mmioFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ICLocate(i32, i64, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ICGetDisplayFormat(i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i64 @ICSendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GetDC(i64) #1

declare dso_local i32 @MCIAVI_PaintFrame(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ReleaseDC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
