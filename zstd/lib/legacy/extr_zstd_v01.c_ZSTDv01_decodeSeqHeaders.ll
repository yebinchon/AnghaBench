; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v01.c_ZSTDv01_decodeSeqHeaders.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v01.c_ZSTDv01_decodeSeqHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@LLbits = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@LLFSELog = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@Offbits = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i32 0, align 4
@OffFSELog = common dso_local global i32 0, align 4
@MLbits = common dso_local global i32 0, align 4
@MLFSELog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**, i64*, i32*, i32*, i32*, i8*, i64)* @ZSTDv01_decodeSeqHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv01_decodeSeqHeaders(i32* %0, i32** %1, i64* %2, i32* %3, i32* %4, i32* %5, i8* %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %18, align 8
  %37 = load i32*, i32** %18, align 8
  store i32* %37, i32** %19, align 8
  %38 = load i32*, i32** %18, align 8
  %39 = load i64, i64* %17, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %20, align 8
  %41 = load i64, i64* %17, align 8
  %42 = icmp ult i64 %41, 5
  br i1 %42, label %43, label %46

43:                                               ; preds = %8
  %44 = load i32, i32* @srcSize_wrong, align 4
  %45 = call i64 @ERROR(i32 %44)
  store i64 %45, i64* %9, align 8
  br label %278

46:                                               ; preds = %8
  %47 = load i32*, i32** %19, align 8
  %48 = call i32 @ZSTD_readLE16(i32* %47)
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %19, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32* %51, i32** %19, align 8
  %52 = load i32*, i32** %19, align 8
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 6
  store i32 %54, i32* %21, align 4
  %55 = load i32*, i32** %19, align 8
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 4
  %58 = and i32 %57, 3
  store i32 %58, i32* %22, align 4
  %59 = load i32*, i32** %19, align 8
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 2
  %62 = and i32 %61, 3
  store i32 %62, i32* %23, align 4
  %63 = load i32*, i32** %19, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %46
  %68 = load i32*, i32** %19, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %27, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %27, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %27, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32* %80, i32** %19, align 8
  br label %96

81:                                               ; preds = %46
  %82 = load i32*, i32** %19, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %27, align 8
  %86 = load i32*, i32** %19, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 1
  %90 = shl i32 %89, 8
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %27, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %27, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32* %95, i32** %19, align 8
  br label %96

96:                                               ; preds = %81, %67
  %97 = load i32*, i32** %19, align 8
  %98 = load i32**, i32*** %11, align 8
  store i32* %97, i32** %98, align 8
  %99 = load i64, i64* %27, align 8
  %100 = load i32*, i32** %19, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 %99
  store i32* %101, i32** %19, align 8
  %102 = load i64, i64* %27, align 8
  %103 = load i64*, i64** %12, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 -3
  %107 = icmp ugt i32* %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %96
  %109 = load i32, i32* @srcSize_wrong, align 4
  %110 = call i64 @ERROR(i32 %109)
  store i64 %110, i64* %9, align 8
  br label %278

111:                                              ; preds = %96
  %112 = load i32, i32* @MaxML, align 4
  %113 = add nsw i32 %112, 1
  %114 = zext i32 %113 to i64
  %115 = call i8* @llvm.stacksave()
  store i8* %115, i8** %28, align 8
  %116 = alloca i32, i64 %114, align 16
  store i64 %114, i64* %29, align 8
  %117 = load i32, i32* %21, align 4
  switch i32 %117, label %129 [
    i32 128, label %118
    i32 129, label %124
  ]

118:                                              ; preds = %111
  store i32 0, i32* %24, align 4
  %119 = load i32*, i32** %13, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %19, align 8
  %122 = load i32, i32* %120, align 4
  %123 = call i32 @FSE_buildDTable_rle(i32* %119, i32 %122)
  br label %161

124:                                              ; preds = %111
  %125 = load i32, i32* @LLbits, align 4
  store i32 %125, i32* %24, align 4
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* @LLbits, align 4
  %128 = call i32 @FSE_buildDTable_raw(i32* %126, i32 %127)
  br label %161

129:                                              ; preds = %111
  %130 = load i32, i32* @MaxLL, align 4
  store i32 %130, i32* %31, align 4
  %131 = load i32*, i32** %19, align 8
  %132 = load i32*, i32** %20, align 8
  %133 = load i32*, i32** %19, align 8
  %134 = ptrtoint i32* %132 to i64
  %135 = ptrtoint i32* %133 to i64
  %136 = sub i64 %134, %135
  %137 = sdiv exact i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = call i64 @FSE_readNCount(i32* %116, i32* %31, i32* %24, i32* %131, i32 %138)
  store i64 %139, i64* %30, align 8
  %140 = load i64, i64* %30, align 8
  %141 = call i32 @FSE_isError(i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %129
  %144 = load i32, i32* @GENERIC, align 4
  %145 = call i64 @ERROR(i32 %144)
  store i64 %145, i64* %9, align 8
  store i32 1, i32* %32, align 4
  br label %268

146:                                              ; preds = %129
  %147 = load i32, i32* %24, align 4
  %148 = load i32, i32* @LLFSELog, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* @corruption_detected, align 4
  %152 = call i64 @ERROR(i32 %151)
  store i64 %152, i64* %9, align 8
  store i32 1, i32* %32, align 4
  br label %268

153:                                              ; preds = %146
  %154 = load i64, i64* %30, align 8
  %155 = load i32*, i32** %19, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 %154
  store i32* %156, i32** %19, align 8
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %31, align 4
  %159 = load i32, i32* %24, align 4
  %160 = call i32 @FSE_buildDTable(i32* %157, i32* %116, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %153, %124, %118
  %162 = load i32, i32* %22, align 4
  switch i32 %162, label %182 [
    i32 128, label %163
    i32 129, label %177
  ]

163:                                              ; preds = %161
  store i32 0, i32* %25, align 4
  %164 = load i32*, i32** %19, align 8
  %165 = load i32*, i32** %20, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 -2
  %167 = icmp ugt i32* %164, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* @srcSize_wrong, align 4
  %170 = call i64 @ERROR(i32 %169)
  store i64 %170, i64* %9, align 8
  store i32 1, i32* %32, align 4
  br label %268

171:                                              ; preds = %163
  %172 = load i32*, i32** %15, align 8
  %173 = load i32*, i32** %19, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %19, align 8
  %175 = load i32, i32* %173, align 4
  %176 = call i32 @FSE_buildDTable_rle(i32* %172, i32 %175)
  br label %214

177:                                              ; preds = %161
  %178 = load i32, i32* @Offbits, align 4
  store i32 %178, i32* %25, align 4
  %179 = load i32*, i32** %15, align 8
  %180 = load i32, i32* @Offbits, align 4
  %181 = call i32 @FSE_buildDTable_raw(i32* %179, i32 %180)
  br label %214

182:                                              ; preds = %161
  %183 = load i32, i32* @MaxOff, align 4
  store i32 %183, i32* %33, align 4
  %184 = load i32*, i32** %19, align 8
  %185 = load i32*, i32** %20, align 8
  %186 = load i32*, i32** %19, align 8
  %187 = ptrtoint i32* %185 to i64
  %188 = ptrtoint i32* %186 to i64
  %189 = sub i64 %187, %188
  %190 = sdiv exact i64 %189, 4
  %191 = trunc i64 %190 to i32
  %192 = call i64 @FSE_readNCount(i32* %116, i32* %33, i32* %25, i32* %184, i32 %191)
  store i64 %192, i64* %30, align 8
  %193 = load i64, i64* %30, align 8
  %194 = call i32 @FSE_isError(i64 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %182
  %197 = load i32, i32* @GENERIC, align 4
  %198 = call i64 @ERROR(i32 %197)
  store i64 %198, i64* %9, align 8
  store i32 1, i32* %32, align 4
  br label %268

199:                                              ; preds = %182
  %200 = load i32, i32* %25, align 4
  %201 = load i32, i32* @OffFSELog, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load i32, i32* @corruption_detected, align 4
  %205 = call i64 @ERROR(i32 %204)
  store i64 %205, i64* %9, align 8
  store i32 1, i32* %32, align 4
  br label %268

206:                                              ; preds = %199
  %207 = load i64, i64* %30, align 8
  %208 = load i32*, i32** %19, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 %207
  store i32* %209, i32** %19, align 8
  %210 = load i32*, i32** %15, align 8
  %211 = load i32, i32* %33, align 4
  %212 = load i32, i32* %25, align 4
  %213 = call i32 @FSE_buildDTable(i32* %210, i32* %116, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %206, %177, %171
  %215 = load i32, i32* %23, align 4
  switch i32 %215, label %235 [
    i32 128, label %216
    i32 129, label %230
  ]

216:                                              ; preds = %214
  store i32 0, i32* %26, align 4
  %217 = load i32*, i32** %19, align 8
  %218 = load i32*, i32** %20, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 -2
  %220 = icmp ugt i32* %217, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i32, i32* @srcSize_wrong, align 4
  %223 = call i64 @ERROR(i32 %222)
  store i64 %223, i64* %9, align 8
  store i32 1, i32* %32, align 4
  br label %268

224:                                              ; preds = %216
  %225 = load i32*, i32** %14, align 8
  %226 = load i32*, i32** %19, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %19, align 8
  %228 = load i32, i32* %226, align 4
  %229 = call i32 @FSE_buildDTable_rle(i32* %225, i32 %228)
  br label %267

230:                                              ; preds = %214
  %231 = load i32, i32* @MLbits, align 4
  store i32 %231, i32* %26, align 4
  %232 = load i32*, i32** %14, align 8
  %233 = load i32, i32* @MLbits, align 4
  %234 = call i32 @FSE_buildDTable_raw(i32* %232, i32 %233)
  br label %267

235:                                              ; preds = %214
  %236 = load i32, i32* @MaxML, align 4
  store i32 %236, i32* %34, align 4
  %237 = load i32*, i32** %19, align 8
  %238 = load i32*, i32** %20, align 8
  %239 = load i32*, i32** %19, align 8
  %240 = ptrtoint i32* %238 to i64
  %241 = ptrtoint i32* %239 to i64
  %242 = sub i64 %240, %241
  %243 = sdiv exact i64 %242, 4
  %244 = trunc i64 %243 to i32
  %245 = call i64 @FSE_readNCount(i32* %116, i32* %34, i32* %26, i32* %237, i32 %244)
  store i64 %245, i64* %30, align 8
  %246 = load i64, i64* %30, align 8
  %247 = call i32 @FSE_isError(i64 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %235
  %250 = load i32, i32* @GENERIC, align 4
  %251 = call i64 @ERROR(i32 %250)
  store i64 %251, i64* %9, align 8
  store i32 1, i32* %32, align 4
  br label %268

252:                                              ; preds = %235
  %253 = load i32, i32* %26, align 4
  %254 = load i32, i32* @MLFSELog, align 4
  %255 = icmp sgt i32 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load i32, i32* @corruption_detected, align 4
  %258 = call i64 @ERROR(i32 %257)
  store i64 %258, i64* %9, align 8
  store i32 1, i32* %32, align 4
  br label %268

259:                                              ; preds = %252
  %260 = load i64, i64* %30, align 8
  %261 = load i32*, i32** %19, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 %260
  store i32* %262, i32** %19, align 8
  %263 = load i32*, i32** %14, align 8
  %264 = load i32, i32* %34, align 4
  %265 = load i32, i32* %26, align 4
  %266 = call i32 @FSE_buildDTable(i32* %263, i32* %116, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %259, %230, %224
  store i32 0, i32* %32, align 4
  br label %268

268:                                              ; preds = %267, %256, %249, %221, %203, %196, %168, %150, %143
  %269 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %269)
  %270 = load i32, i32* %32, align 4
  switch i32 %270, label %280 [
    i32 0, label %271
    i32 1, label %278
  ]

271:                                              ; preds = %268
  %272 = load i32*, i32** %19, align 8
  %273 = load i32*, i32** %18, align 8
  %274 = ptrtoint i32* %272 to i64
  %275 = ptrtoint i32* %273 to i64
  %276 = sub i64 %274, %275
  %277 = sdiv exact i64 %276, 4
  store i64 %277, i64* %9, align 8
  br label %278

278:                                              ; preds = %271, %268, %108, %43
  %279 = load i64, i64* %9, align 8
  ret i64 %279

280:                                              ; preds = %268
  unreachable
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTD_readLE16(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @FSE_buildDTable_rle(i32*, i32) #1

declare dso_local i32 @FSE_buildDTable_raw(i32*, i32) #1

declare dso_local i64 @FSE_readNCount(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @FSE_isError(i64) #1

declare dso_local i32 @FSE_buildDTable(i32*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
