; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_logest.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_logest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nlogn\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"inv\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%5d (%f)\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%5d (%lld.%02lld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i32], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %210, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %213

15:                                               ; preds = %11
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @logEstAdd(i32 %32, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %27, %24
  br label %209

46:                                               ; preds = %15
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = icmp sge i32 %51, 2
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @logEstMultiply(i32 %58, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %67
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %53, %50
  br label %208

72:                                               ; preds = %46
  %73 = load i8*, i8** %9, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %86
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %79, %76
  br label %207

91:                                               ; preds = %72
  %92 = load i8*, i8** %9, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @logEstFromInteger(i32 %103)
  %105 = sub nsw i32 %104, 33
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %108
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %98, %95
  br label %206

111:                                              ; preds = %91
  %112 = load i8*, i8** %9, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @logEstFromInteger(i32 %123)
  %125 = sub nsw i32 %124, 33
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %125
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %118, %115
  br label %205

133:                                              ; preds = %111
  %134 = load i8*, i8** %9, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = load i32, i32* %7, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load i32, i32* %7, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 0, %145
  %147 = load i32, i32* %7, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %149
  store i32 %146, i32* %150, align 4
  br label %151

151:                                              ; preds = %140, %137
  br label %204

152:                                              ; preds = %133
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 94
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = call i32 @atoi(i8* %160)
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %164
  store i32 %161, i32* %165, align 4
  br label %203

166:                                              ; preds = %152
  %167 = load i8*, i8** %9, align 8
  %168 = call i64 @isInteger(i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %166
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 @atoi(i8* %171)
  %173 = call i32 @logEstFromInteger(i32 %172)
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %176
  store i32 %173, i32* %177, align 4
  br label %202

178:                                              ; preds = %166
  %179 = load i8*, i8** %9, align 8
  %180 = call i64 @isFloat(i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load i8*, i8** %9, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 45
  br i1 %187, label %188, label %196

188:                                              ; preds = %182
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @atof(i8* %189)
  %191 = call i32 @logEstFromDouble(i32 %190)
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %7, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %194
  store i32 %191, i32* %195, align 4
  br label %201

196:                                              ; preds = %182, %178
  %197 = load i8**, i8*** %5, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @showHelp(i8* %199)
  br label %201

201:                                              ; preds = %196, %188
  br label %202

202:                                              ; preds = %201, %170
  br label %203

203:                                              ; preds = %202, %158
  br label %204

204:                                              ; preds = %203, %151
  br label %205

205:                                              ; preds = %204, %132
  br label %206

206:                                              ; preds = %205, %110
  br label %207

207:                                              ; preds = %206, %90
  br label %208

208:                                              ; preds = %207, %71
  br label %209

209:                                              ; preds = %208, %45
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  br label %11

213:                                              ; preds = %11
  %214 = load i32, i32* %7, align 4
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %281, %213
  %217 = load i32, i32* %6, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %284

219:                                              ; preds = %216
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %223, -40
  br i1 %224, label %225, label %240

225:                                              ; preds = %219
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 0, %233
  %235 = call i32 @logEstToInt(i32 %234)
  %236 = sitofp i32 %235 to double
  %237 = fdiv double 1.000000e+00, %236
  %238 = fptosi double %237 to i32
  %239 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %229, i32 %238)
  br label %280

240:                                              ; preds = %219
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = icmp slt i32 %244, 10
  br i1 %245, label %246, label %261

246:                                              ; preds = %240
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 100
  %256 = call i32 @logEstToInt(i32 %255)
  %257 = sitofp i32 %256 to double
  %258 = fdiv double %257, 1.024000e+03
  %259 = fptosi double %258 to i32
  %260 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %250, i32 %259)
  br label %279

261:                                              ; preds = %240
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 100
  %267 = call i32 @logEstToInt(i32 %266)
  %268 = mul nsw i32 %267, 100
  %269 = sdiv i32 %268, 1024
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %10, align 4
  %275 = sdiv i32 %274, 100
  %276 = load i32, i32* %10, align 4
  %277 = srem i32 %276, 100
  %278 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %273, i32 %275, i32 %277)
  br label %279

279:                                              ; preds = %261, %246
  br label %280

280:                                              ; preds = %279, %225
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %6, align 4
  %283 = add nsw i32 %282, -1
  store i32 %283, i32* %6, align 4
  br label %216

284:                                              ; preds = %216
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @logEstAdd(i32, i32) #1

declare dso_local i32 @logEstMultiply(i32, i32) #1

declare dso_local i32 @logEstFromInteger(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @isInteger(i8*) #1

declare dso_local i64 @isFloat(i8*) #1

declare dso_local i32 @logEstFromDouble(i32) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @showHelp(i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @logEstToInt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
