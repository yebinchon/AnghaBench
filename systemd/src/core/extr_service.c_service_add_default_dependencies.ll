; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_add_default_dependencies.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_add_default_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@UNIT_AFTER = common dso_local global i32 0, align 4
@UNIT_REQUIRES = common dso_local global i32 0, align 4
@SPECIAL_SYSINIT_TARGET = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_DEFAULT = common dso_local global i32 0, align 4
@SPECIAL_BASIC_TARGET = common dso_local global i32 0, align 4
@UNIT_BEFORE = common dso_local global i32 0, align 4
@UNIT_CONFLICTS = common dso_local global i32 0, align 4
@SPECIAL_SHUTDOWN_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @service_add_default_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_add_default_dependencies(i32* %0) #0 {
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
  br label %64

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_4__* @UNIT(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @MANAGER_IS_SYSTEM(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = call %struct.TYPE_4__* @UNIT(i32* %21)
  %23 = load i32, i32* @UNIT_AFTER, align 4
  %24 = load i32, i32* @UNIT_REQUIRES, align 4
  %25 = load i32, i32* @SPECIAL_SYSINIT_TARGET, align 4
  %26 = load i32, i32* @UNIT_DEPENDENCY_DEFAULT, align 4
  %27 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_4__* %22, i32 %23, i32 %24, i32 %25, i32 1, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %64

32:                                               ; preds = %20
  br label %45

33:                                               ; preds = %13
  %34 = load i32*, i32** %3, align 8
  %35 = call %struct.TYPE_4__* @UNIT(i32* %34)
  %36 = load i32, i32* @UNIT_REQUIRES, align 4
  %37 = load i32, i32* @SPECIAL_BASIC_TARGET, align 4
  %38 = load i32, i32* @UNIT_DEPENDENCY_DEFAULT, align 4
  %39 = call i32 @unit_add_dependency_by_name(%struct.TYPE_4__* %35, i32 %36, i32 %37, i32 1, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %64

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32*, i32** %3, align 8
  %47 = call %struct.TYPE_4__* @UNIT(i32* %46)
  %48 = load i32, i32* @UNIT_AFTER, align 4
  %49 = load i32, i32* @SPECIAL_BASIC_TARGET, align 4
  %50 = load i32, i32* @UNIT_DEPENDENCY_DEFAULT, align 4
  %51 = call i32 @unit_add_dependency_by_name(%struct.TYPE_4__* %47, i32 %48, i32 %49, i32 1, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %64

56:                                               ; preds = %45
  %57 = load i32*, i32** %3, align 8
  %58 = call %struct.TYPE_4__* @UNIT(i32* %57)
  %59 = load i32, i32* @UNIT_BEFORE, align 4
  %60 = load i32, i32* @UNIT_CONFLICTS, align 4
  %61 = load i32, i32* @SPECIAL_SHUTDOWN_TARGET, align 4
  %62 = load i32, i32* @UNIT_DEPENDENCY_DEFAULT, align 4
  %63 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_4__* %58, i32 %59, i32 %60, i32 %61, i32 1, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %56, %54, %42, %30, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.TYPE_4__* @UNIT(i32*) #1

declare dso_local i64 @MANAGER_IS_SYSTEM(i32) #1

declare dso_local i32 @unit_add_two_dependencies_by_name(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unit_add_dependency_by_name(%struct.TYPE_4__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
