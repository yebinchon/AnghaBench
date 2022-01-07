; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_redshift.c_print_period.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_redshift.c_print_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Period: %s\0A\00", align 1
@period_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Period: %s (%.2f%% day)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, double)* @print_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_period(i32 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %26 [
    i32 129, label %6
    i32 130, label %6
    i32 131, label %6
    i32 128, label %15
  ]

6:                                                ; preds = %2, %2, %2
  %7 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** @period_names, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @gettext(i32 %12)
  %14 = call i32 (i8*, i8*, ...) @printf(i8* %7, i8* %13)
  br label %26

15:                                               ; preds = %2
  %16 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** @period_names, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @gettext(i32 %21)
  %23 = load double, double* %4, align 8
  %24 = fmul double %23, 1.000000e+02
  %25 = call i32 (i8*, i8*, ...) @printf(i8* %16, i8* %22, double %24)
  br label %26

26:                                               ; preds = %2, %15, %6
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @gettext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
