; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msvidc32/extr_msvideo1.c_msvideo1_decode_8bit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msvidc32/extr_msvideo1.c_msvideo1_decode_8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32, i8*, i32)* @msvideo1_decode_8bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msvideo1_decode_8bit(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i16, align 2
  %28 = alloca i32, align 4
  %29 = alloca [8 x i8], align 1
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 4
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sdiv i32 %32, 4
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %21, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %15, align 4
  store i32 4, i32* %22, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %37, 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %21, align 4
  store i32 %40, i32* %19, align 4
  br label %41

41:                                               ; preds = %273, %6
  %42 = load i32, i32* %19, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %276

44:                                               ; preds = %41
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %19, align 4
  %47 = sub nsw i32 %45, %46
  %48 = mul nsw i32 %47, 4
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %269, %44
  %53 = load i32, i32* %18, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %272

55:                                               ; preds = %52
  %56 = load i32, i32* %28, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %28, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %28, align 4
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %15, align 4
  br label %269

66:                                               ; preds = %55
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %14, align 4
  %68 = call i32 @CHECK_STREAM_PTR(i32 2)
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %24, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %24, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %25, align 1
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %24, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %24, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %26, align 1
  %81 = load i8, i8* %25, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %66
  %85 = load i8, i8* %26, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %276

92:                                               ; preds = %88, %84, %66
  %93 = load i8, i8* %26, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 252
  %96 = icmp eq i32 %95, 132
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i8, i8* %26, align 1
  %99 = zext i8 %98 to i32
  %100 = sub nsw i32 %99, 132
  %101 = shl i32 %100, 8
  %102 = load i8, i8* %25, align 1
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %101, %103
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %28, align 4
  br label %262

106:                                              ; preds = %92
  %107 = load i8, i8* %26, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp slt i32 %108, 128
  br i1 %109, label %110, label %168

110:                                              ; preds = %106
  %111 = load i8, i8* %26, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 8
  %114 = load i8, i8* %25, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = trunc i32 %116 to i16
  store i16 %117, i16* %27, align 2
  %118 = call i32 @CHECK_STREAM_PTR(i32 2)
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %24, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %24, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 0
  store i8 %124, i8* %125, align 1
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* %24, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %24, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 1
  store i8 %131, i8* %132, align 1
  store i32 0, i32* %17, align 4
  br label %133

133:                                              ; preds = %164, %110
  %134 = load i32, i32* %17, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %167

136:                                              ; preds = %133
  store i32 0, i32* %16, align 4
  br label %137

137:                                              ; preds = %153, %136
  %138 = load i32, i32* %16, align 4
  %139 = icmp slt i32 %138, 4
  br i1 %139, label %140, label %160

140:                                              ; preds = %137
  %141 = load i16, i16* %27, align 2
  %142 = zext i16 %141 to i32
  %143 = and i32 %142, 1
  %144 = xor i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = load i8*, i8** %11, align 8
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8 %147, i8* %152, align 1
  br label %153

153:                                              ; preds = %140
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %16, align 4
  %156 = load i16, i16* %27, align 2
  %157 = zext i16 %156 to i32
  %158 = ashr i32 %157, 1
  %159 = trunc i32 %158 to i16
  store i16 %159, i16* %27, align 2
  br label %137

160:                                              ; preds = %137
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* %14, align 4
  %163 = sub nsw i32 %162, %161
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %17, align 4
  br label %133

167:                                              ; preds = %133
  br label %261

168:                                              ; preds = %106
  %169 = load i8, i8* %26, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp sge i32 %170, 144
  br i1 %171, label %172, label %231

172:                                              ; preds = %168
  %173 = load i8, i8* %26, align 1
  %174 = zext i8 %173 to i32
  %175 = shl i32 %174, 8
  %176 = load i8, i8* %25, align 1
  %177 = zext i8 %176 to i32
  %178 = or i32 %175, %177
  %179 = trunc i32 %178 to i16
  store i16 %179, i16* %27, align 2
  %180 = call i32 @CHECK_STREAM_PTR(i32 8)
  %181 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 0
  %182 = load i8*, i8** %9, align 8
  %183 = load i32, i32* %24, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = call i32 @memcpy(i8* %181, i8* %185, i32 8)
  %187 = load i32, i32* %24, align 4
  %188 = add nsw i32 %187, 8
  store i32 %188, i32* %24, align 4
  store i32 0, i32* %17, align 4
  br label %189

189:                                              ; preds = %227, %172
  %190 = load i32, i32* %17, align 4
  %191 = icmp slt i32 %190, 4
  br i1 %191, label %192, label %230

192:                                              ; preds = %189
  store i32 0, i32* %16, align 4
  br label %193

193:                                              ; preds = %216, %192
  %194 = load i32, i32* %16, align 4
  %195 = icmp slt i32 %194, 4
  br i1 %195, label %196, label %223

196:                                              ; preds = %193
  %197 = load i32, i32* %17, align 4
  %198 = and i32 %197, 2
  %199 = shl i32 %198, 1
  %200 = load i32, i32* %16, align 4
  %201 = and i32 %200, 2
  %202 = add nsw i32 %199, %201
  %203 = load i16, i16* %27, align 2
  %204 = zext i16 %203 to i32
  %205 = and i32 %204, 1
  %206 = xor i32 %205, 1
  %207 = add nsw i32 %202, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = load i8*, i8** %11, align 8
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %14, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  store i8 %210, i8* %215, align 1
  br label %216

216:                                              ; preds = %196
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %16, align 4
  %219 = load i16, i16* %27, align 2
  %220 = zext i16 %219 to i32
  %221 = ashr i32 %220, 1
  %222 = trunc i32 %221 to i16
  store i16 %222, i16* %27, align 2
  br label %193

223:                                              ; preds = %193
  %224 = load i32, i32* %23, align 4
  %225 = load i32, i32* %14, align 4
  %226 = sub nsw i32 %225, %224
  store i32 %226, i32* %14, align 4
  br label %227

227:                                              ; preds = %223
  %228 = load i32, i32* %17, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %17, align 4
  br label %189

230:                                              ; preds = %189
  br label %260

231:                                              ; preds = %168
  %232 = load i8, i8* %25, align 1
  %233 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 0
  store i8 %232, i8* %233, align 1
  store i32 0, i32* %17, align 4
  br label %234

234:                                              ; preds = %256, %231
  %235 = load i32, i32* %17, align 4
  %236 = icmp slt i32 %235, 4
  br i1 %236, label %237, label %259

237:                                              ; preds = %234
  store i32 0, i32* %16, align 4
  br label %238

238:                                              ; preds = %249, %237
  %239 = load i32, i32* %16, align 4
  %240 = icmp slt i32 %239, 4
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  %242 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 0
  %243 = load i8, i8* %242, align 1
  %244 = load i8*, i8** %11, align 8
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %14, align 4
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  store i8 %243, i8* %248, align 1
  br label %249

249:                                              ; preds = %241
  %250 = load i32, i32* %16, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %16, align 4
  br label %238

252:                                              ; preds = %238
  %253 = load i32, i32* %23, align 4
  %254 = load i32, i32* %14, align 4
  %255 = sub nsw i32 %254, %253
  store i32 %255, i32* %14, align 4
  br label %256

256:                                              ; preds = %252
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %17, align 4
  br label %234

259:                                              ; preds = %234
  br label %260

260:                                              ; preds = %259, %230
  br label %261

261:                                              ; preds = %260, %167
  br label %262

262:                                              ; preds = %261, %97
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %22, align 4
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %15, align 4
  br label %269

269:                                              ; preds = %263, %58
  %270 = load i32, i32* %18, align 4
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %18, align 4
  br label %52

272:                                              ; preds = %52
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %19, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %19, align 4
  br label %41

276:                                              ; preds = %91, %41
  ret void
}

declare dso_local i32 @CHECK_STREAM_PTR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
