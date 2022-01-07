; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_set_transient_exit_status.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_set_transient_exit_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Exit status must be in range 0\E2\80\A6255 or negative.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s=%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i32, i32*)* @bus_set_transient_exit_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_set_transient_exit_status(i32* %0, i8* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @sd_bus_message_read(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %14)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %7, align 4
  br label %61

24:                                               ; preds = %6
  %25 = load i32, i32* %14, align 4
  %26 = icmp sgt i32 %25, 255
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %30 = call i32 @sd_bus_error_setf(i32* %28, i32 %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %7, align 4
  br label %61

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @UNIT_WRITE_FLAGS_NOOP(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %14, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ -1, %38 ], [ %40, %39 ]
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 (i32*, i32, i8*, i8*, i8*, ...) @unit_write_settingf(i32* %47, i32 %48, i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %59

52:                                               ; preds = %41
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 (i32*, i32, i8*, i8*, i8*, ...) @unit_write_settingf(i32* %53, i32 %54, i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %46
  br label %60

60:                                               ; preds = %59, %31
  store i32 1, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %27, %22
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*) #1

declare dso_local i32 @UNIT_WRITE_FLAGS_NOOP(i32) #1

declare dso_local i32 @unit_write_settingf(i32*, i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
