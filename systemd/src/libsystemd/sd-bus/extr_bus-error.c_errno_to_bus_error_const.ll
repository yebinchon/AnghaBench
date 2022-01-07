; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-error.c_errno_to_bus_error_const.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-error.c_errno_to_bus_error_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUS_ERROR_OOM = common dso_local global i32 0, align 4
@SD_BUS_ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Access denied\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@SD_BUS_ERROR_UNIX_PROCESS_ID_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"No such process\00", align 1
@SD_BUS_ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"File not found\00", align 1
@SD_BUS_ERROR_FILE_EXISTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"File exists\00", align 1
@SD_BUS_ERROR_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Timed out\00", align 1
@SD_BUS_ERROR_IO_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Input/output error\00", align 1
@SD_BUS_ERROR_DISCONNECTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"Disconnected\00", align 1
@SD_BUS_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Not supported\00", align 1
@SD_BUS_ERROR_BAD_ADDRESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Address not available\00", align 1
@SD_BUS_ERROR_LIMITS_EXCEEDED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"Limits exceeded\00", align 1
@SD_BUS_ERROR_ADDRESS_IN_USE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"Address in use\00", align 1
@SD_BUS_ERROR_INCONSISTENT_MESSAGE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"Inconsistent message\00", align 1
@SD_BUS_ERROR_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @errno_to_bus_error_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @errno_to_bus_error_const(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %52 [
    i32 133, label %11
    i32 131, label %13
    i32 145, label %13
    i32 138, label %16
    i32 130, label %19
    i32 134, label %22
    i32 139, label %25
    i32 128, label %28
    i32 129, label %28
    i32 137, label %31
    i32 136, label %34
    i32 141, label %34
    i32 140, label %34
    i32 132, label %37
    i32 143, label %40
    i32 135, label %43
    i32 144, label %46
    i32 142, label %49
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* @BUS_ERROR_OOM, align 4
  store i32 %12, i32* %2, align 4
  br label %54

13:                                               ; preds = %9, %9
  %14 = load i32, i32* @SD_BUS_ERROR_ACCESS_DENIED, align 4
  %15 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %9
  %17 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %18 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %9
  %20 = load i32, i32* @SD_BUS_ERROR_UNIX_PROCESS_ID_UNKNOWN, align 4
  %21 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %9
  %23 = load i32, i32* @SD_BUS_ERROR_FILE_NOT_FOUND, align 4
  %24 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %9
  %26 = load i32, i32* @SD_BUS_ERROR_FILE_EXISTS, align 4
  %27 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %9, %9
  %29 = load i32, i32* @SD_BUS_ERROR_TIMEOUT, align 4
  %30 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %54

31:                                               ; preds = %9
  %32 = load i32, i32* @SD_BUS_ERROR_IO_ERROR, align 4
  %33 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %33, i32* %2, align 4
  br label %54

34:                                               ; preds = %9, %9, %9
  %35 = load i32, i32* @SD_BUS_ERROR_DISCONNECTED, align 4
  %36 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 %36, i32* %2, align 4
  br label %54

37:                                               ; preds = %9
  %38 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %39 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %9
  %41 = load i32, i32* @SD_BUS_ERROR_BAD_ADDRESS, align 4
  %42 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  store i32 %42, i32* %2, align 4
  br label %54

43:                                               ; preds = %9
  %44 = load i32, i32* @SD_BUS_ERROR_LIMITS_EXCEEDED, align 4
  %45 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %9
  %47 = load i32, i32* @SD_BUS_ERROR_ADDRESS_IN_USE, align 4
  %48 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  store i32 %48, i32* %2, align 4
  br label %54

49:                                               ; preds = %9
  %50 = load i32, i32* @SD_BUS_ERROR_INCONSISTENT_MESSAGE, align 4
  %51 = call i32 @SD_BUS_ERROR_MAKE_CONST(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %9
  %53 = load i32, i32* @SD_BUS_ERROR_NULL, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @SD_BUS_ERROR_MAKE_CONST(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
