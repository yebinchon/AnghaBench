; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_calcdest.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_calcdest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vlapic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@APIC_DFR_MODEL_MASK = common dso_local global i32 0, align 4
@APIC_DFR_MODEL_FLAT = common dso_local global i32 0, align 4
@APIC_DFR_MODEL_CLUSTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"vlapic has bad logical model %x - cannot deliver interrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32*, i32, i32, i32, i32)* @vlapic_calcdest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_calcdest(%struct.vm* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vm*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vlapic*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %35, label %29

29:                                               ; preds = %26, %6
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %26
  %36 = load %struct.vm*, %struct.vm** %7, align 8
  %37 = call i32 @vm_active_cpus(%struct.vm* %36)
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %155

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @CPU_ZERO(i32* %43)
  %45 = load %struct.vm*, %struct.vm** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @vm_apicid2vcpuid(%struct.vm* %45, i32 %46)
  store i32 %47, i32* %23, align 4
  %48 = load i32, i32* %23, align 4
  %49 = load i32, i32* @VM_MAXCPU, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %23, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @CPU_SET(i32 %52, i32* %53)
  br label %55

55:                                               ; preds = %51, %42
  br label %155

56:                                               ; preds = %39
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 255
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 16
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 65535
  store i32 %65, i32* %19, align 4
  br label %72

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = ashr i32 %67, 4
  %69 = and i32 %68, 15
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 15
  store i32 %71, i32* %19, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @CPU_ZERO(i32* %73)
  %75 = load %struct.vm*, %struct.vm** %7, align 8
  %76 = call i32 @vm_active_cpus(%struct.vm* %75)
  store i32 %76, i32* %22, align 4
  br label %77

77:                                               ; preds = %153, %135, %132, %72
  %78 = call i32 @CPU_FFS(i32* %22)
  store i32 %78, i32* %23, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %154

80:                                               ; preds = %77
  %81 = load i32, i32* %23, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %23, align 4
  %84 = call i32 @CPU_CLR(i32 %83, i32* %22)
  %85 = load %struct.vm*, %struct.vm** %7, align 8
  %86 = load i32, i32* %23, align 4
  %87 = call %struct.vlapic* @vm_lapic(%struct.vm* %85, i32 %86)
  store %struct.vlapic* %87, %struct.vlapic** %13, align 8
  %88 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %89 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %14, align 4
  %93 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %94 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @APIC_DFR_MODEL_MASK, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @APIC_DFR_MODEL_FLAT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %80
  %104 = load i32, i32* %15, align 4
  %105 = ashr i32 %104, 24
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %20, align 4
  br label %140

107:                                              ; preds = %80
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @APIC_DFR_MODEL_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @APIC_DFR_MODEL_CLUSTER, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %107
  %114 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %115 = call i64 @x2apic(%struct.vlapic* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* %15, align 4
  %119 = ashr i32 %118, 16
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %15, align 4
  %121 = and i32 %120, 65535
  store i32 %121, i32* %16, align 4
  br label %128

122:                                              ; preds = %113
  %123 = load i32, i32* %15, align 4
  %124 = ashr i32 %123, 28
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %15, align 4
  %126 = ashr i32 %125, 24
  %127 = and i32 %126, 15
  store i32 %127, i32* %16, align 4
  br label %128

128:                                              ; preds = %122, %117
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %21, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %77

133:                                              ; preds = %128
  %134 = load i32, i32* %19, align 4
  store i32 %134, i32* %20, align 4
  br label %139

135:                                              ; preds = %107
  %136 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @VLAPIC_CTR1(%struct.vlapic* %136, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %77

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %103
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %16, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load i32, i32* %23, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @CPU_SET(i32 %146, i32* %147)
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %154

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152, %140
  br label %77

154:                                              ; preds = %151, %77
  br label %155

155:                                              ; preds = %35, %154, %55
  ret void
}

declare dso_local i32 @vm_active_cpus(%struct.vm*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @vm_apicid2vcpuid(%struct.vm*, i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

declare dso_local %struct.vlapic* @vm_lapic(%struct.vm*, i32) #1

declare dso_local i64 @x2apic(%struct.vlapic*) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
