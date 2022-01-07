; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendFillScanParameter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendFillScanParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@FE_OFDM = common dso_local global i64 0, align 8
@FE_QAM = common dso_local global i64 0, align 8
@FE_QPSK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"frontend scanning not supported\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FrontendFillScanParameter(i32* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FE_OFDM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @ScanParametersDvbT(i32* %19, %struct.TYPE_10__* %20, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FE_QAM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @ScanParametersDvbC(i32* %31, %struct.TYPE_10__* %32, i32* %33)
  store i32 %34, i32* %4, align 4
  br label %53

35:                                               ; preds = %23
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FE_QPSK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @ScanParametersDvbS(i32* %43, %struct.TYPE_10__* %44, i32* %45)
  store i32 %46, i32* %4, align 4
  br label %53

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @msg_Err(i32* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %42, %30, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ScanParametersDvbT(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ScanParametersDvbC(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ScanParametersDvbS(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
