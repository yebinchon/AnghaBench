; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_swap.c_swap_add_default_dependencies.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_swap.c_swap_add_default_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@UNIT_BEFORE = common dso_local global i32 0, align 4
@SPECIAL_SWAP_TARGET = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_DEFAULT = common dso_local global i32 0, align 4
@UNIT_CONFLICTS = common dso_local global i32 0, align 4
@SPECIAL_UMOUNT_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @swap_add_default_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_add_default_dependencies(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @assert(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_4__* @UNIT(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_4__* @UNIT(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MANAGER_IS_SYSTEM(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %44

21:                                               ; preds = %13
  %22 = call i64 (...) @detect_container()
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %44

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call %struct.TYPE_4__* @UNIT(i32* %26)
  %28 = load i32, i32* @UNIT_BEFORE, align 4
  %29 = load i32, i32* @SPECIAL_SWAP_TARGET, align 4
  %30 = load i32, i32* @UNIT_DEPENDENCY_DEFAULT, align 4
  %31 = call i32 @unit_add_dependency_by_name(%struct.TYPE_4__* %27, i32 %28, i32 %29, i32 1, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %25
  %37 = load i32*, i32** %3, align 8
  %38 = call %struct.TYPE_4__* @UNIT(i32* %37)
  %39 = load i32, i32* @UNIT_BEFORE, align 4
  %40 = load i32, i32* @UNIT_CONFLICTS, align 4
  %41 = load i32, i32* @SPECIAL_UMOUNT_TARGET, align 4
  %42 = load i32, i32* @UNIT_DEPENDENCY_DEFAULT, align 4
  %43 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_4__* %38, i32 %39, i32 %40, i32 %41, i32 1, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %34, %24, %20, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.TYPE_4__* @UNIT(i32*) #1

declare dso_local i32 @MANAGER_IS_SYSTEM(i32) #1

declare dso_local i64 @detect_container(...) #1

declare dso_local i32 @unit_add_dependency_by_name(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @unit_add_two_dependencies_by_name(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
