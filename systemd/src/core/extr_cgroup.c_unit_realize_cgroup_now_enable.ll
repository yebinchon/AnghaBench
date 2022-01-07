; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_realize_cgroup_now_enable.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_realize_cgroup_now_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @unit_realize_cgroup_now_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_realize_cgroup_now_enable(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i32 @assert(%struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @UNIT_ISSET(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_9__* @UNIT_DEREF(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @unit_realize_cgroup_now_enable(%struct.TYPE_9__* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = call i32 @unit_get_target_mask(%struct.TYPE_9__* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = call i32 @unit_get_enable_mask(%struct.TYPE_9__* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @unit_has_mask_enables_realized(%struct.TYPE_9__* %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %57

41:                                               ; preds = %30
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @unit_create_cgroup(%struct.TYPE_9__* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %41, %40, %27
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i64 @UNIT_ISSET(i32) #1

declare dso_local %struct.TYPE_9__* @UNIT_DEREF(i32) #1

declare dso_local i32 @unit_get_target_mask(%struct.TYPE_9__*) #1

declare dso_local i32 @unit_get_enable_mask(%struct.TYPE_9__*) #1

declare dso_local i64 @unit_has_mask_enables_realized(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @unit_create_cgroup(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
