; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_rtsp.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_rtsp.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_15__ = type { i32 }

@RTSP_CMD_TYPE_NONE = common dso_local global i32 0, align 4
@RTSP_CMD_TYPE_DEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"rtsp-session-timeout\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"rtsp-throttle-users\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rtsp-raw-mux\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"rtsp vod leaking %d medias\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = load i32, i32* @RTSP_CMD_TYPE_NONE, align 4
  %14 = call i32 @CommandPush(%struct.TYPE_12__* %12, i32 %13, i32* null, i32* null, i32 0, double 0.000000e+00, i32* null)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vlc_join(i32 %17, i32* null)
  br label %19

19:                                               ; preds = %45, %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @block_FifoCount(i32 %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_15__* @block_FifoGet(i32 %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %6, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(%struct.TYPE_14__* %5, i32 %32, i32 32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = call i32 @block_Release(%struct.TYPE_15__* %34)
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RTSP_CMD_TYPE_DEL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @MediaDel(%struct.TYPE_12__* %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %25
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = call i32 @free(%struct.TYPE_13__* %47)
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = call i32 @free(%struct.TYPE_13__* %50)
  br label %19

52:                                               ; preds = %19
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @block_FifoRelease(i32 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @httpd_HostDelete(i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @var_Destroy(i32* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @var_Destroy(i32* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @var_Destroy(i32* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %52
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @msg_Err(%struct.TYPE_12__* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %71, %52
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @TAB_CLEAN(i64 %80, i32 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = call i32 @free(%struct.TYPE_13__* %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = call i32 @free(%struct.TYPE_13__* %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = call i32 @free(%struct.TYPE_13__* %93)
  ret void
}

declare dso_local i32 @CommandPush(%struct.TYPE_12__*, i32, i32*, i32*, i32, double, i32*) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i64 @block_FifoCount(i32) #1

declare dso_local %struct.TYPE_15__* @block_FifoGet(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_15__*) #1

declare dso_local i32 @MediaDel(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i32 @block_FifoRelease(i32) #1

declare dso_local i32 @httpd_HostDelete(i32) #1

declare dso_local i32 @var_Destroy(i32*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @TAB_CLEAN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
