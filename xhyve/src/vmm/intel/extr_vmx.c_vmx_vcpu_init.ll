; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i8*, i64 }

@HV_VCPU_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"hv_vcpu_create failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"vcpu id mismatch\0A\00", align 1
@MSR_GSBASE = common dso_local global i32 0, align 4
@MSR_FSBASE = common dso_local global i32 0, align 4
@MSR_SYSENTER_CS_MSR = common dso_local global i32 0, align 4
@MSR_SYSENTER_ESP_MSR = common dso_local global i32 0, align 4
@MSR_SYSENTER_EIP_MSR = common dso_local global i32 0, align 4
@MSR_TSC = common dso_local global i32 0, align 4
@MSR_IA32_TSC_AUX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"vmx_vcpu_init: error setting guest msr access\0A\00", align 1
@VMCS_PIN_BASED_CTLS = common dso_local global i32 0, align 4
@pinbased_ctls = common dso_local global i8* null, align 8
@VMCS_PRI_PROC_BASED_CTLS = common dso_local global i32 0, align 4
@procbased_ctls = common dso_local global i8* null, align 8
@VMCS_SEC_PROC_BASED_CTLS = common dso_local global i32 0, align 4
@procbased_ctls2 = common dso_local global i8* null, align 8
@VMCS_EXIT_CTLS = common dso_local global i32 0, align 4
@exit_ctls = common dso_local global i8* null, align 8
@VMCS_ENTRY_CTLS = common dso_local global i32 0, align 4
@entry_ctls = common dso_local global i8* null, align 8
@IDT_MC = common dso_local global i32 0, align 4
@VMCS_EXCEPTION_BITMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"vmx_setup_cr0_shadow %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"vmx_setup_cr4_shadow %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @vmx_vcpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_vcpu_init(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vmx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.vmx*
  store %struct.vmx* %10, %struct.vmx** %6, align 8
  %11 = load i32, i32* @HV_VCPU_DEFAULT, align 4
  %12 = call i64 @hv_vcpu_create(i64* %7, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @xhyve_abort(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @xhyve_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @MSR_GSBASE, align 4
  %26 = call i64 @hv_vcpu_enable_native_msr(i64 %24, i32 %25, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @MSR_FSBASE, align 4
  %31 = call i64 @hv_vcpu_enable_native_msr(i64 %29, i32 %30, i32 1)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @MSR_SYSENTER_CS_MSR, align 4
  %36 = call i64 @hv_vcpu_enable_native_msr(i64 %34, i32 %35, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @MSR_SYSENTER_ESP_MSR, align 4
  %41 = call i64 @hv_vcpu_enable_native_msr(i64 %39, i32 %40, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @MSR_SYSENTER_EIP_MSR, align 4
  %46 = call i64 @hv_vcpu_enable_native_msr(i64 %44, i32 %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* @MSR_TSC, align 4
  %51 = call i64 @hv_vcpu_enable_native_msr(i64 %49, i32 %50, i32 1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* @MSR_IA32_TSC_AUX, align 4
  %56 = call i64 @hv_vcpu_enable_native_msr(i64 %54, i32 %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %48, %43, %38, %33, %28, %23
  %59 = call i32 (i8*, ...) @xhyve_abort(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load %struct.vmx*, %struct.vmx** %6, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @vmx_msr_guest_init(%struct.vmx* %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @VMCS_PIN_BASED_CTLS, align 4
  %66 = load i8*, i8** @pinbased_ctls, align 8
  %67 = call i32 @vmcs_write(i32 %64, i32 %65, i8* %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @VMCS_PRI_PROC_BASED_CTLS, align 4
  %70 = load i8*, i8** @procbased_ctls, align 8
  %71 = call i32 @vmcs_write(i32 %68, i32 %69, i8* %70)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @VMCS_SEC_PROC_BASED_CTLS, align 4
  %74 = load i8*, i8** @procbased_ctls2, align 8
  %75 = call i32 @vmcs_write(i32 %72, i32 %73, i8* %74)
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @VMCS_EXIT_CTLS, align 4
  %78 = load i8*, i8** @exit_ctls, align 8
  %79 = call i32 @vmcs_write(i32 %76, i32 %77, i8* %78)
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @VMCS_ENTRY_CTLS, align 4
  %82 = load i8*, i8** @entry_ctls, align 8
  %83 = call i32 @vmcs_write(i32 %80, i32 %81, i8* %82)
  %84 = call i64 (...) @vcpu_trace_exceptions()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %60
  store i8* inttoptr (i64 4294967295 to i8*), i8** %5, align 8
  br label %92

87:                                               ; preds = %60
  %88 = load i32, i32* @IDT_MC, align 4
  %89 = shl i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  store i8* %91, i8** %5, align 8
  br label %92

92:                                               ; preds = %87, %86
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @VMCS_EXCEPTION_BITMAP, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @vmcs_write(i32 %93, i32 %94, i8* %95)
  %97 = load %struct.vmx*, %struct.vmx** %6, align 8
  %98 = getelementptr inbounds %struct.vmx, %struct.vmx* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load i8*, i8** @procbased_ctls, align 8
  %105 = load %struct.vmx*, %struct.vmx** %6, align 8
  %106 = getelementptr inbounds %struct.vmx, %struct.vmx* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i8* %104, i8** %111, align 8
  %112 = load i8*, i8** @procbased_ctls2, align 8
  %113 = load %struct.vmx*, %struct.vmx** %6, align 8
  %114 = getelementptr inbounds %struct.vmx, %struct.vmx* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i8* %112, i8** %119, align 8
  %120 = load %struct.vmx*, %struct.vmx** %6, align 8
  %121 = getelementptr inbounds %struct.vmx, %struct.vmx* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 -1, i32* %126, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @vmx_setup_cr0_shadow(i32 %127, i32 1610612752)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %92
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (i8*, ...) @xhyve_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %131, %92
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @vmx_setup_cr4_shadow(i32 %135, i32 0)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (i8*, ...) @xhyve_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %139, %134
  ret i32 0
}

declare dso_local i64 @hv_vcpu_create(i64*, i32) #1

declare dso_local i32 @xhyve_abort(i8*, ...) #1

declare dso_local i64 @hv_vcpu_enable_native_msr(i64, i32, i32) #1

declare dso_local i32 @vmx_msr_guest_init(%struct.vmx*, i32) #1

declare dso_local i32 @vmcs_write(i32, i32, i8*) #1

declare dso_local i64 @vcpu_trace_exceptions(...) #1

declare dso_local i32 @vmx_setup_cr0_shadow(i32, i32) #1

declare dso_local i32 @vmx_setup_cr4_shadow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
