; ModuleID = '/home/carl/AnghaBench/systemd/src/portable/extr_portablectl.c_acquire_bus.c'
source_filename = "/home/carl/AnghaBench/systemd/src/portable/extr_portablectl.c_acquire_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_transport = common dso_local global i32 0, align 4
@arg_host = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to connect to bus: %m\00", align 1
@arg_ask_password = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @acquire_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_bus(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  %5 = load i32**, i32*** %3, align 8
  %6 = call i32 @assert(i32** %5)
  %7 = load i32**, i32*** %3, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @arg_transport, align 4
  %13 = load i32, i32* @arg_host, align 4
  %14 = load i32**, i32*** %3, align 8
  %15 = call i32 @bus_connect_transport(i32 %12, i32 %13, i32 0, i32** %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @log_error_errno(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %11
  %22 = load i32**, i32*** %3, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @arg_ask_password, align 4
  %25 = call i32 @sd_bus_set_allow_interactive_authorization(i32* %23, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %18, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i32 @bus_connect_transport(i32, i32, i32, i32**) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_set_allow_interactive_authorization(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
