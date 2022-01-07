; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/string/extr_strtold.c__strtold.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/string/extr_strtold.c__strtold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@powten = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @_strtold(i8* %0, i8** %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store double 0.000000e+00, double* %6, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %10, align 4
  br label %14

14:                                               ; preds = %26, %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @isspace(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  br label %14

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  br label %46

37:                                               ; preds = %29
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  store i32 -1, i32* %9, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %34
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 %55, 57
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ false, %47 ], [ %56, %52 ]
  br i1 %58, label %59, label %75

59:                                               ; preds = %57
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load double, double* %6, align 8
  %63 = fpext double %62 to x86_fp80
  %64 = fmul x86_fp80 %63, 0xK4002A000000000000000
  %65 = fptrunc x86_fp80 %64 to double
  store double %65, double* %6, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  %70 = sitofp i32 %69 to double
  %71 = load double, double* %6, align 8
  %72 = fadd double %71, %70
  store double %72, double* %6, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %4, align 8
  br label %47

75:                                               ; preds = %57
  %76 = load i8*, i8** %4, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 46
  br i1 %79, label %80, label %114

80:                                               ; preds = %75
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %4, align 8
  br label %83

83:                                               ; preds = %95, %80
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sge i32 %86, 48
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** %4, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sle i32 %91, 57
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi i1 [ false, %83 ], [ %92, %88 ]
  br i1 %94, label %95, label %113

95:                                               ; preds = %93
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, 2
  store i32 %97, i32* %11, align 4
  %98 = load double, double* %6, align 8
  %99 = fpext double %98 to x86_fp80
  %100 = fmul x86_fp80 %99, 0xK4002A000000000000000
  %101 = fptrunc x86_fp80 %100 to double
  store double %101, double* %6, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = sub nsw i32 %104, 48
  %106 = sitofp i32 %105 to double
  %107 = load double, double* %6, align 8
  %108 = fadd double %107, %106
  store double %108, double* %6, align 8
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %83

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113, %75
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i8**, i8*** %5, align 8
  %119 = icmp ne i8** %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i8*, i8** %4, align 8
  %122 = load i8**, i8*** %5, align 8
  store i8* %121, i8** %122, align 8
  br label %123

123:                                              ; preds = %120, %117
  store x86_fp80 0xK00000000000000000000, x86_fp80* %3, align 16
  br label %259

124:                                              ; preds = %114
  %125 = load i8*, i8** %4, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 101
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load i8*, i8** %4, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 69
  br i1 %133, label %134, label %178

134:                                              ; preds = %129, %124
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %4, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 43
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %4, align 8
  br label %153

144:                                              ; preds = %134
  %145 = load i8*, i8** %4, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 45
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %4, align 8
  store i32 -1, i32* %10, align 4
  br label %152

152:                                              ; preds = %149, %144
  br label %153

153:                                              ; preds = %152, %141
  br label %154

154:                                              ; preds = %166, %153
  %155 = load i8*, i8** %4, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp sge i32 %157, 48
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i8*, i8** %4, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp sle i32 %162, 57
  br label %164

164:                                              ; preds = %159, %154
  %165 = phi i1 [ false, %154 ], [ %163, %159 ]
  br i1 %165, label %166, label %177

166:                                              ; preds = %164
  %167 = load i32, i32* %7, align 4
  %168 = mul nsw i32 %167, 10
  store i32 %168, i32* %7, align 4
  %169 = load i8*, i8** %4, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = sub nsw i32 %171, 48
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %7, align 4
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %4, align 8
  br label %154

177:                                              ; preds = %164
  br label %178

178:                                              ; preds = %177, %129
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i32, i32* %10, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %7, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %181, %178
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %8, align 4
  %189 = sub nsw i32 %187, %188
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp slt i32 %190, -4096
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = load double, double* %6, align 8
  %194 = fpext double %193 to x86_fp80
  %195 = fmul x86_fp80 %194, 0xK256BCEAE534F34362DE4
  %196 = fptrunc x86_fp80 %195 to double
  store double %196, double* %6, align 8
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 2048
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %192, %186
  %200 = load i32, i32* %7, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load i32, i32* %7, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %10, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %202, %199
  %208 = load i32, i32* %7, align 4
  %209 = icmp sge i32 %208, 8192
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 8191, i32* %7, align 4
  br label %211

211:                                              ; preds = %210, %207
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %247

214:                                              ; preds = %211
  store double 1.000000e+00, double* %13, align 8
  store i32 0, i32* %12, align 4
  br label %215

215:                                              ; preds = %230, %214
  %216 = load i32, i32* %7, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %235

218:                                              ; preds = %215
  %219 = load i32, i32* %7, align 4
  %220 = and i32 %219, 1
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %218
  %223 = load double*, double** @powten, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, double* %223, i64 %225
  %227 = load double, double* %226, align 8
  %228 = load double, double* %13, align 8
  %229 = fmul double %228, %227
  store double %229, double* %13, align 8
  br label %230

230:                                              ; preds = %222, %218
  %231 = load i32, i32* %7, align 4
  %232 = ashr i32 %231, 1
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  br label %215

235:                                              ; preds = %215
  %236 = load i32, i32* %10, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load double, double* %13, align 8
  %240 = load double, double* %6, align 8
  %241 = fmul double %240, %239
  store double %241, double* %6, align 8
  br label %246

242:                                              ; preds = %235
  %243 = load double, double* %13, align 8
  %244 = load double, double* %6, align 8
  %245 = fdiv double %244, %243
  store double %245, double* %6, align 8
  br label %246

246:                                              ; preds = %242, %238
  br label %247

247:                                              ; preds = %246, %211
  %248 = load i8**, i8*** %5, align 8
  %249 = icmp ne i8** %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i8*, i8** %4, align 8
  %252 = load i8**, i8*** %5, align 8
  store i8* %251, i8** %252, align 8
  br label %253

253:                                              ; preds = %250, %247
  %254 = load double, double* %6, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sitofp i32 %255 to double
  %257 = fmul double %254, %256
  %258 = fpext double %257 to x86_fp80
  store x86_fp80 %258, x86_fp80* %3, align 16
  br label %259

259:                                              ; preds = %253, %123
  %260 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %260
}

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
