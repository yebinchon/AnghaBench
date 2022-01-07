; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_path.c_path_add_default_dependencies.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_path.c_path_add_default_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@UNIT_BEFORE = common dso_local global i32 0, align 4
@SPECIAL_PATHS_TARGET = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_DEFAULT = common dso_local global i32 0, align 4
@UNIT_AFTER = common dso_local global i32 0, align 4
@UNIT_REQUIRES = common dso_local global i32 0, align 4
@SPECIAL_SYSINIT_TARGET = common dso_local global i32 0, align 4
@UNIT_CONFLICTS = common dso_local global i32 0, align 4
@SPECIAL_SHUTDOWN_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @path_add_default_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_add_default_dependencies(i32* %0) #0 {
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
  br label %52

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_4__* @UNIT(i32* %14)
  %16 = load i32, i32* @UNIT_BEFORE, align 4
  %17 = load i32, i32* @SPECIAL_PATHS_TARGET, align 4
  %18 = load i32, i32* @UNIT_DEPENDENCY_DEFAULT, align 4
  %19 = call i32 @unit_add_dependency_by_name(%struct.TYPE_4__* %15, i32 %16, i32 %17, i32 1, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %13
  %25 = load i32*, i32** %3, align 8
  %26 = call %struct.TYPE_4__* @UNIT(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @MANAGER_IS_SYSTEM(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = call %struct.TYPE_4__* @UNIT(i32* %32)
  %34 = load i32, i32* @UNIT_AFTER, align 4
  %35 = load i32, i32* @UNIT_REQUIRES, align 4
  %36 = load i32, i32* @SPECIAL_SYSINIT_TARGET, align 4
  %37 = load i32, i32* @UNIT_DEPENDENCY_DEFAULT, align 4
  %38 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_4__* %33, i32 %34, i32 %35, i32 %36, i32 1, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32*, i32** %3, align 8
  %46 = call %struct.TYPE_4__* @UNIT(i32* %45)
  %47 = load i32, i32* @UNIT_BEFORE, align 4
  %48 = load i32, i32* @UNIT_CONFLICTS, align 4
  %49 = load i32, i32* @SPECIAL_SHUTDOWN_TARGET, align 4
  %50 = load i32, i32* @UNIT_DEPENDENCY_DEFAULT, align 4
  %51 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_4__* %46, i32 %47, i32 %48, i32 %49, i32 1, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %44, %41, %22, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.TYPE_4__* @UNIT(i32*) #1

declare dso_local i32 @unit_add_dependency_by_name(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i64 @MANAGER_IS_SYSTEM(i32) #1

declare dso_local i32 @unit_add_two_dependencies_by_name(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
