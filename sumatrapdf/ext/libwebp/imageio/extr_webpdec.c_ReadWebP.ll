; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_webpdec.c_ReadWebP.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_webpdec.c_ReadWebP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32*, i32, i32, i32, i32, i64, i32*, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32* }

@VP8_STATUS_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Library version mismatch!\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"input data\00", align 1
@WEBP_YUV420A = common dso_local global i32 0, align 4
@WEBP_YUV420 = common dso_local global i32 0, align 4
@VP8_STATUS_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@MODE_BGRA = common dso_local global i32 0, align 4
@MODE_YUVA = common dso_local global i32 0, align 4
@MODE_YUV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@VP8_STATUS_BITSTREAM_ERROR = common dso_local global i64 0, align 8
@MODE_ARGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadWebP(i32* %0, i64 %1, %struct.TYPE_18__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load i64, i64* @VP8_STATUS_OK, align 8
  store i64 %22, i64* %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %16, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %32 = icmp eq %struct.TYPE_18__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27, %5
  store i32 0, i32* %6, align 4
  br label %377

34:                                               ; preds = %30
  %35 = call i32 @WebPInitDecoderConfig(%struct.TYPE_19__* %14)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %377

40:                                               ; preds = %34
  %41 = load i32*, i32** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %44 = call i64 @WebPGetFeatures(i32* %41, i64 %42, %struct.TYPE_21__* %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @VP8_STATUS_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @PrintWebPError(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  store i32 0, i32* %6, align 4
  br label %377

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %17, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %60
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 4
  store i32 %81, i32* %18, align 4
  br label %102

82:                                               ; preds = %60
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 5, i32 3
  %90 = mul nsw i32 %85, %89
  %91 = sdiv i32 %90, 2
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* @WEBP_YUV420A, align 4
  br label %98

96:                                               ; preds = %82
  %97 = load i32, i32* @WEBP_YUV420, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 12
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %77
  %103 = load i32, i32* %18, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ImgIoUtilCheckSizeArgumentsOverflow(i32 %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %102
  %110 = load i64, i64* @VP8_STATUS_OUT_OF_MEMORY, align 8
  store i64 %110, i64* %13, align 8
  br label %343

111:                                              ; preds = %102
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %113 = call i32 @WebPPictureAlloc(%struct.TYPE_18__* %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = load i64, i64* @VP8_STATUS_OUT_OF_MEMORY, align 8
  store i64 %117, i64* %13, align 8
  br label %343

118:                                              ; preds = %111
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %157

123:                                              ; preds = %118
  %124 = load i32, i32* @MODE_BGRA, align 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  store i32* %129, i32** %133, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  store i32 %152, i32* %156, align 4
  br label %284

157:                                              ; preds = %118
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* @MODE_YUVA, align 4
  br label %164

162:                                              ; preds = %157
  %163 = load i32, i32* @MODE_YUV, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 11
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 11
  store i32 %170, i32* %174, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 10
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 10
  store i32 %177, i32* %181, align 4
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 9
  store i32 %184, i32* %188, align 8
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %164
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 8
  %194 = load i32*, i32** %193, align 8
  br label %196

195:                                              ; preds = %164
  br label %196

196:                                              ; preds = %195, %191
  %197 = phi i32* [ %194, %191 ], [ null, %195 ]
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 8
  store i32* %197, i32** %201, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  store i32 %204, i32* %208, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  store i32 %211, i32* %215, align 4
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 2
  store i32 %218, i32* %222, align 8
  %223 = load i32, i32* %17, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %196
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  br label %230

229:                                              ; preds = %196
  br label %230

230:                                              ; preds = %229, %225
  %231 = phi i32 [ %228, %225 ], [ 0, %229 ]
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 3
  store i32 %231, i32* %235, align 4
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 %238, %241
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 4
  store i32 %242, i32* %246, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  %251 = sdiv i32 %250, 2
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = mul nsw i32 %251, %254
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 5
  store i32 %255, i32* %259, align 4
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 1
  %264 = sdiv i32 %263, 2
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 8
  %268 = mul nsw i32 %264, %267
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 6
  store i32 %268, i32* %272, align 8
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 %275, %278
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 7
  store i32 %279, i32* %283, align 4
  br label %284

284:                                              ; preds = %230, %123
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  store i32 1, i32* %286, align 8
  %287 = load i32*, i32** %7, align 8
  %288 = load i64, i64* %8, align 8
  %289 = call i64 @DecodeWebP(i32* %287, i64 %288, %struct.TYPE_19__* %14)
  store i64 %289, i64* %13, align 8
  %290 = load i64, i64* %13, align 8
  %291 = load i64, i64* @VP8_STATUS_OK, align 8
  %292 = icmp eq i64 %290, %291
  %293 = zext i1 %292 to i32
  store i32 %293, i32* %12, align 4
  %294 = load i32, i32* %12, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %342

296:                                              ; preds = %284
  %297 = load i32, i32* %10, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %342, label %299

299:                                              ; preds = %296
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %342

304:                                              ; preds = %299
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  store i32* %307, i32** %21, align 8
  store i32 0, i32* %20, align 4
  br label %308

308:                                              ; preds = %338, %304
  %309 = load i32, i32* %20, align 4
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = icmp slt i32 %309, %312
  br i1 %313, label %314, label %341

314:                                              ; preds = %308
  store i32 0, i32* %19, align 4
  br label %315

315:                                              ; preds = %328, %314
  %316 = load i32, i32* %19, align 4
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp slt i32 %316, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %315
  %322 = load i32*, i32** %21, align 8
  %323 = load i32, i32* %19, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, -16777216
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %321
  %329 = load i32, i32* %19, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %19, align 4
  br label %315

331:                                              ; preds = %315
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = load i32*, i32** %21, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  store i32* %337, i32** %21, align 8
  br label %338

338:                                              ; preds = %331
  %339 = load i32, i32* %20, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %20, align 4
  br label %308

341:                                              ; preds = %308
  br label %342

342:                                              ; preds = %341, %299, %296, %284
  br label %343

343:                                              ; preds = %342, %116, %109
  %344 = load i64, i64* %13, align 8
  %345 = load i64, i64* @VP8_STATUS_OK, align 8
  %346 = icmp ne i64 %344, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  %348 = load i64, i64* %13, align 8
  %349 = call i32 @PrintWebPError(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %348)
  store i32 0, i32* %12, align 4
  br label %350

350:                                              ; preds = %347, %343
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %352 = call i32 @WebPFreeDecBuffer(%struct.TYPE_20__* %351)
  %353 = load i32, i32* %12, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %369

355:                                              ; preds = %350
  %356 = load i32*, i32** %11, align 8
  %357 = icmp ne i32* %356, null
  br i1 %357, label %358, label %369

358:                                              ; preds = %355
  %359 = load i32*, i32** %7, align 8
  %360 = load i64, i64* %8, align 8
  %361 = load i32*, i32** %11, align 8
  %362 = call i32 @ExtractMetadata(i32* %359, i64 %360, i32* %361)
  store i32 %362, i32* %12, align 4
  %363 = load i32, i32* %12, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %368, label %365

365:                                              ; preds = %358
  %366 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  %367 = call i32 @PrintWebPError(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %366)
  br label %368

368:                                              ; preds = %365, %358
  br label %369

369:                                              ; preds = %368, %355, %350
  %370 = load i32, i32* %12, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %369
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %374 = call i32 @WebPPictureFree(%struct.TYPE_18__* %373)
  br label %375

375:                                              ; preds = %372, %369
  %376 = load i32, i32* %12, align 4
  store i32 %376, i32* %6, align 4
  br label %377

377:                                              ; preds = %375, %48, %37, %33
  %378 = load i32, i32* %6, align 4
  ret i32 %378
}

declare dso_local i32 @WebPInitDecoderConfig(%struct.TYPE_19__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @WebPGetFeatures(i32*, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @PrintWebPError(i8*, i64) #1

declare dso_local i32 @ImgIoUtilCheckSizeArgumentsOverflow(i32, i32) #1

declare dso_local i32 @WebPPictureAlloc(%struct.TYPE_18__*) #1

declare dso_local i64 @DecodeWebP(i32*, i64, %struct.TYPE_19__*) #1

declare dso_local i32 @WebPFreeDecBuffer(%struct.TYPE_20__*) #1

declare dso_local i32 @ExtractMetadata(i32*, i64, i32*) #1

declare dso_local i32 @WebPPictureFree(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
