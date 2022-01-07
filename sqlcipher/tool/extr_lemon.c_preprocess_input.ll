; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_preprocess_input.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_preprocess_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%endif\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%ifdef\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%ifndef\00", align 1
@nDefine = common dso_local global i32 0, align 4
@azDefine = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"unterminated %%ifdef starting on line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @preprocess_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preprocess_input(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %293, %1
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %296

18:                                               ; preds = %11
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 37
  br i1 %36, label %49, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 10
  br i1 %48, label %49, label %50

49:                                               ; preds = %40, %29
  br label %293

50:                                               ; preds = %40, %37
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %128

57:                                               ; preds = %50
  %58 = load i8*, i8** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 6
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @ISSPACE(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %128

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %94, %74
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i8*, i8** %2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 10
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load i8*, i8** %2, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 32, i8* %92, align 1
  br label %93

93:                                               ; preds = %88, %80
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %76

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %97, %69
  br label %99

99:                                               ; preds = %98, %66
  %100 = load i32, i32* %3, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %124, %99
  %102 = load i8*, i8** %2, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load i8*, i8** %2, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 10
  br label %117

117:                                              ; preds = %109, %101
  %118 = phi i1 [ false, %101 ], [ %116, %109 ]
  br i1 %118, label %119, label %127

119:                                              ; preds = %117
  %120 = load i8*, i8** %2, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 32, i8* %123, align 1
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %101

127:                                              ; preds = %117
  br label %292

128:                                              ; preds = %57, %50
  %129 = load i8*, i8** %2, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = call i64 @strncmp(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i8*, i8** %2, align 8
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 6
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = call i64 @ISSPACE(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %160, label %144

144:                                              ; preds = %135, %128
  %145 = load i8*, i8** %2, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = call i64 @strncmp(i8* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %291

151:                                              ; preds = %144
  %152 = load i8*, i8** %2, align 8
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 7
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = call i64 @ISSPACE(i8 signext %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %291

160:                                              ; preds = %151, %135
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %262

166:                                              ; preds = %160
  %167 = load i32, i32* %3, align 4
  %168 = add nsw i32 %167, 7
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %178, %166
  %170 = load i8*, i8** %2, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = call i64 @ISSPACE(i8 signext %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %169

181:                                              ; preds = %169
  store i32 0, i32* %6, align 4
  br label %182

182:                                              ; preds = %206, %181
  %183 = load i8*, i8** %2, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %183, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %182
  %193 = load i8*, i8** %2, align 8
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %193, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = call i64 @ISSPACE(i8 signext %199)
  %201 = icmp ne i64 %200, 0
  %202 = xor i1 %201, true
  br label %203

203:                                              ; preds = %192, %182
  %204 = phi i1 [ false, %182 ], [ %202, %192 ]
  br i1 %204, label %205, label %209

205:                                              ; preds = %203
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %182

209:                                              ; preds = %203
  store i32 1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %210

210:                                              ; preds = %238, %209
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @nDefine, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %241

214:                                              ; preds = %210
  %215 = load i8**, i8*** @azDefine, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = load i8*, i8** %2, align 8
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i32, i32* %6, align 4
  %225 = call i64 @strncmp(i8* %219, i8* %223, i32 %224)
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %214
  %228 = load i8**, i8*** @azDefine, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @lemonStrlen(i8* %232)
  %234 = load i32, i32* %6, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %227
  store i32 0, i32* %7, align 4
  br label %241

237:                                              ; preds = %227, %214
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %5, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %5, align 4
  br label %210

241:                                              ; preds = %236, %210
  %242 = load i8*, i8** %2, align 8
  %243 = load i32, i32* %3, align 4
  %244 = add nsw i32 %243, 3
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %242, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 110
  br i1 %249, label %250, label %255

250:                                              ; preds = %241
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  store i32 %254, i32* %7, align 4
  br label %255

255:                                              ; preds = %250, %241
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32, i32* %3, align 4
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* %9, align 4
  store i32 %260, i32* %10, align 4
  br label %261

261:                                              ; preds = %258, %255
  br label %262

262:                                              ; preds = %261, %163
  %263 = load i32, i32* %3, align 4
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %287, %262
  %265 = load i8*, i8** %2, align 8
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %264
  %273 = load i8*, i8** %2, align 8
  %274 = load i32, i32* %4, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp ne i32 %278, 10
  br label %280

280:                                              ; preds = %272, %264
  %281 = phi i1 [ false, %264 ], [ %279, %272 ]
  br i1 %281, label %282, label %290

282:                                              ; preds = %280
  %283 = load i8*, i8** %2, align 8
  %284 = load i32, i32* %4, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  store i8 32, i8* %286, align 1
  br label %287

287:                                              ; preds = %282
  %288 = load i32, i32* %4, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %4, align 4
  br label %264

290:                                              ; preds = %280
  br label %291

291:                                              ; preds = %290, %151, %144
  br label %292

292:                                              ; preds = %291, %127
  br label %293

293:                                              ; preds = %292, %49
  %294 = load i32, i32* %3, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %3, align 4
  br label %11

296:                                              ; preds = %11
  %297 = load i32, i32* %7, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %296
  %300 = load i32, i32* @stderr, align 4
  %301 = load i32, i32* %10, align 4
  %302 = call i32 @fprintf(i32 %300, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %301)
  %303 = call i32 @exit(i32 1) #3
  unreachable

304:                                              ; preds = %296
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @lemonStrlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
