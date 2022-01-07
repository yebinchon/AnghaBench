; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_set_guest_reg.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_set_guest_reg.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @vmx_set_guest_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_set_guest_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %88 [
    i32 0, label %8
    i32 1, label %13
    i32 2, label %18
    i32 3, label %23
    i32 4, label %28
    i32 5, label %33
    i32 6, label %38
    i32 7, label %43
    i32 8, label %48
    i32 9, label %53
    i32 10, label %58
    i32 11, label %63
    i32 12, label %68
    i32 13, label %73
    i32 14, label %78
    i32 15, label %83
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @HV_X86_RAX, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @reg_write(i32 %9, i32 %10, i32 %11)
  br label %91

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @HV_X86_RCX, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @reg_write(i32 %14, i32 %15, i32 %16)
  br label %91

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @HV_X86_RDX, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @reg_write(i32 %19, i32 %20, i32 %21)
  br label %91

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @HV_X86_RBX, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @reg_write(i32 %24, i32 %25, i32 %26)
  br label %91

28:                                               ; preds = %3
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @VMCS_GUEST_RSP, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @vmcs_write(i32 %29, i32 %30, i32 %31)
  br label %91

33:                                               ; preds = %3
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @HV_X86_RBP, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @reg_write(i32 %34, i32 %35, i32 %36)
  br label %91

38:                                               ; preds = %3
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @HV_X86_RSI, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @reg_write(i32 %39, i32 %40, i32 %41)
  br label %91

43:                                               ; preds = %3
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @HV_X86_RDI, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @reg_write(i32 %44, i32 %45, i32 %46)
  br label %91

48:                                               ; preds = %3
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @HV_X86_R8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @reg_write(i32 %49, i32 %50, i32 %51)
  br label %91

53:                                               ; preds = %3
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @HV_X86_R9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @reg_write(i32 %54, i32 %55, i32 %56)
  br label %91

58:                                               ; preds = %3
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @HV_X86_R10, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @reg_write(i32 %59, i32 %60, i32 %61)
  br label %91

63:                                               ; preds = %3
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @HV_X86_R11, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @reg_write(i32 %64, i32 %65, i32 %66)
  br label %91

68:                                               ; preds = %3
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @HV_X86_R12, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @reg_write(i32 %69, i32 %70, i32 %71)
  br label %91

73:                                               ; preds = %3
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @HV_X86_R13, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @reg_write(i32 %74, i32 %75, i32 %76)
  br label %91

78:                                               ; preds = %3
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @HV_X86_R14, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @reg_write(i32 %79, i32 %80, i32 %81)
  br label %91

83:                                               ; preds = %3
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @HV_X86_R15, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @reg_write(i32 %84, i32 %85, i32 %86)
  br label %91

88:                                               ; preds = %3
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @xhyve_abort(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18, %13, %8
  ret void
}

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @vmcs_write(i32, i32, i32) #1

declare dso_local i32 @xhyve_abort(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
