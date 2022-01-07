; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_handle_apic_write.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_handle_apic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }
%struct.vlapic = type { i64 }

@HANDLED = common dso_local global i32 0, align 4
@APIC_OFFSET_SELF_IPI = common dso_local global i32 0, align 4
@UNHANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32, %struct.vlapic*, i32)* @vmx_handle_apic_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_handle_apic_write(%struct.vmx* %0, i32 %1, %struct.vlapic* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlapic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.vlapic* %2, %struct.vlapic** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @HANDLED, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @APIC_WRITE_OFFSET(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.vmx*, %struct.vmx** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @apic_access_virtualization(%struct.vmx* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %4
  %24 = load %struct.vmx*, %struct.vmx** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @x2apic_virtualization(%struct.vmx* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @APIC_OFFSET_SELF_IPI, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %34 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* @APIC_OFFSET_SELF_IPI, align 4
  %39 = sdiv i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %14, align 4
  %43 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @vlapic_self_ipi_handler(%struct.vlapic* %43, i32 %44)
  %46 = load i32, i32* @HANDLED, align 4
  store i32 %46, i32* %5, align 4
  br label %91

47:                                               ; preds = %28, %23
  %48 = load i32, i32* @UNHANDLED, align 4
  store i32 %48, i32* %5, align 4
  br label %91

49:                                               ; preds = %4
  %50 = load i32, i32* %12, align 4
  switch i32 %50, label %87 [
    i32 137, label %51
    i32 136, label %54
    i32 141, label %57
    i32 132, label %60
    i32 139, label %63
    i32 138, label %66
    i32 142, label %77
    i32 128, label %77
    i32 131, label %77
    i32 133, label %77
    i32 135, label %77
    i32 134, label %77
    i32 140, label %77
    i32 129, label %81
    i32 130, label %84
  ]

51:                                               ; preds = %49
  %52 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %53 = call i32 @vlapic_id_write_handler(%struct.vlapic* %52)
  br label %89

54:                                               ; preds = %49
  %55 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %56 = call i32 @vlapic_ldr_write_handler(%struct.vlapic* %55)
  br label %89

57:                                               ; preds = %49
  %58 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %59 = call i32 @vlapic_dfr_write_handler(%struct.vlapic* %58)
  br label %89

60:                                               ; preds = %49
  %61 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %62 = call i32 @vlapic_svr_write_handler(%struct.vlapic* %61)
  br label %89

63:                                               ; preds = %49
  %64 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %65 = call i32 @vlapic_esr_write_handler(%struct.vlapic* %64)
  br label %89

66:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  %67 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %68 = call i32 @vlapic_icrlo_write_handler(%struct.vlapic* %67, i32* %15)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %66
  %75 = load i32, i32* @UNHANDLED, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %74, %71
  br label %89

77:                                               ; preds = %49, %49, %49, %49, %49, %49, %49
  %78 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @vlapic_lvt_write_handler(%struct.vlapic* %78, i32 %79)
  br label %89

81:                                               ; preds = %49
  %82 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %83 = call i32 @vlapic_icrtmr_write_handler(%struct.vlapic* %82)
  br label %89

84:                                               ; preds = %49
  %85 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %86 = call i32 @vlapic_dcr_write_handler(%struct.vlapic* %85)
  br label %89

87:                                               ; preds = %49
  %88 = load i32, i32* @UNHANDLED, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %87, %84, %81, %77, %76, %63, %60, %57, %54, %51
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %47, %32
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @APIC_WRITE_OFFSET(i32) #1

declare dso_local i32 @apic_access_virtualization(%struct.vmx*, i32) #1

declare dso_local i64 @x2apic_virtualization(%struct.vmx*, i32) #1

declare dso_local i32 @vlapic_self_ipi_handler(%struct.vlapic*, i32) #1

declare dso_local i32 @vlapic_id_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_ldr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_dfr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_svr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_esr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_icrlo_write_handler(%struct.vlapic*, i32*) #1

declare dso_local i32 @vlapic_lvt_write_handler(%struct.vlapic*, i32) #1

declare dso_local i32 @vlapic_icrtmr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_dcr_write_handler(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
