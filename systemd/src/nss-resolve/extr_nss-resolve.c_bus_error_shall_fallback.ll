; ModuleID = '/home/carl/AnghaBench/systemd/src/nss-resolve/extr_nss-resolve.c_bus_error_shall_fallback.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nss-resolve/extr_nss-resolve.c_bus_error_shall_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_BUS_ERROR_SERVICE_UNKNOWN = common dso_local global i32 0, align 4
@SD_BUS_ERROR_NAME_HAS_NO_OWNER = common dso_local global i32 0, align 4
@SD_BUS_ERROR_NO_REPLY = common dso_local global i32 0, align 4
@SD_BUS_ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@SD_BUS_ERROR_DISCONNECTED = common dso_local global i32 0, align 4
@SD_BUS_ERROR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bus_error_shall_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_error_shall_fallback(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @SD_BUS_ERROR_SERVICE_UNKNOWN, align 4
  %5 = call i64 @sd_bus_error_has_name(i32* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @SD_BUS_ERROR_NAME_HAS_NO_OWNER, align 4
  %10 = call i64 @sd_bus_error_has_name(i32* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @SD_BUS_ERROR_NO_REPLY, align 4
  %15 = call i64 @sd_bus_error_has_name(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @SD_BUS_ERROR_ACCESS_DENIED, align 4
  %20 = call i64 @sd_bus_error_has_name(i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @SD_BUS_ERROR_DISCONNECTED, align 4
  %25 = call i64 @sd_bus_error_has_name(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @SD_BUS_ERROR_TIMEOUT, align 4
  %30 = call i64 @sd_bus_error_has_name(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %22, %17, %12, %7, %1
  %33 = phi i1 [ true, %22 ], [ true, %17 ], [ true, %12 ], [ true, %7 ], [ true, %1 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @sd_bus_error_has_name(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
