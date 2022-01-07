; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32)* @vm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_init(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @callout_system_init()
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.vm*, %struct.vm** %3, align 8
  %12 = call i32 @VM_INIT(%struct.vm* %11)
  %13 = load %struct.vm*, %struct.vm** %3, align 8
  %14 = getelementptr inbounds %struct.vm, %struct.vm* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load %struct.vm*, %struct.vm** %3, align 8
  %16 = call i32 @vioapic_init(%struct.vm* %15)
  %17 = load %struct.vm*, %struct.vm** %3, align 8
  %18 = getelementptr inbounds %struct.vm, %struct.vm* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 8
  %19 = load %struct.vm*, %struct.vm** %3, align 8
  %20 = call i32 @vhpet_init(%struct.vm* %19)
  %21 = load %struct.vm*, %struct.vm** %3, align 8
  %22 = getelementptr inbounds %struct.vm, %struct.vm* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vm*, %struct.vm** %3, align 8
  %24 = call i32 @vatpic_init(%struct.vm* %23)
  %25 = load %struct.vm*, %struct.vm** %3, align 8
  %26 = getelementptr inbounds %struct.vm, %struct.vm* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vm*, %struct.vm** %3, align 8
  %28 = call i32 @vatpit_init(%struct.vm* %27)
  %29 = load %struct.vm*, %struct.vm** %3, align 8
  %30 = getelementptr inbounds %struct.vm, %struct.vm* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.vm*, %struct.vm** %3, align 8
  %32 = call i32 @vpmtmr_init(%struct.vm* %31)
  %33 = load %struct.vm*, %struct.vm** %3, align 8
  %34 = getelementptr inbounds %struct.vm, %struct.vm* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %10
  %38 = load %struct.vm*, %struct.vm** %3, align 8
  %39 = call i32 @vrtc_init(%struct.vm* %38)
  %40 = load %struct.vm*, %struct.vm** %3, align 8
  %41 = getelementptr inbounds %struct.vm, %struct.vm* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %10
  %43 = load %struct.vm*, %struct.vm** %3, align 8
  %44 = getelementptr inbounds %struct.vm, %struct.vm* %43, i32 0, i32 2
  %45 = call i32 @CPU_ZERO(i32* %44)
  %46 = load %struct.vm*, %struct.vm** %3, align 8
  %47 = getelementptr inbounds %struct.vm, %struct.vm* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.vm*, %struct.vm** %3, align 8
  %49 = getelementptr inbounds %struct.vm, %struct.vm* %48, i32 0, i32 0
  %50 = call i32 @CPU_ZERO(i32* %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %60, %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @VM_MAXCPU, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.vm*, %struct.vm** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @vcpu_init(%struct.vm* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %51

63:                                               ; preds = %51
  ret void
}

declare dso_local i32 @callout_system_init(...) #1

declare dso_local i32 @VM_INIT(%struct.vm*) #1

declare dso_local i32 @vioapic_init(%struct.vm*) #1

declare dso_local i32 @vhpet_init(%struct.vm*) #1

declare dso_local i32 @vatpic_init(%struct.vm*) #1

declare dso_local i32 @vatpit_init(%struct.vm*) #1

declare dso_local i32 @vpmtmr_init(%struct.vm*) #1

declare dso_local i32 @vrtc_init(%struct.vm*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @vcpu_init(%struct.vm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
