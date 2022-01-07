; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_stat.c_vmm_stat_copy.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_stat.c_vmm_stat_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmm_stat_type = type { i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)* }
%struct.vm.0 = type opaque
%struct.vm = type { i32 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vst_num_types = common dso_local global i32 0, align 4
@vsttab = common dso_local global %struct.vmm_stat_type** null, align 8
@vst_num_elems = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmm_stat_copy(%struct.vm* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vmm_stat_type*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @VM_MAXCPU, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %73

21:                                               ; preds = %15
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @vst_num_types, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.vmm_stat_type**, %struct.vmm_stat_type*** @vsttab, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.vmm_stat_type*, %struct.vmm_stat_type** %27, i64 %29
  %31 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %30, align 8
  store %struct.vmm_stat_type* %31, %struct.vmm_stat_type** %10, align 8
  %32 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %10, align 8
  %33 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %32, i32 0, i32 0
  %34 = load i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)*, i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)** %33, align 8
  %35 = icmp ne i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %10, align 8
  %38 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %37, i32 0, i32 0
  %39 = load i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)*, i32 (%struct.vm.0*, i32, %struct.vmm_stat_type*)** %38, align 8
  %40 = load %struct.vm*, %struct.vm** %6, align 8
  %41 = bitcast %struct.vm* %40 to %struct.vm.0*
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %10, align 8
  %44 = call i32 %39(%struct.vm.0* %41, i32 %42, %struct.vmm_stat_type* %43)
  br label %45

45:                                               ; preds = %36, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load %struct.vm*, %struct.vm** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32* @vcpu_stats(%struct.vm* %50, i32 %51)
  store i32* %52, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %67, %49
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @vst_num_elems, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %53

70:                                               ; preds = %53
  %71 = load i32, i32* @vst_num_elems, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %19
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32* @vcpu_stats(%struct.vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
