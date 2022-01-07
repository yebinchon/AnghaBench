; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vcpu_exception_intinfo.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vcpu_exception_intinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu = type { i32, i64, i64, i64 }

@VM_INTINFO_VALID = common dso_local global i32 0, align 4
@VM_INTINFO_HWEXCEPTION = common dso_local global i32 0, align 4
@VM_INTINFO_DEL_ERRCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu*)* @vcpu_exception_intinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_exception_intinfo(%struct.vcpu* %0) #0 {
  %2 = alloca %struct.vcpu*, align 8
  %3 = alloca i32, align 4
  store %struct.vcpu* %0, %struct.vcpu** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.vcpu*, %struct.vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load %struct.vcpu*, %struct.vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 255
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @VM_INTINFO_VALID, align 4
  %14 = load i32, i32* @VM_INTINFO_HWEXCEPTION, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.vcpu*, %struct.vcpu** %2, align 8
  %19 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %8
  %23 = load i32, i32* @VM_INTINFO_DEL_ERRCODE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.vcpu*, %struct.vcpu** %2, align 8
  %27 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 32
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %8
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
