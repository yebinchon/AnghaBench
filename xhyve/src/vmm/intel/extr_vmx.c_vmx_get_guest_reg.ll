; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_get_guest_reg.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_get_guest_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HV_X86_RAX = common dso_local global i32 0, align 4
@HV_X86_RCX = common dso_local global i32 0, align 4
@HV_X86_RDX = common dso_local global i32 0, align 4
@HV_X86_RBX = common dso_local global i32 0, align 4
@VMCS_GUEST_RSP = common dso_local global i32 0, align 4
@HV_X86_RBP = common dso_local global i32 0, align 4
@HV_X86_RSI = common dso_local global i32 0, align 4
@HV_X86_RDI = common dso_local global i32 0, align 4
@HV_X86_R8 = common dso_local global i32 0, align 4
@HV_X86_R9 = common dso_local global i32 0, align 4
@HV_X86_R10 = common dso_local global i32 0, align 4
@HV_X86_R11 = common dso_local global i32 0, align 4
@HV_X86_R12 = common dso_local global i32 0, align 4
@HV_X86_R13 = common dso_local global i32 0, align 4
@HV_X86_R14 = common dso_local global i32 0, align 4
@HV_X86_R15 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid vmx register %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vmx_get_guest_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_get_guest_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %71 [
    i32 0, label %7
    i32 1, label %11
    i32 2, label %15
    i32 3, label %19
    i32 4, label %23
    i32 5, label %27
    i32 6, label %31
    i32 7, label %35
    i32 8, label %39
    i32 9, label %43
    i32 10, label %47
    i32 11, label %51
    i32 12, label %55
    i32 13, label %59
    i32 14, label %63
    i32 15, label %67
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @HV_X86_RAX, align 4
  %10 = call i32 @reg_read(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  br label %74

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @HV_X86_RCX, align 4
  %14 = call i32 @reg_read(i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HV_X86_RDX, align 4
  %18 = call i32 @reg_read(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HV_X86_RBX, align 4
  %22 = call i32 @reg_read(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @VMCS_GUEST_RSP, align 4
  %26 = call i32 @vmcs_read(i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %74

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @HV_X86_RBP, align 4
  %30 = call i32 @reg_read(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %74

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @HV_X86_RSI, align 4
  %34 = call i32 @reg_read(i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %74

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @HV_X86_RDI, align 4
  %38 = call i32 @reg_read(i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %74

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @HV_X86_R8, align 4
  %42 = call i32 @reg_read(i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %74

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @HV_X86_R9, align 4
  %46 = call i32 @reg_read(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %74

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @HV_X86_R10, align 4
  %50 = call i32 @reg_read(i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %74

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @HV_X86_R11, align 4
  %54 = call i32 @reg_read(i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %74

55:                                               ; preds = %2
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @HV_X86_R12, align 4
  %58 = call i32 @reg_read(i32 %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %74

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @HV_X86_R13, align 4
  %62 = call i32 @reg_read(i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %74

63:                                               ; preds = %2
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @HV_X86_R14, align 4
  %66 = call i32 @reg_read(i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %2
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @HV_X86_R15, align 4
  %70 = call i32 @reg_read(i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %74

71:                                               ; preds = %2
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @xhyve_abort(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %7, %11, %15, %19, %23, %27, %31, %35, %39, %43, %47, %51, %55, %59, %63, %67, %71
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @vmcs_read(i32, i32) #1

declare dso_local i32 @xhyve_abort(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
