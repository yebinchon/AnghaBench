; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-cgroup.c_bus_cgroup_set_boolean.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-cgroup.c_bus_cgroup_set_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32, i32*, i32, i32*)* @bus_cgroup_set_boolean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_cgroup_set_boolean(i32* %0, i8* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @assert(i32* %18)
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @sd_bus_message_read(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* %17, align 4
  store i32 %25, i32* %8, align 4
  br label %44

26:                                               ; preds = %7
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @UNIT_WRITE_FLAGS_NOOP(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %16, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @unit_invalidate_cgroup(i32* %33, i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @yes_no(i32 %40)
  %42 = call i32 @unit_write_settingf(i32* %36, i32 %37, i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %41)
  br label %43

43:                                               ; preds = %30, %26
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*) #1

declare dso_local i32 @UNIT_WRITE_FLAGS_NOOP(i32) #1

declare dso_local i32 @unit_invalidate_cgroup(i32*, i32) #1

declare dso_local i32 @unit_write_settingf(i32*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @yes_no(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
