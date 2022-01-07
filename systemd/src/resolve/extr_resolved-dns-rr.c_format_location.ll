; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_format_location.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_format_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"%d %d %.3f %c %d %d %.3f %c %.2fm %.2fm %.2fm %.2fm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i32, i32, i32)* @format_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_location(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp uge i32 %23, -2147483648
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 78, i32 83
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %15, align 1
  %28 = load i32, i32* %9, align 4
  %29 = icmp uge i32 %28, -2147483648
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 69, i32 87
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %16, align 1
  %33 = load i32, i32* %8, align 4
  %34 = icmp uge i32 %33, -2147483648
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load i32, i32* %8, align 4
  %37 = sub i32 %36, -2147483648
  br label %41

38:                                               ; preds = %6
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 -2147483648, %39
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %37, %35 ], [ %40, %38 ]
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp uge i32 %43, -2147483648
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %46, -2147483648
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = sub i32 -2147483648, %49
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %47, %45 ], [ %50, %48 ]
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp uge i32 %53, 10000000
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = sub i32 %56, 10000000
  %58 = uitofp i32 %57 to double
  br label %64

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = sub i32 10000000, %60
  %62 = uitofp i32 %61 to double
  %63 = fneg double %62
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi double [ %58, %55 ], [ %63, %59 ]
  store double %65, double* %19, align 8
  %66 = load i32, i32* %11, align 4
  %67 = ashr i32 %66, 4
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, 15
  %70 = sitofp i32 %69 to double
  %71 = call i32 @exp10(double %70)
  %72 = mul nsw i32 %67, %71
  %73 = sitofp i32 %72 to double
  store double %73, double* %20, align 8
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %74, 4
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, 15
  %78 = sitofp i32 %77 to double
  %79 = call i32 @exp10(double %78)
  %80 = mul nsw i32 %75, %79
  %81 = sitofp i32 %80 to double
  store double %81, double* %21, align 8
  %82 = load i32, i32* %13, align 4
  %83 = ashr i32 %82, 4
  %84 = load i32, i32* %13, align 4
  %85 = and i32 %84, 15
  %86 = sitofp i32 %85 to double
  %87 = call i32 @exp10(double %86)
  %88 = mul nsw i32 %83, %87
  %89 = sitofp i32 %88 to double
  store double %89, double* %22, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sdiv i32 %90, 60000
  %92 = sdiv i32 %91, 60
  %93 = load i32, i32* %17, align 4
  %94 = sdiv i32 %93, 60000
  %95 = srem i32 %94, 60
  %96 = load i32, i32* %17, align 4
  %97 = srem i32 %96, 60000
  %98 = sitofp i32 %97 to double
  %99 = fdiv double %98, 1.000000e+03
  %100 = fptosi double %99 to i32
  %101 = load i8, i8* %15, align 1
  %102 = load i32, i32* %18, align 4
  %103 = sdiv i32 %102, 60000
  %104 = sdiv i32 %103, 60
  %105 = load i32, i32* %18, align 4
  %106 = sdiv i32 %105, 60000
  %107 = srem i32 %106, 60
  %108 = load i32, i32* %18, align 4
  %109 = srem i32 %108, 60000
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %110, 1.000000e+03
  %112 = fptosi double %111 to i32
  %113 = load i8, i8* %16, align 1
  %114 = load double, double* %19, align 8
  %115 = fdiv double %114, 1.000000e+02
  %116 = load double, double* %20, align 8
  %117 = fdiv double %116, 1.000000e+02
  %118 = load double, double* %21, align 8
  %119 = fdiv double %118, 1.000000e+02
  %120 = load double, double* %22, align 8
  %121 = fdiv double %120, 1.000000e+02
  %122 = call i64 @asprintf(i8** %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %95, i32 %100, i8 signext %101, i32 %104, i32 %107, i32 %112, i8 signext %113, double %115, double %117, double %119, double %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %64
  store i8* null, i8** %7, align 8
  br label %127

125:                                              ; preds = %64
  %126 = load i8*, i8** %14, align 8
  store i8* %126, i8** %7, align 8
  br label %127

127:                                              ; preds = %125, %124
  %128 = load i8*, i8** %7, align 8
  ret i8* %128
}

declare dso_local i32 @exp10(double) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i32, i32, i8 signext, i32, i32, i32, i8 signext, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
