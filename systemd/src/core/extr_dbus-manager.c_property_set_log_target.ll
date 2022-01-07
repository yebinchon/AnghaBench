; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_property_set_log_target.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_property_set_log_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid log target '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @property_set_log_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_set_log_target(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %16, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @assert(i32* %22)
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @assert(i32* %24)
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @sd_bus_message_read(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %17)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %8, align 4
  br label %54

32:                                               ; preds = %7
  %33 = load i8*, i8** %17, align 8
  %34 = call i64 @isempty(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32*, i32** %16, align 8
  %38 = call i32 @manager_restore_original_log_target(i32* %37)
  br label %53

39:                                               ; preds = %32
  %40 = load i8*, i8** %17, align 8
  %41 = call i64 @log_target_from_string(i8* %40)
  store i64 %41, i64* %19, align 8
  %42 = load i64, i64* %19, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %47 = load i8*, i8** %17, align 8
  %48 = call i32 @sd_bus_error_setf(i32* %45, i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %8, align 4
  br label %54

49:                                               ; preds = %39
  %50 = load i32*, i32** %16, align 8
  %51 = load i64, i64* %19, align 8
  %52 = call i32 @manager_override_log_target(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %36
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %44, %30
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @manager_restore_original_log_target(i32*) #1

declare dso_local i64 @log_target_from_string(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @manager_override_log_target(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
