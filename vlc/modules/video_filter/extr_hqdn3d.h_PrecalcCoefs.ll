; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_hqdn3d.h_PrecalcCoefs.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_hqdn3d.h_PrecalcCoefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double)* @PrecalcCoefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrecalcCoefs(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %9 = call double @log(double 2.500000e-01) #3
  %10 = load double, double* %4, align 8
  %11 = fdiv double %10, 2.550000e+02
  %12 = fsub double 1.000000e+00, %11
  %13 = fsub double %12, 1.000000e-05
  %14 = call double @log(double %13) #3
  %15 = fdiv double %9, %14
  store double %15, double* %5, align 8
  store i32 -4080, i32* %8, align 4
  br label %16

16:                                               ; preds = %49, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp sle i32 %17, 4080
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @abs(i32 %20) #4
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 4.080000e+03
  %24 = fsub double 1.000000e+00, %23
  store double %24, double* %6, align 8
  %25 = load double, double* %6, align 8
  %26 = load double, double* %5, align 8
  %27 = call double @pow(double %25, double %26) #3
  %28 = fmul double %27, 6.553600e+04
  %29 = load i32, i32* %8, align 4
  %30 = sitofp i32 %29 to double
  %31 = fmul double %28, %30
  %32 = fdiv double %31, 1.600000e+01
  store double %32, double* %7, align 8
  %33 = load double, double* %7, align 8
  %34 = fcmp olt double %33, 0.000000e+00
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load double, double* %7, align 8
  %37 = fsub double %36, 5.000000e-01
  br label %41

38:                                               ; preds = %19
  %39 = load double, double* %7, align 8
  %40 = fadd double %39, 5.000000e-01
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi double [ %37, %35 ], [ %40, %38 ]
  %43 = fptosi double %42 to i32
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 4096, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %16

52:                                               ; preds = %16
  %53 = load double, double* %4, align 8
  %54 = fcmp une double %53, 0.000000e+00
  %55 = zext i1 %54 to i32
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %57, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log(double) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
