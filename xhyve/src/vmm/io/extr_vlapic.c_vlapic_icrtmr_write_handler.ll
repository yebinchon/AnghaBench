; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_icrtmr_write_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_icrtmr_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32, i32, i32, %struct.LAPIC* }
%struct.LAPIC = type { i64 }

@vlapic_callout_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_icrtmr_write_handler(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca %struct.LAPIC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %6 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %7 = call i32 @VLAPIC_TIMER_LOCK(%struct.vlapic* %6)
  %8 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %9 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %8, i32 0, i32 4
  %10 = load %struct.LAPIC*, %struct.LAPIC** %9, align 8
  store %struct.LAPIC* %10, %struct.LAPIC** %3, align 8
  %11 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %12 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %15 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %18 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %20 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %19, i32 0, i32 1
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @bintime_mul(i32* %20, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %1
  %26 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %27 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %26, i32 0, i32 2
  %28 = call i32 @binuptime(i32* %27)
  %29 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %30 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %29, i32 0, i32 2
  %31 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %32 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %31, i32 0, i32 1
  %33 = call i32 @bintime_add(i32* %30, i32* %32)
  %34 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %35 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bttosbt(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %39 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @vlapic_callout_handler, align 4
  %42 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %43 = call i32 @callout_reset_sbt(i32* %39, i32 %40, i32 0, i32 %41, %struct.vlapic* %42, i32 0)
  br label %48

44:                                               ; preds = %1
  %45 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %46 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %45, i32 0, i32 0
  %47 = call i32 @callout_stop(i32* %46)
  br label %48

48:                                               ; preds = %44, %25
  %49 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %50 = call i32 @VLAPIC_TIMER_UNLOCK(%struct.vlapic* %49)
  ret void
}

declare dso_local i32 @VLAPIC_TIMER_LOCK(%struct.vlapic*) #1

declare dso_local i32 @bintime_mul(i32*, i64) #1

declare dso_local i32 @binuptime(i32*) #1

declare dso_local i32 @bintime_add(i32*, i32*) #1

declare dso_local i32 @bttosbt(i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.vlapic*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @VLAPIC_TIMER_UNLOCK(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
