; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-boot-timestamps.c_test_acpi_fpdt.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-boot-timestamps.c_test_acpi_fpdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to read ACPI FPDT: %m\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ACPI FPDT: loader start=%s exit=%s duration=%s\00", align 1
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_acpi_fpdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_acpi_fpdt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %2, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %15 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %18 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %21 = call i32 @acpi_get_boot_usec(i64* %6, i64* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %0
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = call i64 (...) @getuid()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ENODATA, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br label %42

42:                                               ; preds = %37, %32, %24
  %43 = phi i1 [ true, %32 ], [ true, %24 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @LOG_DEBUG, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @LOG_ERR, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @log_full_errno(i32 %52, i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ 0, %57 ], [ %59, %58 ]
  store i32 %61, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %78

62:                                               ; preds = %0
  %63 = trunc i64 %12 to i32
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* @USEC_PER_MSEC, align 4
  %66 = call i32 @format_timespan(i8* %14, i32 %63, i64 %64, i32 %65)
  %67 = trunc i64 %16 to i32
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* @USEC_PER_MSEC, align 4
  %70 = call i32 @format_timespan(i8* %17, i32 %67, i64 %68, i32 %69)
  %71 = trunc i64 %19 to i32
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load i32, i32* @USEC_PER_MSEC, align 4
  %76 = call i32 @format_timespan(i8* %20, i32 %71, i64 %74, i32 %75)
  %77 = call i32 @log_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70, i32 %76)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %62, %60
  %79 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @acpi_get_boot_usec(i64*, i64*) #2

declare dso_local i64 @getuid(...) #2

declare dso_local i32 @log_full_errno(i32, i32, i8*) #2

declare dso_local i32 @log_info(i8*, i32, i32, i32) #2

declare dso_local i32 @format_timespan(i8*, i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
