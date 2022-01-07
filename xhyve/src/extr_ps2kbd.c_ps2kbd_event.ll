; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_ps2kbd.c_ps2kbd_event.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_ps2kbd.c_ps2kbd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2kbd_softc = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@PS2KBD_FIFOSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @ps2kbd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps2kbd_event(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ps2kbd_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.ps2kbd_softc*
  store %struct.ps2kbd_softc* %10, %struct.ps2kbd_softc** %7, align 8
  %11 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %7, align 8
  %12 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %11, i32 0, i32 1
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %7, align 8
  %15 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %7, align 8
  %20 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %19, i32 0, i32 1
  %21 = call i32 @pthread_mutex_unlock(i32* %20)
  br label %44

22:                                               ; preds = %3
  %23 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PS2KBD_FIFOSZ, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ps2kbd_keysym_queue(%struct.ps2kbd_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %7, align 8
  %35 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %34, i32 0, i32 1
  %36 = call i32 @pthread_mutex_unlock(i32* %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %22
  %40 = load %struct.ps2kbd_softc*, %struct.ps2kbd_softc** %7, align 8
  %41 = getelementptr inbounds %struct.ps2kbd_softc, %struct.ps2kbd_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @atkbdc_event(i32 %42, i32 1)
  br label %44

44:                                               ; preds = %18, %39, %22
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ps2kbd_keysym_queue(%struct.ps2kbd_softc*, i32, i32) #1

declare dso_local i32 @atkbdc_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
