; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_modify_intr_shadow.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_modify_intr_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VMCS_GUEST_INTERRUPTIBILITY = common dso_local global i32 0, align 4
@HWINTR_BLOCKING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Setting intr_shadow to %#llx %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32, i64)* @vmx_modify_intr_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_modify_intr_shadow(%struct.vmx* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %8, align 4
  br label %32

14:                                               ; preds = %3
  %15 = load i32, i32* @VMCS_GUEST_INTERRUPTIBILITY, align 4
  %16 = call i32 @VMCS_IDENT(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @vmcs_getreg(i32 %17, i32 %18, i64* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load i64, i64* @HWINTR_BLOCKING, align 8
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @vmcs_setreg(i32 %27, i32 %28, i64 %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %22, %14
  br label %32

32:                                               ; preds = %31, %12
  %33 = load %struct.vmx*, %struct.vmx** %4, align 8
  %34 = getelementptr inbounds %struct.vmx, %struct.vmx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 @VCPU_CTR2(i32 %35, i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %37, i8* %41)
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @VMCS_IDENT(i32) #1

declare dso_local i32 @vmcs_getreg(i32, i32, i64*) #1

declare dso_local i32 @vmcs_setreg(i32, i32, i64) #1

declare dso_local i32 @VCPU_CTR2(i32, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
