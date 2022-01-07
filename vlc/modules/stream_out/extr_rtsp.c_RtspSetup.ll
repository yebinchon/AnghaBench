; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtsp.c_RtspSetup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtsp.c_RtspSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32*, i32*, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [13 x i8] c"rtsp-timeout\00", align 1
@RtspTimeOut = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"RTSP stream at %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"sout-rtsp-user\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"sout-rtsp-pwd\00", align 1
@HTTPD_MSG_DESCRIBE = common dso_local global i32 0, align 4
@RtspCallback = common dso_local global i32 0, align 4
@HTTPD_MSG_SETUP = common dso_local global i32 0, align 4
@HTTPD_MSG_PLAY = common dso_local global i32 0, align 4
@HTTPD_MSG_PAUSE = common dso_local global i32 0, align 4
@HTTPD_MSG_GETPARAMETER = common dso_local global i32 0, align 4
@HTTPD_MSG_TEARDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @RtspSetup(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call %struct.TYPE_6__* @calloc(i32 1, i32 56)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %157

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 7
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 6
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = call i32 @vlc_mutex_init(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @var_InheritInteger(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @__MAX(i32 0, i32 %29)
  %31 = call i64 @vlc_tick_from_sec(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %18
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32, i32* @RtspTimeOut, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = call i64 @vlc_timer_create(i32* %40, i32 %41, %struct.TYPE_6__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %154

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  br label %53

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i8* [ %51, %50 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %52 ]
  %55 = call i32* @strdup(i8* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %154

63:                                               ; preds = %53
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @msg_Dbg(i32* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @VLC_OBJECT(i32* %69)
  %71 = call i32* @vlc_rtsp_HostNew(i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32* %71, i32** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %154

79:                                               ; preds = %63
  %80 = load i32*, i32** %5, align 8
  %81 = call i8* @var_InheritString(i32* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i8* %81, i8** %9, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i8* @var_InheritString(i32* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i8* %83, i8** %10, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32* @httpd_UrlNew(i32* %86, i32* %89, i8* %90, i8* %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %79
  br label %154

104:                                              ; preds = %79
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @HTTPD_MSG_DESCRIBE, align 4
  %109 = load i32, i32* @RtspCallback, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = bitcast %struct.TYPE_6__* %110 to i8*
  %112 = call i32 @httpd_UrlCatch(i32* %107, i32 %108, i32 %109, i8* %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @HTTPD_MSG_SETUP, align 4
  %117 = load i32, i32* @RtspCallback, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = bitcast %struct.TYPE_6__* %118 to i8*
  %120 = call i32 @httpd_UrlCatch(i32* %115, i32 %116, i32 %117, i8* %119)
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @HTTPD_MSG_PLAY, align 4
  %125 = load i32, i32* @RtspCallback, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %127 = bitcast %struct.TYPE_6__* %126 to i8*
  %128 = call i32 @httpd_UrlCatch(i32* %123, i32 %124, i32 %125, i8* %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @HTTPD_MSG_PAUSE, align 4
  %133 = load i32, i32* @RtspCallback, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = bitcast %struct.TYPE_6__* %134 to i8*
  %136 = call i32 @httpd_UrlCatch(i32* %131, i32 %132, i32 %133, i8* %135)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @HTTPD_MSG_GETPARAMETER, align 4
  %141 = load i32, i32* @RtspCallback, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %143 = bitcast %struct.TYPE_6__* %142 to i8*
  %144 = call i32 @httpd_UrlCatch(i32* %139, i32 %140, i32 %141, i8* %143)
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* @HTTPD_MSG_TEARDOWN, align 4
  %149 = load i32, i32* @RtspCallback, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %151 = bitcast %struct.TYPE_6__* %150 to i8*
  %152 = call i32 @httpd_UrlCatch(i32* %147, i32 %148, i32 %149, i8* %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %153, %struct.TYPE_6__** %4, align 8
  br label %157

154:                                              ; preds = %103, %78, %62, %45
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %156 = call i32 @RtspUnsetup(%struct.TYPE_6__* %155)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %157

157:                                              ; preds = %154, %104, %17
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %158
}

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i64 @vlc_tick_from_sec(i32) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i64 @vlc_timer_create(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32*) #1

declare dso_local i32* @vlc_rtsp_HostNew(i32) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i32* @httpd_UrlNew(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @httpd_UrlCatch(i32*, i32, i32, i8*) #1

declare dso_local i32 @RtspUnsetup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
