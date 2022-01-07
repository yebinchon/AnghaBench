; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_WMSFT_encode_variant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_WMSFT_encode_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"VariantChangeType failed: %08x\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Argument type not yet handled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @WMSFT_encode_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WMSFT_encode_variant(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @V_VT(i32* %17)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 134
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 135, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 129, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @V_VT(i32* %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @VariantChangeType(i32* %6, i32* %38, i32 0, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %3, align 4
  br label %278

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %74 [
    i32 135, label %50
    i32 129, label %50
    i32 137, label %55
    i32 131, label %55
    i32 140, label %55
    i32 136, label %60
    i32 130, label %60
  ]

50:                                               ; preds = %48, %48
  store i32 67108863, i32* %8, align 4
  %51 = call i32 @V_UI4(i32* %6)
  %52 = icmp sgt i32 %51, 67108863
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %74

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %48, %48, %48, %54
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32 255, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %55
  br label %60

60:                                               ; preds = %48, %48, %59
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 65535, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @V_VT(i32* %65)
  %67 = mul nsw i32 4, %66
  %68 = add nsw i32 128, %67
  %69 = shl i32 %68, 24
  %70 = call i32 @V_UI4(i32* %6)
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %70, %71
  %73 = or i32 %69, %72
  store i32 %73, i32* %3, align 4
  br label %278

74:                                               ; preds = %48, %53
  %75 = load i32, i32* %7, align 4
  switch i32 %75, label %276 [
    i32 135, label %76
    i32 132, label %76
    i32 129, label %76
    i32 134, label %76
    i32 128, label %76
    i32 138, label %76
    i32 133, label %76
    i32 139, label %145
  ]

76:                                               ; preds = %74, %74, %74, %74, %74, %74, %74
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %118

82:                                               ; preds = %76
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, 8
  %93 = trunc i64 %92 to i32
  %94 = call i8* @heap_realloc(i32* %86, i32 %93)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32* %95, i32** %98, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  %110 = bitcast i8* %109 to i32*
  store i32* %110, i32** %11, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  br label %131

118:                                              ; preds = %76
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 8, i32* %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @heap_alloc(i32 %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32* %127, i32** %130, align 8
  store i32* %127, i32** %11, align 8
  br label %131

131:                                              ; preds = %118, %82
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @V_VT(i32* %132)
  %134 = call i32 @V_UI4(i32* %6)
  %135 = shl i32 %134, 16
  %136 = add nsw i32 %133, %135
  %137 = load i32*, i32** %11, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %136, i32* %138, align 4
  %139 = call i32 @V_UI4(i32* %6)
  %140 = ashr i32 %139, 16
  %141 = add nsw i32 %140, 1465319424
  %142 = load i32*, i32** %11, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %3, align 4
  br label %278

145:                                              ; preds = %74
  %146 = call i32* @V_BSTR(i32* %6)
  %147 = call i32 @SysStringLen(i32* %146)
  %148 = add nsw i32 6, %147
  %149 = add nsw i32 %148, 3
  %150 = and i32 %149, -4
  store i32 %150, i32* %13, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %189

156:                                              ; preds = %145
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i8* @heap_realloc(i32* %160, i32 %166)
  %168 = bitcast i8* %167 to i32*
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i32* %168, i32** %171, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = bitcast i32* %175 to i8*
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %176, i64 %181
  store i8* %182, i8** %14, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, %183
  store i32 %188, i32* %186, align 8
  br label %204

189:                                              ; preds = %145
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @heap_alloc(i32 %197)
  %199 = bitcast i8* %198 to i32*
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i32* %199, i32** %202, align 8
  %203 = bitcast i32* %199 to i8*
  store i8* %203, i8** %14, align 8
  br label %204

204:                                              ; preds = %189, %156
  %205 = load i32*, i32** %4, align 8
  %206 = call i32 @V_VT(i32* %205)
  %207 = trunc i32 %206 to i16
  %208 = load i8*, i8** %14, align 8
  %209 = bitcast i8* %208 to i16*
  store i16 %207, i16* %209, align 2
  %210 = call i32* @V_BSTR(i32* %6)
  %211 = call i32 @SysStringLen(i32* %210)
  %212 = load i8*, i8** %14, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 2
  %214 = bitcast i8* %213 to i32*
  store i32 %211, i32* %214, align 4
  store i32 0, i32* %12, align 4
  br label %215

215:                                              ; preds = %246, %204
  %216 = load i32, i32* %12, align 4
  %217 = call i32* @V_BSTR(i32* %6)
  %218 = call i32 @SysStringLen(i32* %217)
  %219 = icmp slt i32 %216, %218
  br i1 %219, label %220, label %249

220:                                              ; preds = %215
  %221 = call i32* @V_BSTR(i32* %6)
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp sle i32 %225, 127
  br i1 %226, label %227, label %239

227:                                              ; preds = %220
  %228 = call i32* @V_BSTR(i32* %6)
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = trunc i32 %232 to i8
  %234 = load i8*, i8** %14, align 8
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, 6
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  store i8 %233, i8* %238, align 1
  br label %245

239:                                              ; preds = %220
  %240 = load i8*, i8** %14, align 8
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 6
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  store i8 63, i8* %244, align 1
  br label %245

245:                                              ; preds = %239, %227
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %12, align 4
  br label %215

249:                                              ; preds = %215
  %250 = load i32, i32* @CP_ACP, align 4
  %251 = call i32* @V_BSTR(i32* %6)
  %252 = call i32* @V_BSTR(i32* %6)
  %253 = call i32 @SysStringLen(i32* %252)
  %254 = load i8*, i8** %14, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 6
  %256 = load i32, i32* %13, align 4
  %257 = sub nsw i32 %256, 6
  %258 = call i32 @WideCharToMultiByte(i32 %250, i32 0, i32* %251, i32 %253, i8* %255, i32 %257, i32* null, i32* null)
  %259 = call i32* @V_BSTR(i32* %6)
  %260 = call i32 @SysStringLen(i32* %259)
  %261 = add nsw i32 6, %260
  store i32 %261, i32* %12, align 4
  br label %262

262:                                              ; preds = %271, %249
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %13, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %262
  %267 = load i8*, i8** %14, align 8
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  store i8 87, i8* %270, align 1
  br label %271

271:                                              ; preds = %266
  %272 = load i32, i32* %12, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %12, align 4
  br label %262

274:                                              ; preds = %262
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %3, align 4
  br label %278

276:                                              ; preds = %74
  %277 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %278

278:                                              ; preds = %276, %274, %131, %64, %44
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @VariantChangeType(i32*, i32*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @V_UI4(i32*) #1

declare dso_local i8* @heap_realloc(i32*, i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @SysStringLen(i32*) #1

declare dso_local i32* @V_BSTR(i32*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
