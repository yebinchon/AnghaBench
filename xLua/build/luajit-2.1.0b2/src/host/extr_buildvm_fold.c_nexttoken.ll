; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_buildvm_fold.c_nexttoken.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_buildvm_fold.c_nexttoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"IRFPM_\00", align 1
@irfpm_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"IRFL_\00", align 1
@irfield_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"IRCALL_\00", align 1
@ircall_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"IRCONV_\00", align 1
@irt_names = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@ir_names = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Error: bad fold definition token \22%s\22 at line %d\0A\00", align 1
@lineno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i32, i32)* @nexttoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nexttoken(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %273

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 32)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %10, align 8
  store i8 0, i8* %23, align 1
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i8*, i8** %10, align 8
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %30
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i8**, i8*** @irfpm_names, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load i8**, i8*** @irfpm_names, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 6
  %48 = call i32 @strcmp(i8* %45, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %4, align 8
  br label %274

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %35

56:                                               ; preds = %35
  br label %267

57:                                               ; preds = %30, %25
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strncmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %60
  store i64 0, i64* %9, align 8
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i8**, i8*** @irfield_names, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load i8**, i8*** @irfield_names, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 5
  %78 = call i32 @strcmp(i8* %75, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %71
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %4, align 8
  br label %274

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  br label %65

86:                                               ; preds = %65
  br label %266

87:                                               ; preds = %60, %57
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %87
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @strncmp(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %117, label %94

94:                                               ; preds = %90
  store i64 0, i64* %9, align 8
  br label %95

95:                                               ; preds = %113, %94
  %96 = load i8**, i8*** @ircall_names, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %116

101:                                              ; preds = %95
  %102 = load i8**, i8*** @ircall_names, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds i8*, i8** %102, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 7
  %108 = call i32 @strcmp(i8* %105, i8* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %101
  %111 = load i64, i64* %9, align 8
  store i64 %111, i64* %4, align 8
  br label %274

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %9, align 8
  br label %95

116:                                              ; preds = %95
  br label %265

117:                                              ; preds = %90, %87
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %184

120:                                              ; preds = %117
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @strncmp(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %184, label %124

124:                                              ; preds = %120
  store i64 0, i64* %9, align 8
  br label %125

125:                                              ; preds = %180, %124
  %126 = load i8**, i8*** @irt_names, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds i8*, i8** %126, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %183

131:                                              ; preds = %125
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 7
  %134 = call i8* @strchr(i8* %133, i8 signext 95)
  store i8* %134, i8** %11, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %179

137:                                              ; preds = %131
  %138 = load i8**, i8*** @irt_names, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 7
  %144 = load i8*, i8** %11, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 7
  %147 = ptrtoint i8* %144 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 @strncmp(i8* %141, i8* %143, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %179, label %153

153:                                              ; preds = %137
  store i64 0, i64* %12, align 8
  br label %154

154:                                              ; preds = %175, %153
  %155 = load i8**, i8*** @irt_names, align 8
  %156 = load i64, i64* %12, align 8
  %157 = getelementptr inbounds i8*, i8** %155, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %178

160:                                              ; preds = %154
  %161 = load i8**, i8*** @irt_names, align 8
  %162 = load i64, i64* %12, align 8
  %163 = getelementptr inbounds i8*, i8** %161, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = call i32 @strcmp(i8* %164, i8* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %160
  %170 = load i64, i64* %9, align 8
  %171 = shl i64 %170, 5
  %172 = load i64, i64* %12, align 8
  %173 = add i64 %171, %172
  store i64 %173, i64* %4, align 8
  br label %274

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %12, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %12, align 8
  br label %154

178:                                              ; preds = %154
  br label %179

179:                                              ; preds = %178, %137, %131
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %9, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %9, align 8
  br label %125

183:                                              ; preds = %125
  br label %264

184:                                              ; preds = %120, %117
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %230

187:                                              ; preds = %184
  %188 = load i8*, i8** %8, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp sge i32 %190, 48
  br i1 %191, label %192, label %230

192:                                              ; preds = %187
  %193 = load i8*, i8** %8, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp sle i32 %195, 57
  br i1 %196, label %197, label %230

197:                                              ; preds = %192
  store i64 0, i64* %9, align 8
  br label %198

198:                                              ; preds = %219, %197
  %199 = load i8*, i8** %8, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp sge i32 %201, 48
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load i8*, i8** %8, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp sle i32 %206, 57
  br label %208

208:                                              ; preds = %203, %198
  %209 = phi i1 [ false, %198 ], [ %207, %203 ]
  br i1 %209, label %210, label %222

210:                                              ; preds = %208
  %211 = load i64, i64* %9, align 8
  %212 = mul i64 %211, 10
  %213 = load i8*, i8** %8, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = sub nsw i32 %215, 48
  %217 = sext i32 %216 to i64
  %218 = add i64 %212, %217
  store i64 %218, i64* %9, align 8
  br label %219

219:                                              ; preds = %210
  %220 = load i8*, i8** %8, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %8, align 8
  br label %198

222:                                              ; preds = %208
  %223 = load i8*, i8** %8, align 8
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load i64, i64* %9, align 8
  store i64 %228, i64* %4, align 8
  br label %274

229:                                              ; preds = %222
  br label %263

230:                                              ; preds = %192, %187, %184
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %4, align 8
  br label %274

240:                                              ; preds = %233, %230
  store i64 0, i64* %9, align 8
  br label %241

241:                                              ; preds = %258, %240
  %242 = load i8**, i8*** @ir_names, align 8
  %243 = load i64, i64* %9, align 8
  %244 = getelementptr inbounds i8*, i8** %242, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %261

247:                                              ; preds = %241
  %248 = load i8**, i8*** @ir_names, align 8
  %249 = load i64, i64* %9, align 8
  %250 = getelementptr inbounds i8*, i8** %248, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = load i8*, i8** %8, align 8
  %253 = call i32 @strcmp(i8* %251, i8* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %247
  %256 = load i64, i64* %9, align 8
  store i64 %256, i64* %4, align 8
  br label %274

257:                                              ; preds = %247
  br label %258

258:                                              ; preds = %257
  %259 = load i64, i64* %9, align 8
  %260 = add i64 %259, 1
  store i64 %260, i64* %9, align 8
  br label %241

261:                                              ; preds = %241
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262, %229
  br label %264

264:                                              ; preds = %263, %183
  br label %265

265:                                              ; preds = %264, %116
  br label %266

266:                                              ; preds = %265, %86
  br label %267

267:                                              ; preds = %266, %56
  %268 = load i32, i32* @stderr, align 4
  %269 = load i8*, i8** %8, align 8
  %270 = load i32, i32* @lineno, align 4
  %271 = call i32 @fprintf(i32 %268, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %269, i32 %270)
  %272 = call i32 @exit(i32 1) #3
  unreachable

273:                                              ; preds = %3
  store i64 0, i64* %4, align 8
  br label %274

274:                                              ; preds = %273, %255, %237, %227, %169, %110, %80, %50
  %275 = load i64, i64* %4, align 8
  ret i64 %275
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

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
