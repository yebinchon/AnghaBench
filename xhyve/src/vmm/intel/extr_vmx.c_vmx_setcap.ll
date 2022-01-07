; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_setcap.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmx.c_vmx_setcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@cap_halt_exit = common dso_local global i32 0, align 4
@PROCBASED_HLT_EXITING = common dso_local global i64 0, align 8
@VMCS_PRI_PROC_BASED_CTLS = common dso_local global i64 0, align 8
@cap_monitor_trap = common dso_local global i32 0, align 4
@PROCBASED_MTF = common dso_local global i64 0, align 8
@cap_pause_exit = common dso_local global i32 0, align 4
@PROCBASED_PAUSE_EXITING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"vmx_setcap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @vmx_setcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_setcap(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.vmx*
  store %struct.vmx* %16, %struct.vmx** %9, align 8
  %17 = load i32, i32* @ENOENT, align 4
  store i32 %17, i32* %14, align 4
  store i64* null, i64** %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %67 [
    i32 130, label %19
    i32 129, label %35
    i32 128, label %51
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @cap_halt_exit, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  store i32 0, i32* %14, align 4
  %23 = load %struct.vmx*, %struct.vmx** %9, align 8
  %24 = getelementptr inbounds %struct.vmx, %struct.vmx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64* %29, i64** %11, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* @PROCBASED_HLT_EXITING, align 8
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* @VMCS_PRI_PROC_BASED_CTLS, align 8
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %22, %19
  br label %69

35:                                               ; preds = %4
  %36 = load i32, i32* @cap_monitor_trap, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  store i32 0, i32* %14, align 4
  %39 = load %struct.vmx*, %struct.vmx** %9, align 8
  %40 = getelementptr inbounds %struct.vmx, %struct.vmx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64* %45, i64** %11, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* @PROCBASED_MTF, align 8
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* @VMCS_PRI_PROC_BASED_CTLS, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %38, %35
  br label %69

51:                                               ; preds = %4
  %52 = load i32, i32* @cap_pause_exit, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  %55 = load %struct.vmx*, %struct.vmx** %9, align 8
  %56 = getelementptr inbounds %struct.vmx, %struct.vmx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64* %61, i64** %11, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* @PROCBASED_PAUSE_EXITING, align 8
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* @VMCS_PRI_PROC_BASED_CTLS, align 8
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %54, %51
  br label %69

67:                                               ; preds = %4
  %68 = call i32 @xhyve_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %66, %50, %34
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %123

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %10, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %10, align 8
  br label %84

79:                                               ; preds = %72
  %80 = load i64, i64* %13, align 8
  %81 = xor i64 %80, -1
  %82 = load i64, i64* %10, align 8
  %83 = and i64 %82, %81
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %79, %75
  %85 = load i32, i32* %6, align 4
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @vmcs_write(i32 %85, i64 %86, i64 %87)
  %89 = load i64*, i64** %11, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i64, i64* %10, align 8
  %93 = load i64*, i64** %11, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %84
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = shl i32 1, %98
  %100 = load %struct.vmx*, %struct.vmx** %9, align 8
  %101 = getelementptr inbounds %struct.vmx, %struct.vmx* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %99
  store i32 %108, i32* %106, align 8
  br label %122

109:                                              ; preds = %94
  %110 = load i32, i32* %7, align 4
  %111 = shl i32 1, %110
  %112 = xor i32 %111, -1
  %113 = load %struct.vmx*, %struct.vmx** %9, align 8
  %114 = getelementptr inbounds %struct.vmx, %struct.vmx* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %112
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %109, %97
  br label %123

123:                                              ; preds = %122, %69
  %124 = load i32, i32* %14, align 4
  ret i32 %124
}

declare dso_local i32 @xhyve_abort(i8*) #1

declare dso_local i32 @vmcs_write(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
