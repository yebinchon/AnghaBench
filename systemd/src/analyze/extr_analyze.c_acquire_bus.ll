; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_acquire_bus.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_acquire_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_scope = common dso_local global i64 0, align 8
@UNIT_FILE_SYSTEM = common dso_local global i64 0, align 8
@arg_transport = common dso_local global i32 0, align 4
@arg_host = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @acquire_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_bus(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* @arg_scope, align 8
  %9 = load i64, i64* @UNIT_FILE_SYSTEM, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i32, i32* @arg_transport, align 4
  %20 = load i32, i32* @arg_host, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32**, i32*** %4, align 8
  %23 = call i32 @bus_connect_transport(i32 %19, i32 %20, i32 %21, i32** %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EHOSTDOWN, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i64 @IN_SET(i32 %24, i32 0, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %18
  %32 = load i32*, i32** %5, align 8
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %14, %2
  %34 = load i32, i32* @arg_transport, align 4
  %35 = load i32, i32* @arg_host, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32**, i32*** %4, align 8
  %38 = call i32 @bus_connect_transport_systemd(i32 %34, i32 %35, i32 %36, i32** %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %29
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @bus_connect_transport(i32, i32, i32, i32**) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @bus_connect_transport_systemd(i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
