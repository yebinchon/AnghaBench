; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_prune_cgroup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_prune_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@SPECIAL_ROOT_SLICE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to destroy cgroup %s, ignoring: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unit_prune_cgroup(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_10__* %5)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = call i32 @unit_get_cpu_usage(%struct.TYPE_10__* %13, i32* null)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = load i32, i32* @SPECIAL_ROOT_SLICE, align 4
  %17 = call i32 @unit_has_name(%struct.TYPE_10__* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @cg_trim_everywhere(i32 %22, i32 %25, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %12
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @LOG_DEBUG, align 4
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @LOG_WARNING, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @log_unit_full(%struct.TYPE_10__* %34, i32 %44, i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %12
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %69

54:                                               ; preds = %50
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = call i32 @unit_release_cgroup(%struct.TYPE_10__* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bpf_program_unref(i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %54, %53, %11
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @unit_get_cpu_usage(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @unit_has_name(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cg_trim_everywhere(i32, i32, i32) #1

declare dso_local i32 @log_unit_full(%struct.TYPE_10__*, i32, i32, i8*, i32) #1

declare dso_local i32 @unit_release_cgroup(%struct.TYPE_10__*) #1

declare dso_local i32 @bpf_program_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
