; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_cleanup.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32)* @vm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_cleanup(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %16, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @VM_MAXCPU, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load %struct.vm*, %struct.vm** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @vcpu_cleanup(%struct.vm* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  br label %7

19:                                               ; preds = %7
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.vm*, %struct.vm** %3, align 8
  %24 = getelementptr inbounds %struct.vm, %struct.vm* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @vrtc_cleanup(i32 %25)
  br label %32

27:                                               ; preds = %19
  %28 = load %struct.vm*, %struct.vm** %3, align 8
  %29 = getelementptr inbounds %struct.vm, %struct.vm* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @vrtc_reset(i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.vm*, %struct.vm** %3, align 8
  %34 = getelementptr inbounds %struct.vm, %struct.vm* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vpmtmr_cleanup(i32 %35)
  %37 = load %struct.vm*, %struct.vm** %3, align 8
  %38 = getelementptr inbounds %struct.vm, %struct.vm* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @vatpit_cleanup(i32 %39)
  %41 = load %struct.vm*, %struct.vm** %3, align 8
  %42 = getelementptr inbounds %struct.vm, %struct.vm* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @vhpet_cleanup(i32 %43)
  %45 = load %struct.vm*, %struct.vm** %3, align 8
  %46 = getelementptr inbounds %struct.vm, %struct.vm* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @vatpic_cleanup(i32 %47)
  %49 = load %struct.vm*, %struct.vm** %3, align 8
  %50 = getelementptr inbounds %struct.vm, %struct.vm* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @vioapic_cleanup(i32 %51)
  %53 = load %struct.vm*, %struct.vm** %3, align 8
  %54 = getelementptr inbounds %struct.vm, %struct.vm* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @VM_CLEANUP(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.vm*, %struct.vm** %3, align 8
  %63 = getelementptr inbounds %struct.vm, %struct.vm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.vm*, %struct.vm** %3, align 8
  %68 = getelementptr inbounds %struct.vm, %struct.vm* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @vm_free_mem_seg(i32* %72)
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %60

77:                                               ; preds = %60
  %78 = load %struct.vm*, %struct.vm** %3, align 8
  %79 = getelementptr inbounds %struct.vm, %struct.vm* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %32
  ret void
}

declare dso_local i32 @vcpu_cleanup(%struct.vm*, i32, i32) #1

declare dso_local i32 @vrtc_cleanup(i32) #1

declare dso_local i32 @vrtc_reset(i32) #1

declare dso_local i32 @vpmtmr_cleanup(i32) #1

declare dso_local i32 @vatpit_cleanup(i32) #1

declare dso_local i32 @vhpet_cleanup(i32) #1

declare dso_local i32 @vatpic_cleanup(i32) #1

declare dso_local i32 @vioapic_cleanup(i32) #1

declare dso_local i32 @VM_CLEANUP(i32) #1

declare dso_local i32 @vm_free_mem_seg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
