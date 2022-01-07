; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_fmtdatetime.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_fmtdatetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Invalid Date\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%sT%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, double, double)* @fmtdatetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fmtdatetime(i8* %0, double %1, double %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca [20 x i8], align 16
  store i8* %0, i8** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %10 = load double, double* %6, align 8
  %11 = call i32 @isfinite(double %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %27

14:                                               ; preds = %3
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %16 = load double, double* %6, align 8
  %17 = call i32 @fmtdate(i8* %15, double %16)
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %19 = load double, double* %6, align 8
  %20 = load double, double* %7, align 8
  %21 = call i32 @fmttime(i8* %18, double %19, double %20)
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %25 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i8*, i8** %4, align 8
  ret i8* %28
}

declare dso_local i32 @isfinite(double) #1

declare dso_local i32 @fmtdate(i8*, double) #1

declare dso_local i32 @fmttime(i8*, double, double) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
