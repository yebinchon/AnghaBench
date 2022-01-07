; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_scan_Next.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_scan_Next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double, i32*, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@MSTRTIME_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%.1f MHz (%d services)\0A~%s remaining\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Scan ETA %s | %f\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Scanning DVB\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @scan_Next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_Next(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = call i64 @scan_IsCancelled(%struct.TYPE_11__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %3, align 4
  br label %113

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = call i32 @scan_tuner_config_Init(%struct.TYPE_10__* %19, i32* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = call i32 @Scan_GetNextTunerConfig(%struct.TYPE_11__* %23, %struct.TYPE_10__* %24, double* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %113

30:                                               ; preds = %18
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = call i64 @scan_CountServices(%struct.TYPE_11__* %31)
  store i64 %32, i64* %8, align 8
  %33 = load double, double* %6, align 8
  %34 = fcmp ogt double %33, 5.000000e-03
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = call double (...) @vlc_tick_now()
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = fsub double %36, %39
  %41 = load double, double* %6, align 8
  %42 = fdiv double 1.000000e+00, %41
  %43 = fsub double %42, 1.000000e+00
  %44 = fmul double %40, %43
  br label %46

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %35
  %47 = phi double [ %44, %35 ], [ -1.000000e+00, %45 ]
  %48 = fptosi double %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @MSTRTIME_MAX_SIZE, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %10, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %11, align 8
  %53 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i8* %53, i8** %12, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %60, 1000000
  %62 = call i32 @secstotimestr(i8* %52, i32 %61)
  %63 = load double, double* %6, align 8
  %64 = fmul double %63, 1.000000e+02
  %65 = call i32 @msg_Info(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %62, double %64)
  br label %66

66:                                               ; preds = %56, %46
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load double, double* %6, align 8
  %76 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sitofp i64 %81 to double
  %83 = fdiv double %82, 1.000000e+06
  %84 = load i64, i64* %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sdiv i32 %85, 1000000
  %87 = call i32 @secstotimestr(i8* %52, i32 %86)
  %88 = call i32* @vlc_dialog_display_progress(i32 %74, i32 0, double %75, i8* %76, i8* %77, i8* %78, double %83, i64 %84, i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  br label %110

91:                                               ; preds = %66
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load double, double* %6, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sitofp i64 %102 to double
  %104 = fdiv double %103, 1.000000e+06
  %105 = load i64, i64* %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sdiv i32 %106, 1000000
  %108 = call i32 @secstotimestr(i8* %52, i32 %107)
  %109 = call i32 @vlc_dialog_update_progress_text(i32 %94, i32* %97, double %98, i8* %99, double %104, i64 %105, i32 %108)
  br label %110

110:                                              ; preds = %91, %71
  %111 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %111, i32* %3, align 4
  %112 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %112)
  br label %113

113:                                              ; preds = %110, %28, %16
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @scan_IsCancelled(%struct.TYPE_11__*) #1

declare dso_local i32 @scan_tuner_config_Init(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @Scan_GetNextTunerConfig(%struct.TYPE_11__*, %struct.TYPE_10__*, double*) #1

declare dso_local i64 @scan_CountServices(%struct.TYPE_11__*) #1

declare dso_local double @vlc_tick_now(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @msg_Info(i32, i8*, i32, double) #1

declare dso_local i32 @secstotimestr(i8*, i32) #1

declare dso_local i32* @vlc_dialog_display_progress(i32, i32, double, i8*, i8*, i8*, double, i64, i32) #1

declare dso_local i32 @vlc_dialog_update_progress_text(i32, i32*, double, i8*, double, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
