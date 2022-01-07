; ModuleID = '/home/carl/AnghaBench/systemd/src/hostname/extr_hostnamed.c_fallback_chassis.c'
source_filename = "/home/carl/AnghaBench/systemd/src/hostname/extr_hostnamed.c_fallback_chassis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"vm\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"/sys/class/dmi/id/chassis_type\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"desktop\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"laptop\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"handset\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"tablet\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"convertible\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"/sys/firmware/acpi/pm_profile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @fallback_chassis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fallback_chassis() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @detect_virtualization()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @VIRTUALIZATION_IS_VM(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %58

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @VIRTUALIZATION_IS_CONTAINER(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %58

16:                                               ; preds = %11
  %17 = call i32 @read_one_line_file(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %2)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %38

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @safe_atou(i8* %22, i32* %3)
  store i32 %23, i32* %5, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %38

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  switch i32 %30, label %37 [
    i32 3, label %31
    i32 4, label %31
    i32 6, label %31
    i32 7, label %31
    i32 8, label %32
    i32 9, label %32
    i32 10, label %32
    i32 14, label %32
    i32 11, label %33
    i32 17, label %34
    i32 28, label %34
    i32 29, label %34
    i32 30, label %35
    i32 31, label %36
    i32 32, label %36
  ]

31:                                               ; preds = %29, %29, %29, %29
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %58

32:                                               ; preds = %29, %29, %29, %29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %58

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %58

34:                                               ; preds = %29, %29, %29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %58

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %58

36:                                               ; preds = %29, %29
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  br label %58

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %28, %20
  %39 = call i32 @read_one_line_file(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8** %2)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* null, i8** %1, align 8
  br label %58

43:                                               ; preds = %38
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @safe_atou(i8* %44, i32* %3)
  store i32 %45, i32* %5, align 4
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i8* null, i8** %1, align 8
  br label %58

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  switch i32 %52, label %57 [
    i32 1, label %53
    i32 3, label %53
    i32 6, label %53
    i32 2, label %54
    i32 4, label %55
    i32 5, label %55
    i32 7, label %55
    i32 8, label %56
  ]

53:                                               ; preds = %51, %51, %51
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %58

54:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %58

55:                                               ; preds = %51, %51, %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %58

56:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %58

57:                                               ; preds = %51
  store i8* null, i8** %1, align 8
  br label %58

58:                                               ; preds = %57, %56, %55, %54, %53, %50, %42, %36, %35, %34, %33, %32, %31, %15, %10
  %59 = load i8*, i8** %1, align 8
  ret i8* %59
}

declare dso_local i32 @detect_virtualization(...) #1

declare dso_local i64 @VIRTUALIZATION_IS_VM(i32) #1

declare dso_local i64 @VIRTUALIZATION_IS_CONTAINER(i32) #1

declare dso_local i32 @read_one_line_file(i8*, i8**) #1

declare dso_local i32 @safe_atou(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
