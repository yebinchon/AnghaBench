; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/string/extr_strtod.c_strtod.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/string/extr_strtod.c_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @strtod(i8* %0, i8** %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca x86_fp80, align 16
  %7 = alloca i32, align 4
  %8 = alloca x86_fp80, align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  store x86_fp80 0xK00000000000000000000, x86_fp80* %6, align 16
  store i32 1, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %10, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load x86_fp80, x86_fp80* %6, align 16
  %17 = fptrunc x86_fp80 %16 to double
  store double %17, double* %3, align 8
  br label %237

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 9
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  br label %19

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  br label %51

42:                                               ; preds = %34
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  store i32 -1, i32* %9, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sge i32 %55, 48
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 57
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i1 [ false, %52 ], [ %61, %57 ]
  br i1 %63, label %64, label %78

64:                                               ; preds = %62
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = load x86_fp80, x86_fp80* %6, align 16
  %68 = fmul x86_fp80 %67, 0xK4002A000000000000000
  store x86_fp80 %68, x86_fp80* %6, align 16
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 48
  %73 = sitofp i32 %72 to x86_fp80
  %74 = load x86_fp80, x86_fp80* %6, align 16
  %75 = fadd x86_fp80 %74, %73
  store x86_fp80 %75, x86_fp80* %6, align 16
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  br label %52

78:                                               ; preds = %62
  %79 = load i8*, i8** %4, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 46
  br i1 %82, label %83, label %115

83:                                               ; preds = %78
  store x86_fp80 0xK3FFBCCCCCCCCCCCCCCCD, x86_fp80* %8, align 16
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %4, align 8
  br label %86

86:                                               ; preds = %98, %83
  %87 = load i8*, i8** %4, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sge i32 %89, 48
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i8*, i8** %4, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sle i32 %94, 57
  br label %96

96:                                               ; preds = %91, %86
  %97 = phi i1 [ false, %86 ], [ %95, %91 ]
  br i1 %97, label %98, label %114

98:                                               ; preds = %96
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %99, 2
  store i32 %100, i32* %12, align 4
  %101 = load x86_fp80, x86_fp80* %8, align 16
  %102 = load i8*, i8** %4, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = sub nsw i32 %104, 48
  %106 = sitofp i32 %105 to x86_fp80
  %107 = fmul x86_fp80 %101, %106
  %108 = load x86_fp80, x86_fp80* %6, align 16
  %109 = fadd x86_fp80 %108, %107
  store x86_fp80 %109, x86_fp80* %6, align 16
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %4, align 8
  %112 = load x86_fp80, x86_fp80* %8, align 16
  %113 = fmul x86_fp80 %112, 0xK3FFBCCCCCCCCCCCCCCCD
  store x86_fp80 %113, x86_fp80* %8, align 16
  br label %86

114:                                              ; preds = %96
  br label %115

115:                                              ; preds = %114, %78
  %116 = load i32, i32* %12, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i8**, i8*** %5, align 8
  %120 = icmp ne i8** %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i8*, i8** %4, align 8
  %123 = load i8**, i8*** %5, align 8
  store i8* %122, i8** %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  store double 0.000000e+00, double* %3, align 8
  br label %237

125:                                              ; preds = %115
  %126 = load i8*, i8** %4, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 101
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** %4, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 69
  br i1 %134, label %135, label %198

135:                                              ; preds = %130, %125
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %4, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 43
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %4, align 8
  br label %154

145:                                              ; preds = %135
  %146 = load i8*, i8** %4, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 45
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i8*, i8** %4, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %4, align 8
  store i32 -1, i32* %10, align 4
  br label %153

153:                                              ; preds = %150, %145
  br label %154

154:                                              ; preds = %153, %142
  %155 = load i8*, i8** %4, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp slt i32 %157, 48
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load i8*, i8** %4, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp sgt i32 %162, 57
  br i1 %163, label %164, label %173

164:                                              ; preds = %159, %154
  %165 = load i8**, i8*** %5, align 8
  %166 = icmp ne i8** %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i8*, i8** %4, align 8
  %169 = load i8**, i8*** %5, align 8
  store i8* %168, i8** %169, align 8
  br label %170

170:                                              ; preds = %167, %164
  %171 = load x86_fp80, x86_fp80* %6, align 16
  %172 = fptrunc x86_fp80 %171 to double
  store double %172, double* %3, align 8
  br label %237

173:                                              ; preds = %159
  br label %174

174:                                              ; preds = %186, %173
  %175 = load i8*, i8** %4, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp sge i32 %177, 48
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load i8*, i8** %4, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp sle i32 %182, 57
  br label %184

184:                                              ; preds = %179, %174
  %185 = phi i1 [ false, %174 ], [ %183, %179 ]
  br i1 %185, label %186, label %197

186:                                              ; preds = %184
  %187 = load i32, i32* %7, align 4
  %188 = mul nsw i32 %187, 10
  store i32 %188, i32* %7, align 4
  %189 = load i8*, i8** %4, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = sub nsw i32 %191, 48
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %7, align 4
  %195 = load i8*, i8** %4, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %4, align 8
  br label %174

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %197, %130
  %199 = load i32, i32* %10, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  store i32 1, i32* %11, align 4
  br label %202

202:                                              ; preds = %209, %201
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load x86_fp80, x86_fp80* %6, align 16
  %208 = fmul x86_fp80 %207, 0xK3FFBCCCCCCCCCCCCCCCD
  store x86_fp80 %208, x86_fp80* %6, align 16
  br label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %202

212:                                              ; preds = %202
  br label %225

213:                                              ; preds = %198
  store i32 1, i32* %11, align 4
  br label %214

214:                                              ; preds = %221, %213
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp sle i32 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %214
  %219 = load x86_fp80, x86_fp80* %6, align 16
  %220 = fmul x86_fp80 %219, 0xK4002A000000000000000
  store x86_fp80 %220, x86_fp80* %6, align 16
  br label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %11, align 4
  br label %214

224:                                              ; preds = %214
  br label %225

225:                                              ; preds = %224, %212
  %226 = load i8**, i8*** %5, align 8
  %227 = icmp ne i8** %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i8*, i8** %4, align 8
  %230 = load i8**, i8*** %5, align 8
  store i8* %229, i8** %230, align 8
  br label %231

231:                                              ; preds = %228, %225
  %232 = load x86_fp80, x86_fp80* %6, align 16
  %233 = load i32, i32* %9, align 4
  %234 = sitofp i32 %233 to x86_fp80
  %235 = fmul x86_fp80 %232, %234
  %236 = fptrunc x86_fp80 %235 to double
  store double %236, double* %3, align 8
  br label %237

237:                                              ; preds = %231, %170, %124, %15
  %238 = load double, double* %3, align 8
  ret double %238
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
