; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEsRegistration.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEsRegistration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [5 x i8], i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@PMTSetupEsRegistration.p_regs = internal constant [9 x %struct.anon] [%struct.anon { [5 x i8] c"AC-3\00", i32 136, i64 132 }, %struct.anon { [5 x i8] c"EAC3\00", i32 136, i64 129 }, %struct.anon { [5 x i8] c"DTS1\00", i32 136, i64 130 }, %struct.anon { [5 x i8] c"DTS2\00", i32 136, i64 130 }, %struct.anon { [5 x i8] c"DTS3\00", i32 136, i64 130 }, %struct.anon { [5 x i8] c"BSSD\00", i32 136, i64 133 }, %struct.anon { [5 x i8] c"VC-1\00", i32 134, i64 128 }, %struct.anon { [5 x i8] c"drac\00", i32 134, i64 131 }, %struct.anon { [5 x i8] zeroinitializer, i32 135, i64 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_10__*)* @PMTSetupEsRegistration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PMTSetupEsRegistration(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %59, %3
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @PMTSetupEsRegistration.p_regs, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 135
  br i1 %18, label %19, label %62

19:                                               ; preds = %12
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @PMTSetupEsRegistration.p_regs, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %25, i64 0, i64 0
  %27 = call i64 @PMTEsHasRegistration(i32* %20, %struct.TYPE_10__* %21, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %19
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @PMTSetupEsRegistration.p_regs, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @PMTSetupEsRegistration.p_regs, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @es_format_Change(%struct.TYPE_9__* %30, i64 %36, i64 %41)
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @PMTSetupEsRegistration.p_regs, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 132
  br i1 %48, label %49, label %57

49:                                               ; preds = %29
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 135
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 129, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %49, %29
  store i32 1, i32* %4, align 4
  br label %63

58:                                               ; preds = %19
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %12

62:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @PMTEsHasRegistration(i32*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @es_format_Change(%struct.TYPE_9__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
