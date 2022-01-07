; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_add_quota_dependencies.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_add_quota_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@UNIT_DEPENDENCY_FILE = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT = common dso_local global i32 0, align 4
@UNIT_BEFORE = common dso_local global i32 0, align 4
@UNIT_WANTS = common dso_local global i32 0, align 4
@SPECIAL_QUOTACHECK_SERVICE = common dso_local global i32 0, align 4
@SPECIAL_QUOTAON_SERVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @mount_add_quota_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_add_quota_dependencies(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i32 @assert(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = call %struct.TYPE_9__* @UNIT(%struct.TYPE_8__* %9)
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MANAGER_IS_SYSTEM(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = call i32* @get_mount_parameters_fragment(%struct.TYPE_8__* %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %62

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @mount_needs_quota(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %62

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @UNIT_DEPENDENCY_FILE, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %4, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = call %struct.TYPE_9__* @UNIT(%struct.TYPE_8__* %38)
  %40 = load i32, i32* @UNIT_BEFORE, align 4
  %41 = load i32, i32* @UNIT_WANTS, align 4
  %42 = load i32, i32* @SPECIAL_QUOTACHECK_SERVICE, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_9__* %39, i32 %40, i32 %41, i32 %42, i32 1, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %36
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = call %struct.TYPE_9__* @UNIT(%struct.TYPE_8__* %50)
  %52 = load i32, i32* @UNIT_BEFORE, align 4
  %53 = load i32, i32* @UNIT_WANTS, align 4
  %54 = load i32, i32* @SPECIAL_QUOTAON_SERVICE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_9__* %51, i32 %52, i32 %53, i32 %54, i32 1, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %47, %26, %21, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @MANAGER_IS_SYSTEM(i32) #1

declare dso_local %struct.TYPE_9__* @UNIT(%struct.TYPE_8__*) #1

declare dso_local i32* @get_mount_parameters_fragment(%struct.TYPE_8__*) #1

declare dso_local i32 @mount_needs_quota(i32*) #1

declare dso_local i32 @unit_add_two_dependencies_by_name(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
