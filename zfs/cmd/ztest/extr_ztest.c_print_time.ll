; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_print_time.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_print_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NANOSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%llud%02lluh%02llum%02llus\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%lluh%02llum%02llus\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%llum%02llus\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%llus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_time(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NANOSEC, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 60
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 60
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sdiv i32 %16, 24
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 60
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 60
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 24
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38, i32 %39)
  br label %64

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  br label %63

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56)
  br label %62

58:                                               ; preds = %50
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %34
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
