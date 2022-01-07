; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_idummy.c_OpenDemux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_idummy.c_OpenDemux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"command `nop'\00", align 1
@DemuxNoOp = common dso_local global i8* null, align 8
@DemuxControl = common dso_local global i8* null, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"command `quit'\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"command `pause'\00", align 1
@DemuxHold = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"pause:\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"command `pause %f'\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@DemuxPause = common dso_local global i8* null, align 8
@ControlPause = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"unknown command `%s'\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenDemux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDemux(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %15, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strcasecmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %76, %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Info(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** @DemuxNoOp, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @DemuxControl, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %29, i32* %2, align 4
  br label %108

30:                                               ; preds = %1
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Info(%struct.TYPE_7__* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i8*, i8** @DemuxNoOp, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @DemuxControl, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = call i32 @vlc_object_instance(%struct.TYPE_7__* %43)
  %45 = call i32 @libvlc_Quit(i32 %44)
  %46 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %46, i32* %2, align 4
  br label %108

47:                                               ; preds = %30
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcasecmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Info(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i8*, i8** @DemuxHold, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @DemuxControl, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %60, i32* %2, align 4
  br label %108

61:                                               ; preds = %47
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @strncasecmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %103, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 6
  %68 = call double @us_atof(i8* %67)
  store double %68, double* %6, align 8
  %69 = load double, double* %6, align 8
  %70 = call i64 @vlc_tick_from_sec(double %69)
  store i64 %70, i64* %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = load double, double* %6, align 8
  %73 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Info(%struct.TYPE_7__* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), double %72)
  %74 = load i64, i64* %7, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %20

77:                                               ; preds = %65
  %78 = load i32*, i32** %3, align 8
  %79 = call %struct.TYPE_8__* @vlc_obj_malloc(i32* %78, i32 16)
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %8, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = icmp eq %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %83, i32* %2, align 4
  br label %108

84:                                               ; preds = %77
  %85 = call i64 (...) @vlc_tick_now()
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %95, align 8
  %96 = load i8*, i8** @DemuxPause, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @ControlPause, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %102, i32* %2, align 4
  br label %108

103:                                              ; preds = %61
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @msg_Err(%struct.TYPE_7__* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %84, %82, %51, %34, %20
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @libvlc_Quit(i32) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_7__*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local double @us_atof(i8*) #1

declare dso_local i64 @vlc_tick_from_sec(double) #1

declare dso_local %struct.TYPE_8__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
