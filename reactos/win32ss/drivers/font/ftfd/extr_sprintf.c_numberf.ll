; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/font/ftfd/extr_sprintf.c_numberf.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/font/ftfd/extr_sprintf.c_numberf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@LARGE = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@ZEROPAD = common dso_local global i32 0, align 4
@SIGN = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@SPACE = common dso_local global i32 0, align 4
@SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, double, i32, i32, i32, i32)* @numberf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @numberf(i8* %0, i8* %1, double %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca [66 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store double %2, double* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @LARGE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i8*, i8** %21, align 8
  br label %32

30:                                               ; preds = %7
  %31 = load i8*, i8** %20, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i8* [ %29, %28 ], [ %31, %30 ]
  store i8* %33, i8** %19, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @LEFT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @ZEROPAD, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %15, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %47, 36
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43
  store i8* null, i8** %8, align 8
  br label %291

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @ZEROPAD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 48, i32 32
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @SIGN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %50
  %63 = load double, double* %11, align 8
  %64 = fcmp olt double %63, 0.000000e+00
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  store i8 45, i8* %17, align 1
  %66 = load double, double* %11, align 8
  %67 = fneg double %66
  store double %67, double* %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %13, align 4
  br label %88

70:                                               ; preds = %62
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @PLUS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  store i8 43, i8* %17, align 1
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %13, align 4
  br label %87

78:                                               ; preds = %70
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @SPACE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  store i8 32, i8* %17, align 1
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %65
  br label %89

89:                                               ; preds = %88, %50
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @SPECIAL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 16
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  %99 = sub nsw i32 %98, 2
  store i32 %99, i32* %13, align 4
  br label %107

100:                                              ; preds = %94
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %97
  br label %108

108:                                              ; preds = %107, %89
  store i32 0, i32* %22, align 4
  %109 = load double, double* %11, align 8
  %110 = fcmp oeq double %109, 0.000000e+00
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* %22, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %22, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [66 x i8], [66 x i8]* %18, i64 0, i64 %114
  store i8 48, i8* %115, align 1
  br label %135

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %120, %116
  %118 = load double, double* %11, align 8
  %119 = fcmp une double %118, 0.000000e+00
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load double, double* %11, align 8
  %122 = fptosi double %121 to i64
  store i64 %122, i64* %23, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i64 @do_div(i64* %23, i32 %124)
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = load i32, i32* %22, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %22, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds [66 x i8], [66 x i8]* %18, i64 0, i64 %130
  store i8 %127, i8* %131, align 1
  %132 = load i64, i64* %23, align 8
  %133 = sitofp i64 %132 to double
  store double %133, double* %11, align 8
  br label %117

134:                                              ; preds = %117
  br label %135

135:                                              ; preds = %134, %111
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* %22, align 4
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @ZEROPAD, align 4
  %147 = load i32, i32* @LEFT, align 4
  %148 = add nsw i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %162, %151
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %13, align 4
  %155 = icmp sgt i32 %153, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i8*, i8** %9, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = icmp ule i8* %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i8*, i8** %9, align 8
  store i8 32, i8* %161, align 1
  br label %162

162:                                              ; preds = %160, %156
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  br label %152

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165, %141
  %167 = load i8, i8* %17, align 1
  %168 = icmp ne i8 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %166
  %170 = load i8*, i8** %9, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = icmp ule i8* %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i8, i8* %17, align 1
  %175 = load i8*, i8** %9, align 8
  store i8 %174, i8* %175, align 1
  br label %176

176:                                              ; preds = %173, %169
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %9, align 8
  br label %179

179:                                              ; preds = %176, %166
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* @SPECIAL, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %221

184:                                              ; preds = %179
  %185 = load i32, i32* %12, align 4
  %186 = icmp eq i32 %185, 8
  br i1 %186, label %187, label %196

187:                                              ; preds = %184
  %188 = load i8*, i8** %9, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = icmp ule i8* %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i8*, i8** %9, align 8
  store i8 48, i8* %192, align 1
  br label %193

193:                                              ; preds = %191, %187
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %9, align 8
  br label %220

196:                                              ; preds = %184
  %197 = load i32, i32* %12, align 4
  %198 = icmp eq i32 %197, 16
  br i1 %198, label %199, label %219

199:                                              ; preds = %196
  %200 = load i8*, i8** %9, align 8
  %201 = load i8*, i8** %10, align 8
  %202 = icmp ule i8* %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i8*, i8** %9, align 8
  store i8 48, i8* %204, align 1
  br label %205

205:                                              ; preds = %203, %199
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %9, align 8
  %208 = load i8*, i8** %9, align 8
  %209 = load i8*, i8** %10, align 8
  %210 = icmp ule i8* %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %205
  %212 = load i8*, i8** %19, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 33
  %214 = load i8, i8* %213, align 1
  %215 = load i8*, i8** %9, align 8
  store i8 %214, i8* %215, align 1
  br label %216

216:                                              ; preds = %211, %205
  %217 = load i8*, i8** %9, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %9, align 8
  br label %219

219:                                              ; preds = %216, %196
  br label %220

220:                                              ; preds = %219, %193
  br label %221

221:                                              ; preds = %220, %179
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* @LEFT, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %242, label %226

226:                                              ; preds = %221
  br label %227

227:                                              ; preds = %238, %226
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %13, align 4
  %230 = icmp sgt i32 %228, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %227
  %232 = load i8*, i8** %9, align 8
  %233 = load i8*, i8** %10, align 8
  %234 = icmp ule i8* %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i8, i8* %16, align 1
  %237 = load i8*, i8** %9, align 8
  store i8 %236, i8* %237, align 1
  br label %238

238:                                              ; preds = %235, %231
  %239 = load i8*, i8** %9, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %9, align 8
  br label %227

241:                                              ; preds = %227
  br label %242

242:                                              ; preds = %241, %221
  br label %243

243:                                              ; preds = %254, %242
  %244 = load i32, i32* %22, align 4
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %14, align 4
  %247 = icmp slt i32 %244, %245
  br i1 %247, label %248, label %257

248:                                              ; preds = %243
  %249 = load i8*, i8** %9, align 8
  %250 = load i8*, i8** %10, align 8
  %251 = icmp ule i8* %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = load i8*, i8** %9, align 8
  store i8 48, i8* %253, align 1
  br label %254

254:                                              ; preds = %252, %248
  %255 = load i8*, i8** %9, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %9, align 8
  br label %243

257:                                              ; preds = %243
  br label %258

258:                                              ; preds = %272, %257
  %259 = load i32, i32* %22, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %22, align 4
  %261 = icmp sgt i32 %259, 0
  br i1 %261, label %262, label %275

262:                                              ; preds = %258
  %263 = load i8*, i8** %9, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = icmp ule i8* %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = load i32, i32* %22, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [66 x i8], [66 x i8]* %18, i64 0, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = load i8*, i8** %9, align 8
  store i8 %270, i8* %271, align 1
  br label %272

272:                                              ; preds = %266, %262
  %273 = load i8*, i8** %9, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %9, align 8
  br label %258

275:                                              ; preds = %258
  br label %276

276:                                              ; preds = %286, %275
  %277 = load i32, i32* %13, align 4
  %278 = add nsw i32 %277, -1
  store i32 %278, i32* %13, align 4
  %279 = icmp sgt i32 %277, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %276
  %281 = load i8*, i8** %9, align 8
  %282 = load i8*, i8** %10, align 8
  %283 = icmp ule i8* %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load i8*, i8** %9, align 8
  store i8 32, i8* %285, align 1
  br label %286

286:                                              ; preds = %284, %280
  %287 = load i8*, i8** %9, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %9, align 8
  br label %276

289:                                              ; preds = %276
  %290 = load i8*, i8** %9, align 8
  store i8* %290, i8** %8, align 8
  br label %291

291:                                              ; preds = %289, %49
  %292 = load i8*, i8** %8, align 8
  ret i8* %292
}

declare dso_local i64 @do_div(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
