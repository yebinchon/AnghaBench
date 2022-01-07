; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_parse-rar.c_rar_conv_unicode_to_utf8.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_parse-rar.c_rar_conv_unicode_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @rar_conv_unicode_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rar_conv_unicode_to_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32* %24, i32** %12, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i8* @calloc(i32 %31, i32 3)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %281

42:                                               ; preds = %2
  %43 = load i32*, i32** %13, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = icmp sle i64 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i8*, i8** %14, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @memcpy(i8* %51, i8* %52, i32 %53)
  %55 = load i8*, i8** %14, align 8
  store i8* %55, i8** %3, align 8
  br label %281

56:                                               ; preds = %42
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %12, align 8
  %59 = load i32, i32* %57, align 4
  store i32 %59, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %278, %56
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ult i32* %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = icmp ult i8* %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %70, label %279

70:                                               ; preds = %68
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %12, align 8
  %76 = load i32, i32* %74, align 4
  store i32 %76, i32* %7, align 4
  store i32 8, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 2
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %80, %81
  %83 = and i32 %82, 3
  switch i32 %83, label %278 [
    i32 0, label %84
    i32 1, label %111
    i32 2, label %141
    i32 3, label %174
  ]

84:                                               ; preds = %77
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32*, i32** %13, align 8
  %88 = icmp ule i32* %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %90)
  store i8* null, i8** %3, align 8
  br label %281

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %12, align 8
  %96 = load i32, i32* %94, align 4
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %15, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @ar_conv_rune_to_utf8(i8 signext %97, i8* %98, i32 %104)
  %106 = load i8*, i8** %15, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %15, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %278

111:                                              ; preds = %77
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32*, i32** %13, align 8
  %115 = icmp ule i32* %113, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load i8*, i8** %14, align 8
  %118 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %117)
  store i8* null, i8** %3, align 8
  br label %281

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %6, align 4
  %122 = shl i32 %121, 8
  %123 = load i32*, i32** %12, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %12, align 8
  %125 = load i32, i32* %123, align 4
  %126 = or i32 %122, %125
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %15, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = load i8*, i8** %15, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32 @ar_conv_rune_to_utf8(i8 signext %127, i8* %128, i32 %134)
  %136 = load i8*, i8** %15, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %15, align 8
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %278

141:                                              ; preds = %77
  %142 = load i32*, i32** %12, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32*, i32** %13, align 8
  %145 = icmp ule i32* %143, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %14, align 8
  %148 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %147)
  store i8* null, i8** %3, align 8
  br label %281

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149
  %151 = load i32*, i32** %12, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 8
  %155 = load i32*, i32** %12, align 8
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %154, %156
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %15, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = call i32 @ar_conv_rune_to_utf8(i8 signext %158, i8* %159, i32 %165)
  %167 = load i8*, i8** %15, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8* %169, i8** %15, align 8
  %170 = load i32*, i32** %12, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  store i32* %171, i32** %12, align 8
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %278

174:                                              ; preds = %77
  %175 = load i32*, i32** %12, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32*, i32** %13, align 8
  %178 = icmp ule i32* %176, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i8*, i8** %14, align 8
  %181 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %180)
  store i8* null, i8** %3, align 8
  br label %281

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182
  %184 = load i32*, i32** %12, align 8
  %185 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %185, i32** %12, align 8
  %186 = load i32, i32* %184, align 4
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = and i32 %187, 128
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %239

190:                                              ; preds = %183
  %191 = load i32*, i32** %12, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %12, align 8
  %193 = load i32, i32* %191, align 4
  store i32 %193, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %235, %190
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %10, align 4
  %197 = and i32 %196, 127
  %198 = add nsw i32 %197, 2
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %238

200:                                              ; preds = %194
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %5, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = load i8*, i8** %14, align 8
  %206 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %205)
  store i8* null, i8** %3, align 8
  br label %281

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %6, align 4
  %210 = shl i32 %209, 8
  %211 = load i8*, i8** %4, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = load i32, i32* %17, align 4
  %218 = and i32 %217, 255
  %219 = add nsw i32 %216, %218
  %220 = or i32 %210, %219
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %15, align 8
  %223 = load i8*, i8** %16, align 8
  %224 = load i8*, i8** %15, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = trunc i64 %227 to i32
  %229 = call i32 @ar_conv_rune_to_utf8(i8 signext %221, i8* %222, i32 %228)
  %230 = load i8*, i8** %15, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %15, align 8
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %235

235:                                              ; preds = %208
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %11, align 4
  br label %194

238:                                              ; preds = %194
  br label %277

239:                                              ; preds = %183
  store i32 0, i32* %11, align 4
  br label %240

240:                                              ; preds = %273, %239
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* %10, align 4
  %243 = and i32 %242, 127
  %244 = add nsw i32 %243, 2
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %276

246:                                              ; preds = %240
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %5, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %251 = load i8*, i8** %14, align 8
  %252 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %251)
  store i8* null, i8** %3, align 8
  br label %281

253:                                              ; preds = %246
  br label %254

254:                                              ; preds = %253
  %255 = load i8*, i8** %4, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = load i8*, i8** %15, align 8
  %261 = load i8*, i8** %16, align 8
  %262 = load i8*, i8** %15, align 8
  %263 = ptrtoint i8* %261 to i64
  %264 = ptrtoint i8* %262 to i64
  %265 = sub i64 %263, %264
  %266 = trunc i64 %265 to i32
  %267 = call i32 @ar_conv_rune_to_utf8(i8 signext %259, i8* %260, i32 %266)
  %268 = load i8*, i8** %15, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %268, i64 %269
  store i8* %270, i8** %15, align 8
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %9, align 4
  br label %273

273:                                              ; preds = %254
  %274 = load i32, i32* %11, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %11, align 4
  br label %240

276:                                              ; preds = %240
  br label %277

277:                                              ; preds = %276, %238
  br label %278

278:                                              ; preds = %77, %277, %150, %120, %93
  br label %60

279:                                              ; preds = %68
  %280 = load i8*, i8** %14, align 8
  store i8* %280, i8** %3, align 8
  br label %281

281:                                              ; preds = %279, %250, %204, %179, %146, %116, %89, %50, %41
  %282 = load i8*, i8** %3, align 8
  ret i8* %282
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(...) #1

declare dso_local i32 @ar_conv_rune_to_utf8(i8 signext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
