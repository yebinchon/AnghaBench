; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjbench.c_sigfig.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjbench.c_sigfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%%.0f\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%%.%df\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sigfig(double %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  %10 = alloca i32, align 4
  store double %0, double* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load double, double* %5, align 8
  %13 = call i32 @fabs(double %12)
  %14 = call i32 @log10(i32 %13)
  %15 = call i64 @ceil(i32 %14)
  %16 = trunc i64 %15 to i32
  %17 = sub nsw i32 %11, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %22 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %27

23:                                               ; preds = %4
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %24, i32 80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %31 = load double, double* %5, align 8
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 %29, i8* %30, double %31)
  %33 = load i8*, i8** %7, align 8
  ret i8* %33
}

declare dso_local i64 @ceil(i32) #1

declare dso_local i32 @log10(i32) #1

declare dso_local i32 @fabs(double) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
