; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_VP8GetHeaders.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_VP8GetHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@VP8_STATUS_INVALID_PARAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"null VP8Io passed to VP8GetHeaders()\00", align 1
@VP8_STATUS_NOT_ENOUGH_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Truncated header.\00", align 1
@VP8_STATUS_BITSTREAM_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Incorrect keyframe parameters.\00", align 1
@VP8_STATUS_UNSUPPORTED_FEATURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Frame not displayable.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cannot parse picture header\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Bad code word\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"bad partition length\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"global-header\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"cannot parse segment header\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"cannot parse filter header\00", align 1
@VP8_STATUS_OK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"cannot parse partitions\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Not a key frame.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VP8GetHeaders(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = icmp eq %struct.TYPE_16__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %324

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = call i32 @SetOk(%struct.TYPE_16__* %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = icmp eq %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = load i64, i64* @VP8_STATUS_INVALID_PARAM, align 8
  %24 = call i32 @VP8SetError(%struct.TYPE_16__* %22, i64 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  br label %324

25:                                               ; preds = %16
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %6, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = load i64, i64* @VP8_STATUS_NOT_ENOUGH_DATA, align 8
  %37 = call i32 @VP8SetError(%struct.TYPE_16__* %35, i64 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %3, align 4
  br label %324

38:                                               ; preds = %25
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %41, %45
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 16
  %51 = or i32 %46, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 7
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %12, align 4
  %62 = ashr i32 %61, 1
  %63 = and i32 %62, 7
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %12, align 4
  %67 = ashr i32 %66, 4
  %68 = and i32 %67, 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 5
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 3
  br i1 %78, label %79, label %83

79:                                               ; preds = %38
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  %82 = call i32 @VP8SetError(%struct.TYPE_16__* %80, i64 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 %82, i32* %3, align 4
  br label %324

83:                                               ; preds = %38
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = load i64, i64* @VP8_STATUS_UNSUPPORTED_FEATURE, align 8
  %91 = call i32 @VP8SetError(%struct.TYPE_16__* %89, i64 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 %91, i32* %3, align 4
  br label %324

92:                                               ; preds = %83
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32* %94, i32** %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = sub i64 %95, 3
  store i64 %96, i64* %7, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 6
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %9, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %226

103:                                              ; preds = %92
  %104 = load i64, i64* %7, align 8
  %105 = icmp ult i64 %104, 7
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = load i64, i64* @VP8_STATUS_NOT_ENOUGH_DATA, align 8
  %109 = call i32 @VP8SetError(%struct.TYPE_16__* %107, i64 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 %109, i32* %3, align 4
  br label %324

110:                                              ; preds = %103
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @VP8CheckSignature(i32* %111, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  %118 = call i32 @VP8SetError(%struct.TYPE_16__* %116, i64 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %118, i32* %3, align 4
  br label %324

119:                                              ; preds = %110
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %123, %126
  %128 = and i32 %127, 16383
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 6
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 8
  %141 = load i32*, i32** %6, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 5
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %140, %143
  %145 = and i32 %144, 16383
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 6
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 6
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 7
  store i32* %155, i32** %6, align 8
  %156 = load i64, i64* %7, align 8
  %157 = sub i64 %156, 7
  store i64 %157, i64* %7, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 15
  %162 = ashr i32 %161, 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 15
  %169 = ashr i32 %168, 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 13
  store i64 0, i64* %183, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 12
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 11
  store i64 0, i64* %187, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 4
  store i32 %190, i32* %192, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 10
  store i64 0, i64* %199, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 7
  store i32 %207, i32* %209, align 4
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 8
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 9
  store i32 %217, i32* %219, align 4
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 3
  %222 = call i32 @VP8ResetProba(i32* %221)
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 4
  %225 = call i32 @ResetSegmentHeader(i32* %224)
  br label %226

226:                                              ; preds = %119, %92
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %7, align 8
  %232 = icmp ugt i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %226
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %235 = load i64, i64* @VP8_STATUS_NOT_ENOUGH_DATA, align 8
  %236 = call i32 @VP8SetError(%struct.TYPE_16__* %234, i64 %235, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 %236, i32* %3, align 4
  br label %324

237:                                              ; preds = %226
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 5
  store i32* %239, i32** %10, align 8
  %240 = load i32*, i32** %10, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = call i32 @VP8InitBitReader(i32* %240, i32* %241, i64 %245)
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32* %252, i32** %6, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %7, align 8
  %258 = sub i64 %257, %256
  store i64 %258, i64* %7, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %237
  %264 = load i32*, i32** %10, align 8
  %265 = call i8* @VP8Get(i32* %264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 5
  store i8* %265, i8** %267, align 8
  %268 = load i32*, i32** %10, align 8
  %269 = call i8* @VP8Get(i32* %268, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 4
  store i8* %269, i8** %271, align 8
  br label %272

272:                                              ; preds = %263, %237
  %273 = load i32*, i32** %10, align 8
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 4
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 3
  %278 = call i32 @ParseSegmentHeader(i32* %273, i32* %275, i32* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %272
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %282 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  %283 = call i32 @VP8SetError(%struct.TYPE_16__* %281, i64 %282, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 %283, i32* %3, align 4
  br label %324

284:                                              ; preds = %272
  %285 = load i32*, i32** %10, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %287 = call i32 @ParseFilterHeader(i32* %285, %struct.TYPE_16__* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %293, label %289

289:                                              ; preds = %284
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %291 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  %292 = call i32 @VP8SetError(%struct.TYPE_16__* %290, i64 %291, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i32 %292, i32* %3, align 4
  br label %324

293:                                              ; preds = %284
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %295 = load i32*, i32** %6, align 8
  %296 = load i64, i64* %7, align 8
  %297 = call i64 @ParsePartitions(%struct.TYPE_16__* %294, i32* %295, i64 %296)
  store i64 %297, i64* %11, align 8
  %298 = load i64, i64* %11, align 8
  %299 = load i64, i64* @VP8_STATUS_OK, align 8
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %293
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %303 = load i64, i64* %11, align 8
  %304 = call i32 @VP8SetError(%struct.TYPE_16__* %302, i64 %303, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i32 %304, i32* %3, align 4
  br label %324

305:                                              ; preds = %293
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %307 = call i32 @VP8ParseQuant(%struct.TYPE_16__* %306)
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %305
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %314 = load i64, i64* @VP8_STATUS_UNSUPPORTED_FEATURE, align 8
  %315 = call i32 @VP8SetError(%struct.TYPE_16__* %313, i64 %314, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i32 %315, i32* %3, align 4
  br label %324

316:                                              ; preds = %305
  %317 = load i32*, i32** %10, align 8
  %318 = call i8* @VP8Get(i32* %317, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %319 = load i32*, i32** %10, align 8
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %321 = call i32 @VP8ParseProba(i32* %319, %struct.TYPE_16__* %320)
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 2
  store i32 1, i32* %323, align 8
  store i32 1, i32* %3, align 4
  br label %324

324:                                              ; preds = %316, %312, %301, %289, %280, %233, %115, %106, %88, %79, %34, %21, %15
  %325 = load i32, i32* %3, align 4
  ret i32 %325
}

declare dso_local i32 @SetOk(%struct.TYPE_16__*) #1

declare dso_local i32 @VP8SetError(%struct.TYPE_16__*, i64, i8*) #1

declare dso_local i32 @VP8CheckSignature(i32*, i64) #1

declare dso_local i32 @VP8ResetProba(i32*) #1

declare dso_local i32 @ResetSegmentHeader(i32*) #1

declare dso_local i32 @VP8InitBitReader(i32*, i32*, i64) #1

declare dso_local i8* @VP8Get(i32*, i8*) #1

declare dso_local i32 @ParseSegmentHeader(i32*, i32*, i32*) #1

declare dso_local i32 @ParseFilterHeader(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @ParsePartitions(%struct.TYPE_16__*, i32*, i64) #1

declare dso_local i32 @VP8ParseQuant(%struct.TYPE_16__*) #1

declare dso_local i32 @VP8ParseProba(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
