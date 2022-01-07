; ModuleID = '/home/carl/AnghaBench/zfs/module/unicode/extr_uconv.c_uconv_u16tou8.c'
source_filename = "/home/carl/AnghaBench/zfs/module/unicode/extr_uconv.c_uconv_u16tou8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EILSEQ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@UCONV_IGNORE_NULL = common dso_local global i32 0, align 4
@UCONV_IN_ACCEPT_BOM = common dso_local global i32 0, align 4
@UCONV_IN_NAT_ENDIAN = common dso_local global i32 0, align 4
@UCONV_U16_HI_MIN = common dso_local global i32 0, align 4
@UCONV_U16_HI_MAX = common dso_local global i32 0, align 4
@UCONV_U16_LO_MIN = common dso_local global i32 0, align 4
@UCONV_U16_LO_MAX = common dso_local global i32 0, align 4
@UCONV_U16_BIT_SHIFT = common dso_local global i32 0, align 4
@UCONV_U16_BIT_MASK = common dso_local global i32 0, align 4
@UCONV_U16_START = common dso_local global i32 0, align 4
@UCONV_U8_ONE_BYTE = common dso_local global i32 0, align 4
@UCONV_U8_TWO_BYTES = common dso_local global i32 0, align 4
@UCONV_U8_THREE_BYTES = common dso_local global i32 0, align 4
@UCONV_U8_FOUR_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uconv_u16tou8(i64* %0, i64* %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i64*, i64** %7, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i64*, i64** %8, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @EILSEQ, align 4
  store i32 %25, i32* %6, align 4
  br label %297

26:                                               ; preds = %21
  %27 = load i64*, i64** %9, align 8
  %28 = icmp eq i64* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64*, i64** %10, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @E2BIG, align 4
  store i32 %33, i32* %6, align 4
  br label %297

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @check_endian(i32 %35, i32* %12, i32* %13)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @EBADF, align 4
  store i32 %39, i32* %6, align 4
  br label %297

40:                                               ; preds = %34
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @UCONV_IGNORE_NULL, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @UCONV_IN_ACCEPT_BOM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load i64*, i64** %7, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @check_bom16(i64* %51, i64 %53, i32* %12)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %14, align 8
  br label %59

59:                                               ; preds = %56, %50, %40
  %60 = load i32, i32* @UCONV_IN_NAT_ENDIAN, align 4
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %284, %59
  %64 = load i64, i64* %14, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %287

68:                                               ; preds = %63
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %14, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %287

78:                                               ; preds = %74, %68
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i64*, i64** %7, align 8
  %83 = load i64, i64* %14, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  br label %92

86:                                               ; preds = %78
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @BSWAP_16(i64 %90)
  br label %92

92:                                               ; preds = %86, %81
  %93 = phi i64 [ %85, %81 ], [ %91, %86 ]
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @UCONV_U16_HI_MIN, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @UCONV_U16_HI_MAX, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* @EILSEQ, align 4
  store i32 %106, i32* %6, align 4
  br label %297

107:                                              ; preds = %102
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %16, align 4
  br label %284

109:                                              ; preds = %98, %92
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* @UCONV_U16_LO_MIN, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %136

113:                                              ; preds = %109
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @UCONV_U16_LO_MAX, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %113
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @EILSEQ, align 4
  store i32 %121, i32* %6, align 4
  br label %297

122:                                              ; preds = %117
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @UCONV_U16_HI_MIN, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load i32, i32* @UCONV_U16_BIT_SHIFT, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* @UCONV_U16_LO_MIN, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load i32, i32* @UCONV_U16_BIT_MASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @UCONV_U16_START, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %142

136:                                              ; preds = %113, %109
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @EILSEQ, align 4
  store i32 %140, i32* %6, align 4
  br label %297

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141, %122
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* @UCONV_U8_ONE_BYTE, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %143
  %148 = load i64, i64* %15, align 8
  %149 = load i64*, i64** %10, align 8
  %150 = load i64, i64* %149, align 8
  %151 = icmp uge i64 %148, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* @E2BIG, align 4
  store i32 %153, i32* %6, align 4
  br label %297

154:                                              ; preds = %147
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64*, i64** %9, align 8
  %158 = load i64, i64* %15, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %15, align 8
  %160 = getelementptr inbounds i64, i64* %157, i64 %158
  store i64 %156, i64* %160, align 8
  br label %283

161:                                              ; preds = %143
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* @UCONV_U8_TWO_BYTES, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %191

165:                                              ; preds = %161
  %166 = load i64, i64* %15, align 8
  %167 = add i64 %166, 1
  %168 = load i64*, i64** %10, align 8
  %169 = load i64, i64* %168, align 8
  %170 = icmp uge i64 %167, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32, i32* @E2BIG, align 4
  store i32 %172, i32* %6, align 4
  br label %297

173:                                              ; preds = %165
  %174 = load i32, i32* %17, align 4
  %175 = and i32 %174, 1984
  %176 = ashr i32 %175, 6
  %177 = or i32 192, %176
  %178 = sext i32 %177 to i64
  %179 = load i64*, i64** %9, align 8
  %180 = load i64, i64* %15, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %15, align 8
  %182 = getelementptr inbounds i64, i64* %179, i64 %180
  store i64 %178, i64* %182, align 8
  %183 = load i32, i32* %17, align 4
  %184 = and i32 %183, 63
  %185 = or i32 128, %184
  %186 = sext i32 %185 to i64
  %187 = load i64*, i64** %9, align 8
  %188 = load i64, i64* %15, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %15, align 8
  %190 = getelementptr inbounds i64, i64* %187, i64 %188
  store i64 %186, i64* %190, align 8
  br label %282

191:                                              ; preds = %161
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* @UCONV_U8_THREE_BYTES, align 4
  %194 = icmp sle i32 %192, %193
  br i1 %194, label %195, label %230

195:                                              ; preds = %191
  %196 = load i64, i64* %15, align 8
  %197 = add i64 %196, 2
  %198 = load i64*, i64** %10, align 8
  %199 = load i64, i64* %198, align 8
  %200 = icmp uge i64 %197, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* @E2BIG, align 4
  store i32 %202, i32* %6, align 4
  br label %297

203:                                              ; preds = %195
  %204 = load i32, i32* %17, align 4
  %205 = and i32 %204, 61440
  %206 = ashr i32 %205, 12
  %207 = or i32 224, %206
  %208 = sext i32 %207 to i64
  %209 = load i64*, i64** %9, align 8
  %210 = load i64, i64* %15, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %15, align 8
  %212 = getelementptr inbounds i64, i64* %209, i64 %210
  store i64 %208, i64* %212, align 8
  %213 = load i32, i32* %17, align 4
  %214 = and i32 %213, 4032
  %215 = ashr i32 %214, 6
  %216 = or i32 128, %215
  %217 = sext i32 %216 to i64
  %218 = load i64*, i64** %9, align 8
  %219 = load i64, i64* %15, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %15, align 8
  %221 = getelementptr inbounds i64, i64* %218, i64 %219
  store i64 %217, i64* %221, align 8
  %222 = load i32, i32* %17, align 4
  %223 = and i32 %222, 63
  %224 = or i32 128, %223
  %225 = sext i32 %224 to i64
  %226 = load i64*, i64** %9, align 8
  %227 = load i64, i64* %15, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %15, align 8
  %229 = getelementptr inbounds i64, i64* %226, i64 %227
  store i64 %225, i64* %229, align 8
  br label %281

230:                                              ; preds = %191
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* @UCONV_U8_FOUR_BYTES, align 4
  %233 = icmp sle i32 %231, %232
  br i1 %233, label %234, label %278

234:                                              ; preds = %230
  %235 = load i64, i64* %15, align 8
  %236 = add i64 %235, 3
  %237 = load i64*, i64** %10, align 8
  %238 = load i64, i64* %237, align 8
  %239 = icmp uge i64 %236, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = load i32, i32* @E2BIG, align 4
  store i32 %241, i32* %6, align 4
  br label %297

242:                                              ; preds = %234
  %243 = load i32, i32* %17, align 4
  %244 = and i32 %243, 1835008
  %245 = ashr i32 %244, 18
  %246 = or i32 240, %245
  %247 = sext i32 %246 to i64
  %248 = load i64*, i64** %9, align 8
  %249 = load i64, i64* %15, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %15, align 8
  %251 = getelementptr inbounds i64, i64* %248, i64 %249
  store i64 %247, i64* %251, align 8
  %252 = load i32, i32* %17, align 4
  %253 = and i32 %252, 258048
  %254 = ashr i32 %253, 12
  %255 = or i32 128, %254
  %256 = sext i32 %255 to i64
  %257 = load i64*, i64** %9, align 8
  %258 = load i64, i64* %15, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %15, align 8
  %260 = getelementptr inbounds i64, i64* %257, i64 %258
  store i64 %256, i64* %260, align 8
  %261 = load i32, i32* %17, align 4
  %262 = and i32 %261, 4032
  %263 = ashr i32 %262, 6
  %264 = or i32 128, %263
  %265 = sext i32 %264 to i64
  %266 = load i64*, i64** %9, align 8
  %267 = load i64, i64* %15, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %15, align 8
  %269 = getelementptr inbounds i64, i64* %266, i64 %267
  store i64 %265, i64* %269, align 8
  %270 = load i32, i32* %17, align 4
  %271 = and i32 %270, 63
  %272 = or i32 128, %271
  %273 = sext i32 %272 to i64
  %274 = load i64*, i64** %9, align 8
  %275 = load i64, i64* %15, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* %15, align 8
  %277 = getelementptr inbounds i64, i64* %274, i64 %275
  store i64 %273, i64* %277, align 8
  br label %280

278:                                              ; preds = %230
  %279 = load i32, i32* @EILSEQ, align 4
  store i32 %279, i32* %6, align 4
  br label %297

280:                                              ; preds = %242
  br label %281

281:                                              ; preds = %280, %203
  br label %282

282:                                              ; preds = %281, %173
  br label %283

283:                                              ; preds = %282, %154
  br label %284

284:                                              ; preds = %283, %107
  %285 = load i64, i64* %14, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %14, align 8
  br label %63

287:                                              ; preds = %77, %63
  %288 = load i32, i32* %16, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  %291 = load i32, i32* @EINVAL, align 4
  store i32 %291, i32* %6, align 4
  br label %297

292:                                              ; preds = %287
  %293 = load i64, i64* %14, align 8
  %294 = load i64*, i64** %8, align 8
  store i64 %293, i64* %294, align 8
  %295 = load i64, i64* %15, align 8
  %296 = load i64*, i64** %10, align 8
  store i64 %295, i64* %296, align 8
  store i32 0, i32* %6, align 4
  br label %297

297:                                              ; preds = %292, %290, %278, %240, %201, %171, %152, %139, %120, %105, %38, %32, %24
  %298 = load i32, i32* %6, align 4
  ret i32 %298
}

declare dso_local i64 @check_endian(i32, i32*, i32*) #1

declare dso_local i64 @check_bom16(i64*, i64, i32*) #1

declare dso_local i64 @BSWAP_16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
