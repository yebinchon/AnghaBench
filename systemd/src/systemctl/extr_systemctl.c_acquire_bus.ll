; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_acquire_bus.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_acquire_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_BUS_FOCUS_MAX = common dso_local global i64 0, align 8
@arg_transport = common dso_local global i64 0, align 8
@BUS_TRANSPORT_LOCAL = common dso_local global i64 0, align 8
@BUS_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"SYSTEMCTL_FORCE_BUS\00", align 1
@buses = common dso_local global i32** null, align 8
@arg_scope = common dso_local global i64 0, align 8
@UNIT_FILE_SYSTEM = common dso_local global i64 0, align 8
@BUS_MANAGER = common dso_local global i64 0, align 8
@arg_host = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to connect to bus: %m\00", align 1
@arg_ask_password = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32**)* @acquire_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_bus(i64 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @_BUS_FOCUS_MAX, align 8
  %10 = icmp ult i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32**, i32*** %5, align 8
  %14 = ptrtoint i32** %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* @arg_transport, align 8
  %17 = load i64, i64* @BUS_TRANSPORT_LOCAL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @BUS_FULL, align 8
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %19, %2
  %22 = call i64 @getenv_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @BUS_FULL, align 8
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32**, i32*** @buses, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %69, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* @arg_scope, align 8
  %34 = load i64, i64* @UNIT_FILE_SYSTEM, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @BUS_MANAGER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i64, i64* @arg_transport, align 8
  %42 = load i32, i32* @arg_host, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32**, i32*** @buses, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = call i32 @bus_connect_transport_systemd(i64 %41, i32 %42, i32 %43, i32** %46)
  store i32 %47, i32* %6, align 4
  br label %56

48:                                               ; preds = %32
  %49 = load i64, i64* @arg_transport, align 8
  %50 = load i32, i32* @arg_host, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32**, i32*** @buses, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = call i32 @bus_connect_transport(i64 %49, i32 %50, i32 %51, i32** %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %48, %40
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @log_error_errno(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %61, i32* %3, align 4
  br label %75

62:                                               ; preds = %56
  %63 = load i32**, i32*** @buses, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @arg_ask_password, align 4
  %68 = call i32 @sd_bus_set_allow_interactive_authorization(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %26
  %70 = load i32**, i32*** @buses, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32**, i32*** %5, align 8
  store i32* %73, i32** %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %69, %59
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @getenv_bool(i8*) #1

declare dso_local i32 @bus_connect_transport_systemd(i64, i32, i32, i32**) #1

declare dso_local i32 @bus_connect_transport(i64, i32, i32, i32**) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_set_allow_interactive_authorization(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
