; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib24bpp.c_DIB_24BPP_AlphaBlend.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib24bpp.c_DIB_24BPP_AlphaBlend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [74 x i8] c"DIB_24BPP_AlphaBlend: srcRect: (%d,%d)-(%d,%d), dstRect: (%d,%d)-(%d,%d)\0A\00", align 1
@AC_SRC_OVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"BlendOp != AC_SRC_OVER\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"BlendFlags != 0\0A\00", align 1
@AC_SRC_ALPHA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Unsupported AlphaFormat (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Source bitmap must be 32bpp when AC_SRC_ALPHA is set\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIB_24BPP_AlphaBlend(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2, %struct.TYPE_15__* %3, i32* %4, i32* %5, %struct.TYPE_17__* %6) #0 {
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
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %15, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DPRINT(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = bitcast %struct.TYPE_18__* %21 to i8*
  %53 = bitcast %struct.TYPE_18__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 24, i1 false)
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AC_SRC_OVER, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %7
  %59 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %8, align 4
  br label %320

61:                                               ; preds = %7
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %8, align 4
  br label %320

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AC_SRC_ALPHA, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %8, align 4
  br label %320

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AC_SRC_ALPHA, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @BitsPerFormat(i32 %89)
  %91 = icmp ne i32 %90, 32
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %8, align 4
  br label %320

95:                                               ; preds = %86, %80
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %98, %106
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %107, %112
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %20, align 8
  store i32 0, i32* %16, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %275, %95
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %123, %126
  %128 = icmp sle i32 %120, %127
  br i1 %128, label %129, label %318

129:                                              ; preds = %118
  store i32 0, i32* %17, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %18, align 4
  br label %133

133:                                              ; preds = %194, %129
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %17, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %138, %141
  %143 = icmp sle i32 %135, %142
  br i1 %143, label %144, label %275

144:                                              ; preds = %133
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32*, i32** %14, align 8
  %149 = call i32 @DIB_GetSource(%struct.TYPE_14__* %145, i32 %146, i32 %147, i32* %148)
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %153, %155
  %157 = sdiv i32 %156, 255
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %162, %164
  %166 = sdiv i32 %165, 255
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %171, %173
  %175 = sdiv i32 %174, 255
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @AC_SRC_ALPHA, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %144
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %24, align 4
  br label %194

186:                                              ; preds = %144
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %189, %191
  %193 = sdiv i32 %192, 255
  store i32 %193, i32* %24, align 4
  br label %194

194:                                              ; preds = %186, %183
  %195 = load i32*, i32** %20, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %24, align 4
  %198 = sub nsw i32 255, %197
  %199 = mul nsw i32 %196, %198
  %200 = sdiv i32 %199, 255
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %200, %203
  %205 = call i8* @Clamp8(i32 %204)
  %206 = ptrtoint i8* %205 to i32
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  %209 = load i32*, i32** %20, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %24, align 4
  %213 = sub nsw i32 255, %212
  %214 = mul nsw i32 %211, %213
  %215 = sdiv i32 %214, 255
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %215, %218
  %220 = call i8* @Clamp8(i32 %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load i32*, i32** %20, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %24, align 4
  %228 = sub nsw i32 255, %227
  %229 = mul nsw i32 %226, %228
  %230 = sdiv i32 %229, 255
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %230, %233
  %235 = call i8* @Clamp8(i32 %234)
  %236 = ptrtoint i8* %235 to i32
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 4
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %20, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %20, align 8
  store i32 %241, i32* %242, align 4
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %20, align 8
  %248 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %248, i32** %20, align 8
  store i32 %246, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %20, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %253, i32** %20, align 8
  store i32 %251, i32* %252, align 4
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %17, align 4
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %260, %263
  %265 = mul nsw i32 %257, %264
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %268, %271
  %273 = sdiv i32 %265, %272
  %274 = add nsw i32 %256, %273
  store i32 %274, i32* %18, align 4
  br label %133

275:                                              ; preds = %133
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %16, align 4
  %283 = add nsw i32 %281, %282
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = mul nsw i32 %283, %286
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %278, %288
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = mul nsw i32 %292, 3
  %294 = sext i32 %293 to i64
  %295 = add nsw i64 %289, %294
  %296 = inttoptr i64 %295 to i32*
  store i32* %296, i32** %20, align 8
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %16, align 4
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = sub nsw i32 %303, %306
  %308 = mul nsw i32 %300, %307
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = sub nsw i32 %311, %314
  %316 = sdiv i32 %308, %315
  %317 = add nsw i32 %299, %316
  store i32 %317, i32* %19, align 4
  br label %118

318:                                              ; preds = %118
  %319 = load i32, i32* @TRUE, align 4
  store i32 %319, i32* %8, align 4
  br label %320

320:                                              ; preds = %318, %92, %75, %65, %58
  %321 = load i32, i32* %8, align 4
  ret i32 %321
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
