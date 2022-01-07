; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_rfb.c_rfb_thr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_rfb.c_rfb_thr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"rfb\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"pthread_sigmask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rfb_thr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rfb_thr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rfb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 @pthread_setname_np(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.rfb_softc*
  store %struct.rfb_softc* %8, %struct.rfb_softc** %3, align 8
  %9 = call i32 @sigemptyset(i32* %4)
  %10 = load i32, i32* @SIGPIPE, align 4
  %11 = call i32 @sigaddset(i32* %4, i32 %10)
  %12 = load i32, i32* @SIG_BLOCK, align 4
  %13 = call i64 @pthread_sigmask(i32 %12, i32* %4, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i8* null

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %45, %17
  %19 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %20 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %22 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %24 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %23, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @accept(i32 %27, i32* null, i32* null)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %30 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %18
  %34 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %35 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %34, i32 0, i32 4
  %36 = call i32 @pthread_mutex_lock(i32* %35)
  %37 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %37, i32 0, i32 5
  %39 = call i32 @pthread_cond_signal(i32* %38)
  %40 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %40, i32 0, i32 4
  %42 = call i32 @pthread_mutex_unlock(i32* %41)
  %43 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %44 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %33, %18
  %46 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @rfb_handle(%struct.rfb_softc* %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @close(i32 %49)
  br label %18
}

declare dso_local i32 @pthread_setname_np(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @rfb_handle(%struct.rfb_softc*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
