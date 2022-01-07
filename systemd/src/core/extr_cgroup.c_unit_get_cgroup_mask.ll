; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_get_cgroup_mask.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_get_cgroup_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_15__, %struct.TYPE_14__, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@USEC_INFINITY = common dso_local global i64 0, align 8
@CGROUP_MASK_CPU = common dso_local global i32 0, align 4
@CGROUP_MASK_CPUSET = common dso_local global i32 0, align 4
@CGROUP_MASK_IO = common dso_local global i32 0, align 4
@CGROUP_MASK_BLKIO = common dso_local global i32 0, align 4
@CGROUP_LIMIT_MAX = common dso_local global i64 0, align 8
@CGROUP_MASK_MEMORY = common dso_local global i32 0, align 4
@CGROUP_DEVICE_POLICY_AUTO = common dso_local global i64 0, align 8
@CGROUP_MASK_DEVICES = common dso_local global i32 0, align 4
@CGROUP_MASK_BPF_DEVICES = common dso_local global i32 0, align 4
@CGROUP_MASK_PIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @unit_get_cgroup_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_get_cgroup_mask(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_16__* %5)
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = call %struct.TYPE_16__* @unit_get_cgroup_context(%struct.TYPE_16__* %7)
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_16__* %9)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 9
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 (...) @get_cpu_accounting_mask()
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = call i64 @cgroup_context_has_cpu_weight(%struct.TYPE_16__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = call i64 @cgroup_context_has_cpu_shares(%struct.TYPE_16__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USEC_INFINITY, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %23, %19
  %34 = load i32, i32* @CGROUP_MASK_CPU, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @CGROUP_MASK_CPUSET, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = call i64 @cgroup_context_has_io_config(%struct.TYPE_16__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = call i64 @cgroup_context_has_blockio_config(%struct.TYPE_16__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @CGROUP_MASK_IO, align 4
  %63 = load i32, i32* @CGROUP_MASK_BLKIO, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %57
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CGROUP_LIMIT_MAX, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %80 = call i64 @unit_has_unified_memory_config(%struct.TYPE_16__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78, %72, %67
  %83 = load i32, i32* @CGROUP_MASK_MEMORY, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CGROUP_DEVICE_POLICY_AUTO, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91, %86
  %98 = load i32, i32* @CGROUP_MASK_DEVICES, align 4
  %99 = load i32, i32* @CGROUP_MASK_BPF_DEVICES, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %97, %91
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CGROUP_LIMIT_MAX, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108, %103
  %115 = load i32, i32* @CGROUP_MASK_PIDS, align 4
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %108
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @CGROUP_MASK_EXTEND_JOINED(i32 %119)
  ret i32 %120
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @unit_get_cgroup_context(%struct.TYPE_16__*) #1

declare dso_local i32 @get_cpu_accounting_mask(...) #1

declare dso_local i64 @cgroup_context_has_cpu_weight(%struct.TYPE_16__*) #1

declare dso_local i64 @cgroup_context_has_cpu_shares(%struct.TYPE_16__*) #1

declare dso_local i64 @cgroup_context_has_io_config(%struct.TYPE_16__*) #1

declare dso_local i64 @cgroup_context_has_blockio_config(%struct.TYPE_16__*) #1

declare dso_local i64 @unit_has_unified_memory_config(%struct.TYPE_16__*) #1

declare dso_local i32 @CGROUP_MASK_EXTEND_JOINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
