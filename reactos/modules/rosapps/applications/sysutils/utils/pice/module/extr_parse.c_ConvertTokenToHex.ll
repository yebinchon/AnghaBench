; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_ConvertTokenToHex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_ConvertTokenToHex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gCurrentSelector = common dso_local global i64 0, align 8
@gCurrentOffset = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertTokenToHex(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* @gCurrentSelector, align 8
  store i32 0, i32* @gCurrentOffset, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %135, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 32
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 58
  br label %36

36:                                               ; preds = %28, %20, %12, %9
  %37 = phi i1 [ false, %20 ], [ false, %12 ], [ false, %9 ], [ %35, %28 ]
  br i1 %37, label %38, label %138

38:                                               ; preds = %36
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sge i32 %44, 48
  br i1 %45, label %46, label %68

46:                                               ; preds = %38
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 57
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 %55, 4
  store i32 %56, i32* %6, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 48
  %64 = sext i32 %63 to i64
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %134

68:                                               ; preds = %46, %38
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp sge i32 %74, 65
  br i1 %75, label %76, label %99

76:                                               ; preds = %68
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sle i32 %82, 70
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 %85, 4
  store i32 %86, i32* %6, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = sub nsw i32 %92, 65
  %94 = add nsw i32 %93, 10
  %95 = sext i32 %94 to i64
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %133

99:                                               ; preds = %76, %68
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sge i32 %105, 97
  br i1 %106, label %107, label %130

107:                                              ; preds = %99
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp sle i32 %113, 102
  br i1 %114, label %115, label %130

115:                                              ; preds = %107
  %116 = load i32, i32* %6, align 4
  %117 = shl i32 %116, 4
  store i32 %117, i32* %6, align 4
  %118 = load i8*, i8** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = sub nsw i32 %123, 97
  %125 = add nsw i32 %124, 10
  %126 = sext i32 %125 to i64
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %132

130:                                              ; preds = %107, %99
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %3, align 4
  br label %299

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %84
  br label %134

134:                                              ; preds = %133, %54
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %9

138:                                              ; preds = %36
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  %141 = load i8*, i8** %4, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %4, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 58
  br i1 %150, label %151, label %295

151:                                              ; preds = %138
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp sgt i32 %153, 65535
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %3, align 4
  br label %299

157:                                              ; preds = %151
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %284, %157
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %159, 8
  br i1 %160, label %161, label %185

161:                                              ; preds = %158
  %162 = load i8*, i8** %4, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %185

169:                                              ; preds = %161
  %170 = load i8*, i8** %4, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 32
  br i1 %176, label %177, label %185

177:                                              ; preds = %169
  %178 = load i8*, i8** %4, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 58
  br label %185

185:                                              ; preds = %177, %169, %161, %158
  %186 = phi i1 [ false, %169 ], [ false, %161 ], [ false, %158 ], [ %184, %177 ]
  br i1 %186, label %187, label %287

187:                                              ; preds = %185
  %188 = load i8*, i8** %4, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp sge i32 %193, 48
  br i1 %194, label %195, label %217

195:                                              ; preds = %187
  %196 = load i8*, i8** %4, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp sle i32 %201, 57
  br i1 %202, label %203, label %217

203:                                              ; preds = %195
  %204 = load i32, i32* %6, align 4
  %205 = shl i32 %204, 4
  store i32 %205, i32* %6, align 4
  %206 = load i8*, i8** %4, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = sub nsw i32 %211, 48
  %213 = sext i32 %212 to i64
  %214 = trunc i64 %213 to i32
  %215 = load i32, i32* %6, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %6, align 4
  br label %283

217:                                              ; preds = %195, %187
  %218 = load i8*, i8** %4, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp sge i32 %223, 65
  br i1 %224, label %225, label %248

225:                                              ; preds = %217
  %226 = load i8*, i8** %4, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp sle i32 %231, 70
  br i1 %232, label %233, label %248

233:                                              ; preds = %225
  %234 = load i32, i32* %6, align 4
  %235 = shl i32 %234, 4
  store i32 %235, i32* %6, align 4
  %236 = load i8*, i8** %4, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = sub nsw i32 %241, 65
  %243 = add nsw i32 %242, 10
  %244 = sext i32 %243 to i64
  %245 = trunc i64 %244 to i32
  %246 = load i32, i32* %6, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %6, align 4
  br label %282

248:                                              ; preds = %225, %217
  %249 = load i8*, i8** %4, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp sge i32 %254, 97
  br i1 %255, label %256, label %279

256:                                              ; preds = %248
  %257 = load i8*, i8** %4, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp sle i32 %262, 102
  br i1 %263, label %264, label %279

264:                                              ; preds = %256
  %265 = load i32, i32* %6, align 4
  %266 = shl i32 %265, 4
  store i32 %266, i32* %6, align 4
  %267 = load i8*, i8** %4, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = sub nsw i32 %272, 97
  %274 = add nsw i32 %273, 10
  %275 = sext i32 %274 to i64
  %276 = trunc i64 %275 to i32
  %277 = load i32, i32* %6, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %6, align 4
  br label %281

279:                                              ; preds = %256, %248
  %280 = load i32, i32* @FALSE, align 4
  store i32 %280, i32* %3, align 4
  br label %299

281:                                              ; preds = %264
  br label %282

282:                                              ; preds = %281, %233
  br label %283

283:                                              ; preds = %282, %203
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %7, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %7, align 4
  br label %158

287:                                              ; preds = %185
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  store i64 %289, i64* @gCurrentSelector, align 8
  %290 = load i32, i32* %6, align 4
  store i32 %290, i32* @gCurrentOffset, align 4
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = load i32, i32* %6, align 4
  %294 = call i32 @GetLinearAddress(i64 %292, i32 %293)
  store i32 %294, i32* %6, align 4
  br label %295

295:                                              ; preds = %287, %138
  %296 = load i32, i32* %6, align 4
  %297 = load i32*, i32** %5, align 8
  store i32 %296, i32* %297, align 4
  %298 = load i32, i32* @TRUE, align 4
  store i32 %298, i32* %3, align 4
  br label %299

299:                                              ; preds = %295, %279, %155, %130
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i32 @GetLinearAddress(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
