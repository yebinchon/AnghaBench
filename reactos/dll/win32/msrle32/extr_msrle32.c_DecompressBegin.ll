; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_DecompressBegin.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_DecompressBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i64, i64 }
%struct.TYPE_18__ = type { i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%p)\0A\00", align 1
@ICERR_BADPARAM = common dso_local global i64 0, align 8
@ICERR_OK = common dso_local global i64 0, align 8
@ICERR_BADFORMAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"cannot compress and decompress at same time!\0A\00", align 1
@ICERR_ERROR = common dso_local global i64 0, align 8
@BI_RGB = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@ICERR_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*)* @DecompressBegin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DecompressBegin(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %14, %struct.TYPE_18__* %15, %struct.TYPE_18__* %16)
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = icmp ne %struct.TYPE_19__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = icmp eq %struct.TYPE_18__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %26 = icmp eq %struct.TYPE_18__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %3
  %28 = load i64, i64* @ICERR_BADPARAM, align 8
  store i64 %28, i64* %4, align 8
  br label %274

29:                                               ; preds = %24
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = call i64 @DecompressQuery(%struct.TYPE_19__* %30, %struct.TYPE_18__* %31, %struct.TYPE_18__* %32)
  %34 = load i64, i64* @ICERR_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @ICERR_BADFORMAT, align 8
  store i64 %37, i64* %4, align 8
  br label %274

38:                                               ; preds = %29
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 @FIXME(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* @ICERR_ERROR, align 8
  store i64 %45, i64* %4, align 8
  br label %274

46:                                               ; preds = %38
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = call i32 @DecompressEnd(%struct.TYPE_19__* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BI_RGB, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %269

60:                                               ; preds = %54
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sle i32 %63, 8
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 1, %73
  store i32 %74, i32* %11, align 4
  br label %79

75:                                               ; preds = %65, %60
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = bitcast %struct.TYPE_18__* %80 to i32*
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = bitcast i32* %86 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %87, %struct.TYPE_17__** %8, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = bitcast %struct.TYPE_18__* %88 to i32*
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = bitcast i32* %94 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %9, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %268 [
    i32 4, label %99
    i32 8, label %99
    i32 15, label %141
    i32 16, label %141
    i32 24, label %242
    i32 32, label %242
  ]

99:                                               ; preds = %79, %79
  %100 = load i32, i32* @LPTR, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i8* @LocalAlloc(i32 %100, i32 %101)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  store i32* %103, i32** %105, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i64, i64* @ICERR_MEMORY, align 8
  store i64 %111, i64* %4, align 8
  br label %274

112:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %137, %112
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %113
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i64 %122
  %124 = bitcast { i64, i32 }* %12 to i8*
  %125 = bitcast %struct.TYPE_17__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 12, i1 false)
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %127 = load i64, i64* %126, align 4
  %128 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @MSRLE32_GetNearestPaletteIndex(i32 %118, %struct.TYPE_17__* %119, i64 %127, i32 %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  br label %137

137:                                              ; preds = %117
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %113

140:                                              ; preds = %113
  br label %268

141:                                              ; preds = %79, %79
  %142 = load i32, i32* @LPTR, align 4
  %143 = load i32, i32* %11, align 4
  %144 = mul nsw i32 %143, 2
  %145 = call i8* @LocalAlloc(i32 %142, i32 %144)
  %146 = bitcast i8* %145 to i32*
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  store i32* %146, i32** %148, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %141
  %154 = load i64, i64* @ICERR_MEMORY, align 8
  store i64 %154, i64* %4, align 8
  br label %274

155:                                              ; preds = %141
  store i32 0, i32* %10, align 4
  br label %156

156:                                              ; preds = %238, %155
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %241

160:                                              ; preds = %156
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 15
  br i1 %164, label %165, label %191

165:                                              ; preds = %160
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 3
  %173 = shl i32 %172, 10
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = ashr i32 %179, 3
  %181 = shl i32 %180, 5
  %182 = or i32 %173, %181
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = ashr i32 %188, 3
  %190 = or i32 %182, %189
  store i32 %190, i32* %13, align 4
  br label %217

191:                                              ; preds = %160
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = ashr i32 %197, 3
  %199 = shl i32 %198, 11
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = ashr i32 %205, 3
  %207 = shl i32 %206, 5
  %208 = or i32 %199, %207
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = ashr i32 %214, 3
  %216 = or i32 %208, %215
  store i32 %216, i32* %13, align 4
  br label %217

217:                                              ; preds = %191, %165
  %218 = load i32, i32* %13, align 4
  %219 = ashr i32 %218, 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = mul nsw i32 %223, 2
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %222, i64 %226
  store i32 %219, i32* %227, align 4
  %228 = load i32, i32* %13, align 4
  %229 = and i32 %228, 255
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = mul nsw i32 %233, 2
  %235 = add nsw i32 %234, 0
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %232, i64 %236
  store i32 %229, i32* %237, align 4
  br label %238

238:                                              ; preds = %217
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  br label %156

241:                                              ; preds = %156
  br label %268

242:                                              ; preds = %79, %79
  %243 = load i32, i32* @LPTR, align 4
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = mul i64 %245, 12
  %247 = trunc i64 %246 to i32
  %248 = call i8* @LocalAlloc(i32 %243, i32 %247)
  %249 = bitcast i8* %248 to i32*
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  store i32* %249, i32** %251, align 8
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = icmp eq i32* %254, null
  br i1 %255, label %256, label %258

256:                                              ; preds = %242
  %257 = load i64, i64* @ICERR_MEMORY, align 8
  store i64 %257, i64* %4, align 8
  br label %274

258:                                              ; preds = %242
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = mul i64 %264, 12
  %266 = trunc i64 %265 to i32
  %267 = call i32 @memcpy(i32* %261, %struct.TYPE_17__* %262, i32 %266)
  br label %268

268:                                              ; preds = %79, %258, %241, %140
  br label %269

269:                                              ; preds = %268, %54
  %270 = load i64, i64* @TRUE, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 1
  store i64 %270, i64* %272, align 8
  %273 = load i64, i64* @ICERR_OK, align 8
  store i64 %273, i64* %4, align 8
  br label %274

274:                                              ; preds = %269, %256, %153, %110, %43, %36, %27
  %275 = load i64, i64* %4, align 8
  ret i64 %275
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @DecompressQuery(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @DecompressEnd(%struct.TYPE_19__*) #1

declare dso_local i8* @LocalAlloc(i32, i32) #1

declare dso_local i32 @MSRLE32_GetNearestPaletteIndex(i32, %struct.TYPE_17__*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
