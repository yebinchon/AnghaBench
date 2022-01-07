; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveDoubleValue.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveDoubleValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveDoubleValue(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %7 = load double, double* %4, align 8
  %8 = call i64 @isnan(double %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 -3, i8* %11, align 16
  store i32 1, i32* %6, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load double, double* %4, align 8
  %14 = call i32 @isfinite(double %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  %17 = load double, double* %4, align 8
  %18 = fcmp olt double %17, 0.000000e+00
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 255, i32 254
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 %21, i8* %22, align 16
  br label %36

23:                                               ; preds = %12
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load double, double* %4, align 8
  %27 = call i32 @snprintf(i8* %25, i32 127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %26)
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call zeroext i8 @strlen(i8* %29)
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 %30, i8* %31, align 16
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %23, %16
  br label %37

37:                                               ; preds = %36, %10
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @rdbWriteRaw(i32* %38, i8* %39, i32 %40)
  ret i32 %41
}

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @isfinite(double) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local zeroext i8 @strlen(i8*) #1

declare dso_local i32 @rdbWriteRaw(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
