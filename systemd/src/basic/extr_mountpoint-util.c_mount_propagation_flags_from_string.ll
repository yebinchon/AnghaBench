; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_mountpoint-util.c_mount_propagation_flags_from_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_mountpoint-util.c_mount_propagation_flags_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@MS_SHARED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@MS_SLAVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@MS_PRIVATE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mount_propagation_flags_from_string(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @isempty(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64*, i64** %5, align 8
  store i64 0, i64* %10, align 8
  br label %38

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @streq(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i64, i64* @MS_SHARED, align 8
  %17 = load i64*, i64** %5, align 8
  store i64 %16, i64* %17, align 8
  br label %37

18:                                               ; preds = %11
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @streq(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* @MS_SLAVE, align 8
  %24 = load i64*, i64** %5, align 8
  store i64 %23, i64* %24, align 8
  br label %36

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @streq(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* @MS_PRIVATE, align 8
  %31 = load i64*, i64** %5, align 8
  store i64 %30, i64* %31, align 8
  br label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37, %9
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
