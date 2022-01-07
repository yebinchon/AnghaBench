; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_create.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, i64 }

@vmm_initialized = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_create(%struct.vm** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm**, align 8
  %4 = alloca %struct.vm*, align 8
  store %struct.vm** %0, %struct.vm*** %3, align 8
  %5 = load i32, i32* @vmm_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENXIO, align 4
  store i32 %8, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  %10 = call %struct.vm* @malloc(i32 16)
  store %struct.vm* %10, %struct.vm** %4, align 8
  %11 = load %struct.vm*, %struct.vm** %4, align 8
  %12 = call i32 @assert(%struct.vm* %11)
  %13 = load %struct.vm*, %struct.vm** %4, align 8
  %14 = call i32 @bzero(%struct.vm* %13, i32 16)
  %15 = load %struct.vm*, %struct.vm** %4, align 8
  %16 = getelementptr inbounds %struct.vm, %struct.vm* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.vm*, %struct.vm** %4, align 8
  %18 = getelementptr inbounds %struct.vm, %struct.vm* %17, i32 0, i32 1
  %19 = call i32 @pthread_mutex_init(i32* %18, i32* null)
  %20 = load %struct.vm*, %struct.vm** %4, align 8
  %21 = getelementptr inbounds %struct.vm, %struct.vm* %20, i32 0, i32 0
  %22 = call i32 @pthread_cond_init(i32* %21, i32* null)
  %23 = load %struct.vm*, %struct.vm** %4, align 8
  %24 = call i32 @vm_init(%struct.vm* %23, i32 1)
  %25 = load %struct.vm*, %struct.vm** %4, align 8
  %26 = load %struct.vm**, %struct.vm*** %3, align 8
  store %struct.vm* %25, %struct.vm** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %9, %7
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.vm* @malloc(i32) #1

declare dso_local i32 @assert(%struct.vm*) #1

declare dso_local i32 @bzero(%struct.vm*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @vm_init(%struct.vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
