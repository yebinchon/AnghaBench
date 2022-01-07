; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_emulate_xsetbv.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_emulate_xsetbv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }
%struct.xsave_limits = type { i32, i32 }

@HV_X86_RCX = common dso_local global i32 0, align 4
@HANDLED = common dso_local global i32 0, align 4
@VMCS_GUEST_CR4 = common dso_local global i32 0, align 4
@CR4_XSAVE = common dso_local global i32 0, align 4
@HV_X86_RDX = common dso_local global i32 0, align 4
@HV_X86_RAX = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_X87 = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_AVX = common dso_local global i32 0, align 4
@XFEATURE_AVX = common dso_local global i32 0, align 4
@XFEATURE_AVX512 = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_BNDREGS = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_BNDCSR = common dso_local global i32 0, align 4
@HV_X86_XCR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32)* @vmx_emulate_xsetbv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_emulate_xsetbv(%struct.vmx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xsave_limits*, align 8
  store %struct.vmx* %0, %struct.vmx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.xsave_limits* (...) @vmm_get_xsave_limits()
  store %struct.xsave_limits* %8, %struct.xsave_limits** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @HV_X86_RCX, align 4
  %11 = call i32 @reg_read(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.vmx*, %struct.vmx** %4, align 8
  %15 = getelementptr inbounds %struct.vmx, %struct.vmx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @vm_inject_gp(i32 %16, i32 %17)
  %19 = load i32, i32* @HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %139

20:                                               ; preds = %2
  %21 = load %struct.xsave_limits*, %struct.xsave_limits** %7, align 8
  %22 = getelementptr inbounds %struct.xsave_limits, %struct.xsave_limits* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @VMCS_GUEST_CR4, align 4
  %28 = call i32 @vmcs_read(i32 %26, i32 %27)
  %29 = load i32, i32* @CR4_XSAVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.vmx*, %struct.vmx** %4, align 8
  %34 = getelementptr inbounds %struct.vmx, %struct.vmx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @vm_inject_ud(i32 %35, i32 %36)
  %38 = load i32, i32* @HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %139

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @HV_X86_RDX, align 4
  %42 = call i32 @reg_read(i32 %40, i32 %41)
  %43 = shl i32 %42, 32
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @HV_X86_RAX, align 4
  %46 = call i32 @reg_read(i32 %44, i32 %45)
  %47 = or i32 %43, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.xsave_limits*, %struct.xsave_limits** %7, align 8
  %50 = getelementptr inbounds %struct.xsave_limits, %struct.xsave_limits* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %39
  %56 = load %struct.vmx*, %struct.vmx** %4, align 8
  %57 = getelementptr inbounds %struct.vmx, %struct.vmx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @vm_inject_gp(i32 %58, i32 %59)
  %61 = load i32, i32* @HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %139

62:                                               ; preds = %39
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @XFEATURE_ENABLED_X87, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = load %struct.vmx*, %struct.vmx** %4, align 8
  %69 = getelementptr inbounds %struct.vmx, %struct.vmx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @vm_inject_gp(i32 %70, i32 %71)
  %73 = load i32, i32* @HANDLED, align 4
  store i32 %73, i32* %3, align 4
  br label %139

74:                                               ; preds = %62
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @XFEATURE_ENABLED_AVX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @XFEATURE_AVX, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @XFEATURE_AVX, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.vmx*, %struct.vmx** %4, align 8
  %87 = getelementptr inbounds %struct.vmx, %struct.vmx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @vm_inject_gp(i32 %88, i32 %89)
  %91 = load i32, i32* @HANDLED, align 4
  store i32 %91, i32* %3, align 4
  br label %139

92:                                               ; preds = %79, %74
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @XFEATURE_AVX512, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @XFEATURE_AVX512, align 4
  %100 = load i32, i32* @XFEATURE_AVX, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = load i32, i32* @XFEATURE_AVX512, align 4
  %104 = load i32, i32* @XFEATURE_AVX, align 4
  %105 = or i32 %103, %104
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %97
  %108 = load %struct.vmx*, %struct.vmx** %4, align 8
  %109 = getelementptr inbounds %struct.vmx, %struct.vmx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @vm_inject_gp(i32 %110, i32 %111)
  %113 = load i32, i32* @HANDLED, align 4
  store i32 %113, i32* %3, align 4
  br label %139

114:                                              ; preds = %97, %92
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @XFEATURE_ENABLED_BNDREGS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @XFEATURE_ENABLED_BNDCSR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = icmp ne i32 %119, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %114
  %127 = load %struct.vmx*, %struct.vmx** %4, align 8
  %128 = getelementptr inbounds %struct.vmx, %struct.vmx* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @vm_inject_gp(i32 %129, i32 %130)
  %132 = load i32, i32* @HANDLED, align 4
  store i32 %132, i32* %3, align 4
  br label %139

133:                                              ; preds = %114
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @HV_X86_XCR0, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @reg_write(i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* @HANDLED, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %126, %107, %85, %67, %55, %32, %13
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.xsave_limits* @vmm_get_xsave_limits(...) #1

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @vm_inject_gp(i32, i32) #1

declare dso_local i32 @vmcs_read(i32, i32) #1

declare dso_local i32 @vm_inject_ud(i32, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
