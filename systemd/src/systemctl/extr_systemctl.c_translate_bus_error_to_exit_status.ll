; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_translate_bus_error_to_exit_status.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_translate_bus_error_to_exit_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_BUS_ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@BUS_ERROR_ONLY_BY_DEPENDENCY = common dso_local global i32 0, align 4
@BUS_ERROR_NO_ISOLATION = common dso_local global i32 0, align 4
@BUS_ERROR_TRANSACTION_IS_DESTRUCTIVE = common dso_local global i32 0, align 4
@EXIT_NOPERMISSION = common dso_local global i32 0, align 4
@BUS_ERROR_NO_SUCH_UNIT = common dso_local global i32 0, align 4
@EXIT_NOTINSTALLED = common dso_local global i32 0, align 4
@BUS_ERROR_JOB_TYPE_NOT_APPLICABLE = common dso_local global i32 0, align 4
@SD_BUS_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EXIT_NOTIMPLEMENTED = common dso_local global i32 0, align 4
@BUS_ERROR_LOAD_FAILED = common dso_local global i32 0, align 4
@EXIT_NOTCONFIGURED = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @translate_bus_error_to_exit_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_bus_error_to_exit_status(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @assert(i32* %6)
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @sd_bus_error_is_set(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %3, align 4
  br label %68

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @SD_BUS_ERROR_ACCESS_DENIED, align 4
  %16 = call i64 @sd_bus_error_has_name(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @BUS_ERROR_ONLY_BY_DEPENDENCY, align 4
  %21 = call i64 @sd_bus_error_has_name(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @BUS_ERROR_NO_ISOLATION, align 4
  %26 = call i64 @sd_bus_error_has_name(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @BUS_ERROR_TRANSACTION_IS_DESTRUCTIVE, align 4
  %31 = call i64 @sd_bus_error_has_name(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %23, %18, %13
  %34 = load i32, i32* @EXIT_NOPERMISSION, align 4
  store i32 %34, i32* %3, align 4
  br label %68

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @BUS_ERROR_NO_SUCH_UNIT, align 4
  %38 = call i64 @sd_bus_error_has_name(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EXIT_NOTINSTALLED, align 4
  store i32 %41, i32* %3, align 4
  br label %68

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @BUS_ERROR_JOB_TYPE_NOT_APPLICABLE, align 4
  %45 = call i64 @sd_bus_error_has_name(i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %50 = call i64 @sd_bus_error_has_name(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @EXIT_NOTIMPLEMENTED, align 4
  store i32 %53, i32* %3, align 4
  br label %68

54:                                               ; preds = %47
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @BUS_ERROR_LOAD_FAILED, align 4
  %57 = call i64 @sd_bus_error_has_name(i32* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @EXIT_NOTCONFIGURED, align 4
  store i32 %60, i32* %3, align 4
  br label %68

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %64, %59, %52, %40, %33, %11
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_error_is_set(i32*) #1

declare dso_local i64 @sd_bus_error_has_name(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
