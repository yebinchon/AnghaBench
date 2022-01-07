; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib32bpp.c_DIB_32BPP_AlphaBlend.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib32bpp.c_DIB_32BPP_AlphaBlend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [74 x i8] c"DIB_32BPP_AlphaBlend: srcRect: (%d,%d)-(%d,%d), dstRect: (%d,%d)-(%d,%d)\0A\00", align 1
@AC_SRC_OVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"BlendOp != AC_SRC_OVER\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"BlendFlags != 0\0A\00", align 1
@AC_SRC_ALPHA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Unsupported AlphaFormat (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Source bitmap must be 32bpp when AC_SRC_ALPHA is set\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIB_32BPP_AlphaBlend(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2, %struct.TYPE_15__* %3, i32* %4, i32* %5, %struct.TYPE_17__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_18__, align 8
  %22 = alloca %struct.TYPE_16__, align 4
  %23 = alloca %struct.TYPE_16__, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %15, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DPRINT(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = bitcast %struct.TYPE_18__* %21 to i8*
  %54 = bitcast %struct.TYPE_18__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 24, i1 false)
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AC_SRC_OVER, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %7
  %60 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %8, align 4
  br label %347

62:                                               ; preds = %7
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %8, align 4
  br label %347

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @AC_SRC_ALPHA, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %8, align 4
  br label %347

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AC_SRC_ALPHA, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @BitsPerFormat(i32 %90)
  %92 = icmp ne i32 %91, 32
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %8, align 4
  br label %347

96:                                               ; preds = %87, %81
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %99, %107
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %108, %113
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %20, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @BitsPerFormat(i32 %118)
  store i32 %119, i32* %25, align 4
  store i32 0, i32* %16, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %19, align 4
  br label %123

123:                                              ; preds = %302, %96
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %128, %131
  %133 = icmp sle i32 %125, %132
  br i1 %133, label %134, label %345

134:                                              ; preds = %123
  store i32 0, i32* %17, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %212, %134
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %17, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %143, %146
  %148 = icmp sle i32 %140, %147
  br i1 %148, label %149, label %302

149:                                              ; preds = %138
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 @DIB_GetSource(%struct.TYPE_14__* %150, i32 %151, i32 %152, i32* %153)
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i32 %154, i32* %155, align 4
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %158, %160
  %162 = sdiv i32 %161, 255
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %167, %169
  %171 = sdiv i32 %170, 255
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %176, %178
  %180 = sdiv i32 %179, 255
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %25, align 4
  %184 = icmp eq i32 32, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %149
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %188, %190
  %192 = sdiv i32 %191, 255
  br label %196

193:                                              ; preds = %149
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  br label %196

196:                                              ; preds = %193, %185
  %197 = phi i32 [ %192, %185 ], [ %195, %193 ]
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @AC_SRC_ALPHA, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %196
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  br label %212

209:                                              ; preds = %196
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  br label %212

212:                                              ; preds = %209, %205
  %213 = phi i32 [ %208, %205 ], [ %211, %209 ]
  store i32 %213, i32* %24, align 4
  %214 = load i32*, i32** %20, align 8
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  store i32 %215, i32* %216, align 4
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %24, align 4
  %221 = sub nsw i32 255, %220
  %222 = mul nsw i32 %219, %221
  %223 = sdiv i32 %222, 255
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %223, %226
  %228 = call i8* @Clamp8(i32 %227)
  %229 = ptrtoint i8* %228 to i32
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %24, align 4
  %236 = sub nsw i32 255, %235
  %237 = mul nsw i32 %234, %236
  %238 = sdiv i32 %237, 255
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %238, %241
  %243 = call i8* @Clamp8(i32 %242)
  %244 = ptrtoint i8* %243 to i32
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %24, align 4
  %251 = sub nsw i32 255, %250
  %252 = mul nsw i32 %249, %251
  %253 = sdiv i32 %252, 255
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %253, %256
  %258 = call i8* @Clamp8(i32 %257)
  %259 = ptrtoint i8* %258 to i32
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 4
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %24, align 4
  %266 = sub nsw i32 255, %265
  %267 = mul nsw i32 %264, %266
  %268 = sdiv i32 %267, 255
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %268, %271
  %273 = call i8* @Clamp8(i32 %272)
  %274 = ptrtoint i8* %273 to i32
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 3
  store i32 %274, i32* %276, align 4
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %20, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %280, i32** %20, align 8
  store i32 %278, i32* %279, align 4
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %17, align 4
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %287, %290
  %292 = mul nsw i32 %284, %291
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %295, %298
  %300 = sdiv i32 %292, %299
  %301 = add nsw i32 %283, %300
  store i32 %301, i32* %18, align 4
  br label %138

302:                                              ; preds = %138
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %16, align 4
  %310 = add nsw i32 %308, %309
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = mul nsw i32 %310, %313
  %315 = sext i32 %314 to i64
  %316 = add nsw i64 %305, %315
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = shl i32 %319, 2
  %321 = sext i32 %320 to i64
  %322 = add nsw i64 %316, %321
  %323 = inttoptr i64 %322 to i32*
  store i32* %323, i32** %20, align 8
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %16, align 4
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %330, %333
  %335 = mul nsw i32 %327, %334
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = sub nsw i32 %338, %341
  %343 = sdiv i32 %335, %342
  %344 = add nsw i32 %326, %343
  store i32 %344, i32* %19, align 4
  br label %123

345:                                              ; preds = %123
  %346 = load i32, i32* @TRUE, align 4
  store i32 %346, i32* %8, align 4
  br label %347

347:                                              ; preds = %345, %93, %76, %66, %59
  %348 = load i32, i32* %8, align 4
  ret i32 %348
}

declare dso_local i32 @DPRINT(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @BitsPerFormat(i32) #1

declare dso_local i32 @DIB_GetSource(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i8* @Clamp8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
