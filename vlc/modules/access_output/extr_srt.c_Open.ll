; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_srt.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_srt.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"dst-port\00", align 1
@VLC_VAR_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"src-port\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dst-addr\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"src-addr\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Valid network information is required.\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Failed to create poll id for SRT socket (reason: %s)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to schedule connect\00", align 1
@Write = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %10 = call i64 @var_Create(%struct.TYPE_7__* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %15 = call i64 @var_Create(%struct.TYPE_7__* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = load i32, i32* @VLC_VAR_STRING, align 4
  %20 = call i64 @var_Create(%struct.TYPE_7__* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = load i32, i32* @VLC_VAR_STRING, align 4
  %25 = call i64 @var_Create(%struct.TYPE_7__* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %17, %12, %1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %30, i32* %2, align 4
  br label %100

31:                                               ; preds = %22
  %32 = load i32*, i32** %3, align 8
  %33 = call %struct.TYPE_8__* @vlc_obj_calloc(i32* %32, i32 1, i32 12)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = icmp eq %struct.TYPE_8__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %100

41:                                               ; preds = %31
  %42 = call i32 (...) @srt_startup()
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = call i32 @vlc_mutex_init(i32* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %48, align 8
  %49 = call i32 (...) @srt_epoll_create()
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = call i32 (...) @srt_getlasterror_str()
  %59 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  br label %75

60:                                               ; preds = %41
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = call i32 @srt_schedule_reconnect(%struct.TYPE_7__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %75

67:                                               ; preds = %60
  %68 = load i32, i32* @Write, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @Control, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %74, i32* %2, align 4
  br label %100

75:                                               ; preds = %64, %56
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = call i32 @vlc_mutex_destroy(i32* %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @srt_close(i32 %86)
  br label %88

88:                                               ; preds = %83, %75
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @srt_epoll_release(i32 %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %67, %39, %27
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @var_Create(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @vlc_obj_calloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @srt_startup(...) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @srt_epoll_create(...) #1

declare dso_local i32 @srt_getlasterror_str(...) #1

declare dso_local i32 @srt_schedule_reconnect(%struct.TYPE_7__*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @srt_close(i32) #1

declare dso_local i32 @srt_epoll_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
