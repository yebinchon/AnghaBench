; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_add_slice_dependencies.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_add_slice_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@UNIT_SLICE = common dso_local global i64 0, align 8
@UNIT_DEPENDENCY_IMPLICIT = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_FILE = common dso_local global i32 0, align 4
@UNIT_AFTER = common dso_local global i32 0, align 4
@UNIT_REQUIRES = common dso_local global i32 0, align 4
@SPECIAL_ROOT_SLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @unit_add_slice_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_add_slice_dependencies(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_8__* %5)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i32 @UNIT_HAS_CGROUP_CONTEXT(%struct.TYPE_8__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @UNIT_SLICE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @UNIT_DEPENDENCY_IMPLICIT, align 4
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @UNIT_DEPENDENCY_FILE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @UNIT_ISSET(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = load i32, i32* @UNIT_AFTER, align 4
  %31 = load i32, i32* @UNIT_REQUIRES, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @UNIT_DEREF(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @unit_add_two_dependencies(%struct.TYPE_8__* %29, i32 %30, i32 %31, i32 %35, i32 1, i32 %36)
  store i32 %37, i32* %2, align 4
  br label %51

38:                                               ; preds = %21
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = load i32, i32* @SPECIAL_ROOT_SLICE, align 4
  %41 = call i64 @unit_has_name(%struct.TYPE_8__* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %51

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = load i32, i32* @UNIT_AFTER, align 4
  %47 = load i32, i32* @UNIT_REQUIRES, align 4
  %48 = load i32, i32* @SPECIAL_ROOT_SLICE, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_8__* %45, i32 %46, i32 %47, i32 %48, i32 1, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %44, %43, %28, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @UNIT_HAS_CGROUP_CONTEXT(%struct.TYPE_8__*) #1

declare dso_local i64 @UNIT_ISSET(i32) #1

declare dso_local i32 @unit_add_two_dependencies(%struct.TYPE_8__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNIT_DEREF(i32) #1

declare dso_local i64 @unit_has_name(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @unit_add_two_dependencies_by_name(%struct.TYPE_8__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
