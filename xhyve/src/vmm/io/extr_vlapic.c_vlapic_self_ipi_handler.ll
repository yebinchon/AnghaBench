; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_self_ipi_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_self_ipi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"SELF_IPI does not exist in xAPIC mode\00", align 1
@IPIS_SENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"vlapic self-ipi %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_self_ipi_handler(%struct.vlapic* %0, i32 %1) #0 {
  %3 = alloca %struct.vlapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %7 = call i32 @x2apic(%struct.vlapic* %6)
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 255
  store i32 %10, i32* %5, align 4
  %11 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %12 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %15 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @lapic_intr_edge(i32 %13, i32 %16, i32 %17)
  %19 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %20 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %23 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IPIS_SENT, align 4
  %26 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %27 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vmm_stat_array_incr(i32 %21, i32 %24, i32 %25, i32 %28, i32 1)
  %30 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @VLAPIC_CTR1(%struct.vlapic* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @x2apic(%struct.vlapic*) #1

declare dso_local i32 @lapic_intr_edge(i32, i32, i32) #1

declare dso_local i32 @vmm_stat_array_incr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
