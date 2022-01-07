; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-lldp.c_start_lldp.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-lldp.c_start_lldp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32, i8*)* @start_lldp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_lldp(i32** %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = call i32 @sd_lldp_new(i32** %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %5, align 4
  br label %53

17:                                               ; preds = %4
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @sd_lldp_set_ifindex(i32* %19, i32 42)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %53

25:                                               ; preds = %17
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @sd_lldp_set_callback(i32* %27, i32 %28, i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %53

35:                                               ; preds = %25
  %36 = load i32**, i32*** %6, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @sd_lldp_attach_event(i32* %37, i32* %38, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %53

44:                                               ; preds = %35
  %45 = load i32**, i32*** %6, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @sd_lldp_start(i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %50, %42, %33, %23, %15
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @sd_lldp_new(i32**) #1

declare dso_local i32 @sd_lldp_set_ifindex(i32*, i32) #1

declare dso_local i32 @sd_lldp_set_callback(i32*, i32, i8*) #1

declare dso_local i32 @sd_lldp_attach_event(i32*, i32*, i32) #1

declare dso_local i32 @sd_lldp_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
