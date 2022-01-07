; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_atkbdc.c_atkbdc_event.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_atkbdc.c_atkbdc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbdc_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atkbdc_event(%struct.atkbdc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.atkbdc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.atkbdc_softc* %0, %struct.atkbdc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %5, i32 0, i32 0
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %12 = call i32 @atkbdc_kbd_poll(%struct.atkbdc_softc* %11)
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %15 = call i32 @atkbdc_aux_poll(%struct.atkbdc_softc* %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %17, i32 0, i32 0
  %19 = call i32 @pthread_mutex_unlock(i32* %18)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @atkbdc_kbd_poll(%struct.atkbdc_softc*) #1

declare dso_local i32 @atkbdc_aux_poll(%struct.atkbdc_softc*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
