; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdio.c_TimestampToHumanReadable.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdio.c_TimestampToHumanReadable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TimestampToHumanReadable.str = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [36 x i8] c"%04d.%02d.%02d %02d:%02d:%02d (UTC)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @TimestampToHumanReadable(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [6 x i64], align 16
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  store i64 %7, i64* %3, align 8
  store i64 10000000000, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  br label %20

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = udiv i64 %17, %18
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i64 [ %15, %14 ], [ %19, %16 ]
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 %23
  store i64 %21, i64* %24, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = urem i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = udiv i64 %28, 100
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %8

33:                                               ; preds = %8
  %34 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 0
  %35 = load i64, i64* %34, align 16
  %36 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 2
  %39 = load i64, i64* %38, align 16
  %40 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 3
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 4
  %43 = load i64, i64* %42, align 16
  %44 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 5
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @static_sprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @TimestampToHumanReadable.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %37, i64 %39, i64 %41, i64 %43, i64 %45)
  ret i8* getelementptr inbounds ([64 x i8], [64 x i8]* @TimestampToHumanReadable.str, i64 0, i64 0)
}

declare dso_local i32 @static_sprintf(i8*, i8*, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
