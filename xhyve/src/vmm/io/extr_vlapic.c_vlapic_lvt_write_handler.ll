; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_lvt_write_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_lvt_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32*, %struct.LAPIC* }
%struct.LAPIC = type { i32 }

@APIC_SVR_ENABLE = common dso_local global i32 0, align 4
@APIC_LVT_M = common dso_local global i32 0, align 4
@APIC_LVT_DS = common dso_local global i32 0, align 4
@APIC_LVT_VECTOR = common dso_local global i32 0, align 4
@APIC_LVTT_TM = common dso_local global i32 0, align 4
@APIC_LVT_TM = common dso_local global i32 0, align 4
@APIC_LVT_RIRR = common dso_local global i32 0, align 4
@APIC_LVT_IIPP = common dso_local global i32 0, align 4
@APIC_LVT_DM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_lvt_write_handler(%struct.vlapic* %0, i32 %1) #0 {
  %3 = alloca %struct.vlapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.LAPIC*, align 8
  %9 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %11 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %10, i32 0, i32 1
  %12 = load %struct.LAPIC*, %struct.LAPIC** %11, align 8
  store %struct.LAPIC* %12, %struct.LAPIC** %8, align 8
  %13 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32* @vlapic_get_lvtptr(%struct.vlapic* %13, i32 %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @lvt_off_to_idx(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %21 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @APIC_SVR_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @APIC_LVT_M, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* @APIC_LVT_M, align 4
  %32 = load i32, i32* @APIC_LVT_DS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @APIC_LVT_VECTOR, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %50 [
    i32 128, label %37
    i32 131, label %41
    i32 130, label %42
    i32 129, label %42
  ]

37:                                               ; preds = %30
  %38 = load i32, i32* @APIC_LVTT_TM, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %54

41:                                               ; preds = %30
  br label %54

42:                                               ; preds = %30, %30
  %43 = load i32, i32* @APIC_LVT_TM, align 4
  %44 = load i32, i32* @APIC_LVT_RIRR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @APIC_LVT_IIPP, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %30, %42
  %51 = load i32, i32* @APIC_LVT_DM, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %41, %37
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %61 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @atomic_store_rel_32(i32* %65, i32 %66)
  ret void
}

declare dso_local i32* @vlapic_get_lvtptr(%struct.vlapic*, i32) #1

declare dso_local i32 @lvt_off_to_idx(i32) #1

declare dso_local i32 @atomic_store_rel_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
