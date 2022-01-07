; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { %struct.TYPE_2__*, i32, i32, %struct.vm* }
%struct.TYPE_2__ = type { i32, i32, %struct.vhpet_callout_arg, i32 }
%struct.vhpet_callout_arg = type { i32, %struct.vhpet* }
%struct.vm = type { i32 }
%struct.bintime = type { i32 }

@HPET_FREQ = common dso_local global i32 0, align 4
@VHPET_NUM_TIMERS = common dso_local global i32 0, align 4
@HPET_TCAP_PER_INT = common dso_local global i32 0, align 4
@HPET_TCAP_FSB_INT_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vhpet* @vhpet_init(%struct.vm* %0) #0 {
  %2 = alloca %struct.vm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vhpet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vhpet_callout_arg*, align 8
  %8 = alloca %struct.bintime, align 4
  store %struct.vm* %0, %struct.vm** %2, align 8
  %9 = call %struct.vhpet* @malloc(i32 24)
  store %struct.vhpet* %9, %struct.vhpet** %5, align 8
  %10 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %11 = call i32 @assert(%struct.vhpet* %10)
  %12 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %13 = call i32 @bzero(%struct.vhpet* %12, i32 24)
  %14 = load %struct.vm*, %struct.vm** %2, align 8
  %15 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %16 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %15, i32 0, i32 3
  store %struct.vm* %14, %struct.vm** %16, align 8
  %17 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %18 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %17, i32 0, i32 2
  %19 = call i32 @pthread_mutex_init(i32* %18, i32* null)
  %20 = load i32, i32* @HPET_FREQ, align 4
  %21 = call i32 @FREQ2BT(i32 %20, %struct.bintime* %8)
  %22 = getelementptr inbounds %struct.bintime, %struct.bintime* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bttosbt(i32 %23)
  %25 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %26 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vm*, %struct.vm** %2, align 8
  %28 = call i32 @vioapic_pincount(%struct.vm* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 24
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 15728640, i32* %6, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %31
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %96, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @VHPET_NUM_TIMERS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %99

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 32
  %41 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %42 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 8
  %48 = load i32, i32* @HPET_TCAP_PER_INT, align 4
  %49 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %50 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %48
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @HPET_TCAP_FSB_INT_DEL, align 4
  %59 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %60 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %58
  store i32 %67, i32* %65, align 8
  %68 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %69 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 -1, i32* %74, align 4
  %75 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %76 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = call i32 @callout_init(i32* %81, i32 1)
  %83 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %84 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store %struct.vhpet_callout_arg* %89, %struct.vhpet_callout_arg** %7, align 8
  %90 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %91 = load %struct.vhpet_callout_arg*, %struct.vhpet_callout_arg** %7, align 8
  %92 = getelementptr inbounds %struct.vhpet_callout_arg, %struct.vhpet_callout_arg* %91, i32 0, i32 1
  store %struct.vhpet* %90, %struct.vhpet** %92, align 8
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.vhpet_callout_arg*, %struct.vhpet_callout_arg** %7, align 8
  %95 = getelementptr inbounds %struct.vhpet_callout_arg, %struct.vhpet_callout_arg* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %38
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %34

99:                                               ; preds = %34
  %100 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  ret %struct.vhpet* %100
}

declare dso_local %struct.vhpet* @malloc(i32) #1

declare dso_local i32 @assert(%struct.vhpet*) #1

declare dso_local i32 @bzero(%struct.vhpet*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @FREQ2BT(i32, %struct.bintime*) #1

declare dso_local i32 @bttosbt(i32) #1

declare dso_local i32 @vioapic_pincount(%struct.vm*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
