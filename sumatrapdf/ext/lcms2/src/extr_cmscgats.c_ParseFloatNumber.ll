; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscgats.c_ParseFloatNumber.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscgats.c_ParseFloatNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*)* @ParseFloatNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @ParseFloatNumber(i8* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store double 0.000000e+00, double* %4, align 8
  store i32 1, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %213

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 43
  br i1 %23, label %24, label %33

24:                                               ; preds = %19, %14
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 -1, i32 1
  store i32 %30, i32* %5, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %24, %19
  br label %34

34:                                               ; preds = %62, %33
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call i64 @isdigit(i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %39, %34
  %46 = phi i1 [ false, %34 ], [ %44, %39 ]
  br i1 %46, label %47, label %63

47:                                               ; preds = %45
  %48 = load double, double* %4, align 8
  %49 = fmul double %48, 1.000000e+01
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = sub nsw i32 %52, 48
  %54 = sitofp i32 %53 to double
  %55 = fadd double %49, %54
  store double %55, double* %4, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  br label %62

62:                                               ; preds = %59, %47
  br label %34

63:                                               ; preds = %45
  %64 = load i8*, i8** %3, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 46
  br i1 %67, label %68, label %114

68:                                               ; preds = %63
  store double 0.000000e+00, double* %6, align 8
  store i32 0, i32* %7, align 4
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %3, align 8
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %106, %75
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i8*, i8** %3, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = call i64 @isdigit(i32 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi i1 [ false, %76 ], [ %86, %81 ]
  br i1 %88, label %89, label %107

89:                                               ; preds = %87
  %90 = load double, double* %6, align 8
  %91 = fmul double %90, 1.000000e+01
  %92 = load i8*, i8** %3, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = sub nsw i32 %94, 48
  %96 = sitofp i32 %95 to double
  %97 = fadd double %91, %96
  store double %97, double* %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  %100 = load i8*, i8** %3, align 8
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %89
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  br label %106

106:                                              ; preds = %103, %89
  br label %76

107:                                              ; preds = %87
  %108 = load double, double* %4, align 8
  %109 = load double, double* %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call double @xpow10(i32 %110)
  %112 = fdiv double %109, %111
  %113 = fadd double %108, %112
  store double %113, double* %4, align 8
  br label %114

114:                                              ; preds = %107, %63
  %115 = load i8*, i8** %3, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %208

119:                                              ; preds = %114
  %120 = load i8*, i8** %3, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call signext i8 @toupper(i8 signext %121)
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 69
  br i1 %124, label %125, label %208

125:                                              ; preds = %119
  %126 = load i8*, i8** %3, align 8
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %3, align 8
  br label %132

132:                                              ; preds = %129, %125
  store i32 1, i32* %9, align 4
  %133 = load i8*, i8** %3, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 45
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  store i32 -1, i32* %9, align 4
  %138 = load i8*, i8** %3, align 8
  %139 = load i8, i8* %138, align 1
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i8*, i8** %3, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %3, align 8
  br label %144

144:                                              ; preds = %141, %137
  br label %159

145:                                              ; preds = %132
  %146 = load i8*, i8** %3, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 43
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  store i32 1, i32* %9, align 4
  %151 = load i8*, i8** %3, align 8
  %152 = load i8, i8* %151, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i8*, i8** %3, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %3, align 8
  br label %157

157:                                              ; preds = %154, %150
  br label %158

158:                                              ; preds = %157, %145
  br label %159

159:                                              ; preds = %158, %144
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %199, %159
  %161 = load i8*, i8** %3, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i8*, i8** %3, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = call i64 @isdigit(i32 %168)
  %170 = icmp ne i64 %169, 0
  br label %171

171:                                              ; preds = %165, %160
  %172 = phi i1 [ false, %160 ], [ %170, %165 ]
  br i1 %172, label %173, label %200

173:                                              ; preds = %171
  %174 = load i8*, i8** %3, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = sub nsw i32 %176, 48
  %178 = sitofp i32 %177 to double
  store double %178, double* %10, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sitofp i32 %179 to double
  %181 = fmul double %180, 1.000000e+01
  %182 = load double, double* %10, align 8
  %183 = fadd double %181, %182
  %184 = fcmp olt double %183, 0x41DFFFFFFFC00000
  br i1 %184, label %185, label %192

185:                                              ; preds = %173
  %186 = load i32, i32* %8, align 4
  %187 = mul nsw i32 %186, 10
  %188 = sitofp i32 %187 to double
  %189 = load double, double* %10, align 8
  %190 = fadd double %188, %189
  %191 = fptosi double %190 to i32
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %185, %173
  %193 = load i8*, i8** %3, align 8
  %194 = load i8, i8* %193, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %3, align 8
  br label %199

199:                                              ; preds = %196, %192
  br label %160

200:                                              ; preds = %171
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %8, align 4
  %203 = mul nsw i32 %201, %202
  store i32 %203, i32* %8, align 4
  %204 = load double, double* %4, align 8
  %205 = load i32, i32* %8, align 4
  %206 = call double @xpow10(i32 %205)
  %207 = fmul double %204, %206
  store double %207, double* %4, align 8
  br label %208

208:                                              ; preds = %200, %119, %114
  %209 = load i32, i32* %5, align 4
  %210 = sitofp i32 %209 to double
  %211 = load double, double* %4, align 8
  %212 = fmul double %210, %211
  store double %212, double* %2, align 8
  br label %213

213:                                              ; preds = %208, %13
  %214 = load double, double* %2, align 8
  ret double %214
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local double @xpow10(i32) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
