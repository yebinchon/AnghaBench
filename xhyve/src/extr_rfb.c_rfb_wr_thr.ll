; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_rfb.c_rfb_wr_thr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_rfb.c_rfb_wr_thr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"rfbout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rfb_wr_thr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rfb_wr_thr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rfb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = call i32 @pthread_setname_np(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.rfb_softc*
  store %struct.rfb_softc* %13, %struct.rfb_softc** %4, align 8
  %14 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %15 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %58, %1
  %20 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %21 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %19
  %25 = call i32 @FD_ZERO(i32* %5)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @FD_SET(i32 %26, i32* %5)
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 10000, i32* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @select(i32 %31, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i8* null, i8** %2, align 8
  br label %60

36:                                               ; preds = %24
  %37 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  %38 = call i32 @timeval_delta(%struct.timeval* %7, %struct.timeval* %6)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 40000
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @rfb_send_screen(%struct.rfb_softc* %48, i32 %49, i32 0)
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i8* null, i8** %2, align 8
  br label %60

53:                                               ; preds = %41
  br label %58

54:                                               ; preds = %36
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 40000, %55
  %57 = call i32 @usleep(i32 %56)
  br label %58

58:                                               ; preds = %54, %53
  br label %19

59:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %60

60:                                               ; preds = %59, %52, %35
  %61 = load i8*, i8** %2, align 8
  ret i8* %61
}

declare dso_local i32 @pthread_setname_np(i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @timeval_delta(%struct.timeval*, %struct.timeval*) #1

declare dso_local i64 @rfb_send_screen(%struct.rfb_softc*, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
