; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__wildmatch_raw2.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__wildmatch_raw2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb__wildmatch_raw2(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %83, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 42
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %22, %17
  br label %24

24:                                               ; preds = %75, %23
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 42
  br i1 %28, label %29, label %82

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 -1
  store i32 %39, i32* %5, align 4
  br label %271

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 63
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %271

50:                                               ; preds = %45
  br label %75

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @tolower(i8 signext %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @tolower(i8 signext %59)
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %271

63:                                               ; preds = %54
  br label %74

64:                                               ; preds = %51
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 -1, i32* %5, align 4
  br label %271

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %63
  br label %75

75:                                               ; preds = %74, %50
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %24

82:                                               ; preds = %24
  br label %89

83:                                               ; preds = %4
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %271

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %82
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 42
  br label %97

97:                                               ; preds = %92, %89
  %98 = phi i1 [ true, %89 ], [ %96, %92 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  br label %106

106:                                              ; preds = %103, %97
  br label %107

107:                                              ; preds = %254, %106
  %108 = load i8*, i8** %6, align 8
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %263

111:                                              ; preds = %107
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %118, %111
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 42
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %6, align 8
  br label %112

121:                                              ; preds = %112
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = icmp ne i8 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %11, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  br label %132

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i32 [ %130, %129 ], [ 0, %131 ]
  store i32 %133, i32* %5, align 4
  br label %271

134:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %152, %134
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 42
  br i1 %142, label %143, label %155

143:                                              ; preds = %135
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %155

152:                                              ; preds = %143
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %135

155:                                              ; preds = %151, %135
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %218

163:                                              ; preds = %155
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %218, label %166

166:                                              ; preds = %163
  store i32 0, i32* %13, align 4
  br label %167

167:                                              ; preds = %181, %166
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %167
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  store i32 -1, i32* %5, align 4
  br label %271

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  br label %167

184:                                              ; preds = %167
  br label %185

185:                                              ; preds = %192, %184
  %186 = load i8*, i8** %7, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = icmp ne i8 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %185

195:                                              ; preds = %185
  %196 = load i8*, i8** %7, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = sub i64 0, %201
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  %204 = load i8*, i8** %6, align 8
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %9, align 4
  %207 = call i64 @stb__match_qstring(i8* %203, i8* %204, i32 %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %195
  %210 = load i32, i32* %11, align 4
  %211 = icmp sge i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i32, i32* %11, align 4
  br label %215

214:                                              ; preds = %209
  br label %215

215:                                              ; preds = %214, %212
  %216 = phi i32 [ %213, %212 ], [ 0, %214 ]
  store i32 %216, i32* %5, align 4
  br label %271

217:                                              ; preds = %195
  store i32 -1, i32* %5, align 4
  br label %271

218:                                              ; preds = %163, %155
  %219 = load i8*, i8** %7, align 8
  %220 = load i8*, i8** %6, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @stb__find_qstring(i8* %219, i8* %220, i32 %221, i32 %222)
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %14, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  store i32 -1, i32* %5, align 4
  br label %271

227:                                              ; preds = %218
  %228 = load i32, i32* %11, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %231, %232
  store i32 %233, i32* %11, align 4
  br label %234

234:                                              ; preds = %230, %227
  %235 = load i32, i32* %12, align 4
  %236 = load i8*, i8** %6, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8* %238, i8** %6, align 8
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %239, %240
  %242 = load i8*, i8** %7, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8* %244, i8** %7, align 8
  br label %245

245:                                              ; preds = %234
  %246 = load i8*, i8** %6, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @assert(i32 %251)
  %253 = load i32, i32* %11, align 4
  store i32 %253, i32* %5, align 4
  br label %271

254:                                              ; preds = %245
  %255 = load i8*, i8** %6, align 8
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 42
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  %261 = load i8*, i8** %6, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %6, align 8
  br label %107

263:                                              ; preds = %107
  %264 = load i32, i32* %11, align 4
  %265 = icmp sge i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = load i32, i32* %11, align 4
  br label %269

268:                                              ; preds = %263
  br label %269

269:                                              ; preds = %268, %266
  %270 = phi i32 [ %267, %266 ], [ 0, %268 ]
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %269, %250, %226, %217, %215, %179, %132, %87, %72, %62, %49, %33
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local i64 @tolower(i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @stb__match_qstring(i8*, i8*, i32, i32) #1

declare dso_local i32 @stb__find_qstring(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
