; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_get_cpu_usage.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_get_cpu_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@cpu_accounting = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@NSEC_INFINITY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_get_cpu_usage(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_6__* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = load i32, i32* @cpu_accounting, align 4
  %12 = call i32 @UNIT_CGROUP_BOOL(%struct.TYPE_6__* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = call i32 @unit_get_cpu_usage_raw(%struct.TYPE_6__* %18, i64* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ENODATA, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NSEC_INFINITY, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load i64*, i64** %5, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %30
  store i32 0, i32* %3, align 4
  br label %67

39:                                               ; preds = %24, %17
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %39
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub nsw i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %57

56:                                               ; preds = %44
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i64, i64* %6, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %57
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %42, %38, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @UNIT_CGROUP_BOOL(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @unit_get_cpu_usage_raw(%struct.TYPE_6__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
