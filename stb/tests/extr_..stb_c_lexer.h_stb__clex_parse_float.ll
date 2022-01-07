; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_c_lexer.h_stb__clex_parse_float.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_c_lexer.h_stb__clex_parse_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, i8**)* @stb__clex_parse_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @stb__clex_parse_float(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store i32 10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %38, %2
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sge i32 %18, 48
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sle i32 %23, 57
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load double, double* %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sitofp i32 %27 to double
  %29 = fmul double %26, %28
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %33, 48
  %35 = sitofp i32 %34 to double
  %36 = fadd double %29, %35
  store double %36, double* %6, align 8
  br label %38

37:                                               ; preds = %20, %15
  br label %39

38:                                               ; preds = %25
  br label %15

39:                                               ; preds = %37
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %82

44:                                               ; preds = %39
  store double 0.000000e+00, double* %10, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  store double 1.000000e+00, double* %9, align 8
  br label %47

47:                                               ; preds = %71, %44
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 %55, 57
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load double, double* %10, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sitofp i32 %59 to double
  %61 = fmul double %58, %60
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %3, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 48
  %67 = sitofp i32 %66 to double
  %68 = fadd double %61, %67
  store double %68, double* %10, align 8
  br label %70

69:                                               ; preds = %52, %47
  br label %76

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = sitofp i32 %72 to double
  %74 = load double, double* %9, align 8
  %75 = fmul double %74, %73
  store double %75, double* %9, align 8
  br label %47

76:                                               ; preds = %69
  %77 = load double, double* %10, align 8
  %78 = load double, double* %9, align 8
  %79 = fdiv double %77, %78
  %80 = load double, double* %6, align 8
  %81 = fadd double %80, %79
  store double %81, double* %6, align 8
  br label %82

82:                                               ; preds = %76, %39
  %83 = load i8*, i8** %3, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 101
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %3, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 69
  br label %92

92:                                               ; preds = %87, %82
  %93 = phi i1 [ true, %82 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %154

97:                                               ; preds = %92
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 45
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store double 1.000000e+00, double* %13, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  %106 = load i8*, i8** %3, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 45
  br i1 %109, label %115, label %110

110:                                              ; preds = %97
  %111 = load i8*, i8** %3, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 43
  br i1 %114, label %115, label %118

115:                                              ; preds = %110, %97
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %3, align 8
  br label %118

118:                                              ; preds = %115, %110
  br label %119

119:                                              ; preds = %131, %118
  %120 = load i8*, i8** %3, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sge i32 %122, 48
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8*, i8** %3, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sle i32 %127, 57
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ false, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %140

131:                                              ; preds = %129
  %132 = load i32, i32* %12, align 4
  %133 = mul i32 %132, 10
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %3, align 8
  %136 = load i8, i8* %134, align 1
  %137 = sext i8 %136 to i32
  %138 = sub nsw i32 %137, 48
  %139 = add i32 %133, %138
  store i32 %139, i32* %12, align 4
  br label %119

140:                                              ; preds = %129
  %141 = load i32, i32* %12, align 4
  %142 = call double @stb__clex_pow(i32 10, i32 %141)
  store double %142, double* %13, align 8
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load double, double* %13, align 8
  %147 = load double, double* %6, align 8
  %148 = fdiv double %147, %146
  store double %148, double* %6, align 8
  br label %153

149:                                              ; preds = %140
  %150 = load double, double* %13, align 8
  %151 = load double, double* %6, align 8
  %152 = fmul double %151, %150
  store double %152, double* %6, align 8
  br label %153

153:                                              ; preds = %149, %145
  br label %154

154:                                              ; preds = %153, %92
  %155 = load i8*, i8** %3, align 8
  %156 = load i8**, i8*** %4, align 8
  store i8* %155, i8** %156, align 8
  %157 = load double, double* %6, align 8
  ret double %157
}

declare dso_local double @stb__clex_pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
