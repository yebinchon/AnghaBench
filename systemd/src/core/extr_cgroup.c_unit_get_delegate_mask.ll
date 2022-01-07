; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_get_delegate_mask.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_get_delegate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_get_delegate_mask(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @unit_cgroup_delegate(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = call i64 (...) @cg_all_unified()
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @unit_get_exec_context(i32* %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @exec_context_maintains_privileges(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %32

23:                                               ; preds = %18, %13
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32*, i32** %3, align 8
  %26 = call %struct.TYPE_4__* @unit_get_cgroup_context(i32* %25)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %4, align 8
  %27 = call i32 @assert_se(%struct.TYPE_4__* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CGROUP_MASK_EXTEND_JOINED(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %22, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @unit_cgroup_delegate(i32*) #1

declare dso_local i64 @cg_all_unified(...) #1

declare dso_local i32* @unit_get_exec_context(i32*) #1

declare dso_local i32 @exec_context_maintains_privileges(i32*) #1

declare dso_local i32 @assert_se(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @unit_get_cgroup_context(i32*) #1

declare dso_local i32 @CGROUP_MASK_EXTEND_JOINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
