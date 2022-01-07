; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-cgroup.c_property_get_cgroup_mask.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-cgroup.c_property_get_cgroup_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@_CGROUP_CONTROLLER_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @property_get_cgroup_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_cgroup_mask(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %16, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @assert(i32* %21)
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @assert(i32* %23)
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @sd_bus_message_open_container(i32* %25, i8 signext 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* %18, align 4
  store i32 %30, i32* %8, align 4
  br label %60

31:                                               ; preds = %7
  store i64 0, i64* %17, align 8
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i64, i64* %17, align 8
  %34 = load i64, i64* @_CGROUP_CONTROLLER_MAX, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %17, align 8
  %40 = call i32 @CGROUP_CONTROLLER_TO_MASK(i64 %39)
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %54

44:                                               ; preds = %36
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %17, align 8
  %47 = call i32 @cgroup_controller_to_string(i64 %46)
  %48 = call i32 @sd_bus_message_append(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %8, align 4
  br label %60

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i64, i64* %17, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %17, align 8
  br label %32

57:                                               ; preds = %32
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @sd_bus_message_close_container(i32* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %51, %29
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_open_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @CGROUP_CONTROLLER_TO_MASK(i64) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i32) #1

declare dso_local i32 @cgroup_controller_to_string(i64) #1

declare dso_local i32 @sd_bus_message_close_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
