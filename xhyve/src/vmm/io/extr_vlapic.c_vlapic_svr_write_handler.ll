; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_svr_write_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_svr_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32, %struct.LAPIC* }
%struct.LAPIC = type { i32 }

@APIC_SVR_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"vlapic is software-disabled\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"vlapic is software-enabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_svr_write_handler(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca %struct.LAPIC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %7 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %8 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %7, i32 0, i32 2
  %9 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  store %struct.LAPIC* %9, %struct.LAPIC** %3, align 8
  %10 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %11 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %14 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %18 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @APIC_SVR_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @APIC_SVR_ENABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %33 = call i32 @VLAPIC_CTR0(%struct.vlapic* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %35 = call i32 @VLAPIC_TIMER_LOCK(%struct.vlapic* %34)
  %36 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %37 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %36, i32 0, i32 1
  %38 = call i32 @callout_stop(i32* %37)
  %39 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %40 = call i32 @VLAPIC_TIMER_UNLOCK(%struct.vlapic* %39)
  %41 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %42 = call i32 @vlapic_mask_lvts(%struct.vlapic* %41)
  br label %53

43:                                               ; preds = %26
  %44 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %45 = call i32 @VLAPIC_CTR0(%struct.vlapic* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %47 = call i64 @vlapic_periodic_timer(%struct.vlapic* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %51 = call i32 @vlapic_icrtmr_write_handler(%struct.vlapic* %50)
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %1
  ret void
}

declare dso_local i32 @VLAPIC_CTR0(%struct.vlapic*, i8*) #1

declare dso_local i32 @VLAPIC_TIMER_LOCK(%struct.vlapic*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @VLAPIC_TIMER_UNLOCK(%struct.vlapic*) #1

declare dso_local i32 @vlapic_mask_lvts(%struct.vlapic*) #1

declare dso_local i64 @vlapic_periodic_timer(%struct.vlapic*) #1

declare dso_local i32 @vlapic_icrtmr_write_handler(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
