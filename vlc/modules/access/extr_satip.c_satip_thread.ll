; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_satip.c_satip_thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_satip.c_satip_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.pollfd = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i32* }

@POLLIN = common dso_local global i32 0, align 4
@RECV_TIMEOUT = common dso_local global i64 0, align 8
@RTSP_RECEIVE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate memory for input buffer\00", align 1
@RTP_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"OPTIONS %s RTSP/1.0\0D\0ACSeq: %d\0D\0ASession: %s\0D\0A\0D\0A\00", align 1
@RTSP_RESULT_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to keepalive RTSP session\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"timed out waiting for data...\00", align 1
@MSG_WAITFORONE = common dso_local global i32 0, align 4
@VLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @satip_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @satip_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pollfd, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %3, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %4, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = call i64 (...) @vlc_tick_now()
  store i64 %19, i64* %6, align 8
  %20 = call i64 (...) @vlc_tick_now()
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @vlc_tick_from_sec(i64 %23)
  %25 = add nsw i64 %20, %24
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @POLLIN, align 4
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %127, %69, %61, %39, %1
  %31 = load i64, i64* %6, align 8
  %32 = call i64 (...) @vlc_tick_now()
  %33 = load i64, i64* @RECV_TIMEOUT, align 8
  %34 = sub nsw i64 %32, %33
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %128

36:                                               ; preds = %30
  %37 = call i32 @poll(%struct.pollfd* %9, i32 1, i32 20)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %30

40:                                               ; preds = %36
  %41 = load i32, i32* @RTSP_RECEIVE_BUFFER, align 4
  %42 = call %struct.TYPE_21__* @block_Alloc(i32 %41)
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %10, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %44 = icmp eq %struct.TYPE_21__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = call i32 @msg_Err(%struct.TYPE_20__* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %128

48:                                               ; preds = %40
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %50 = call i32 @block_cleanup_push(%struct.TYPE_21__* %49)
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @RTSP_RECEIVE_BUFFER, align 4
  %56 = call i64 @recv(i32 %51, i32* %54, i32 %55, i32 0)
  store i64 %56, i64* %7, align 8
  %57 = call i32 (...) @vlc_cleanup_pop()
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @RTP_HEADER_SIZE, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %63 = call i32 @block_Release(%struct.TYPE_21__* %62)
  br label %30

64:                                               ; preds = %48
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %67 = call i64 @check_rtp_seq(%struct.TYPE_20__* %65, %struct.TYPE_21__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %71 = call i32 @block_Release(%struct.TYPE_21__* %70)
  br label %30

72:                                               ; preds = %64
  %73 = call i64 (...) @vlc_tick_now()
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* @RTP_HEADER_SIZE, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 %74
  store i32* %78, i32** %76, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @RTP_HEADER_SIZE, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %88 = call i32 @block_FifoPut(i32 %86, %struct.TYPE_21__* %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %127

93:                                               ; preds = %72
  %94 = call i64 (...) @vlc_tick_now()
  %95 = load i64, i64* %8, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %93
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @net_Printf(%struct.TYPE_20__* %98, i32 %101, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %107, i32 %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = call i64 @rtsp_handle(%struct.TYPE_20__* %113, i32* null)
  %115 = load i64, i64* @RTSP_RESULT_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %97
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = call i32 @msg_Warn(%struct.TYPE_20__* %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %97
  %121 = call i64 (...) @vlc_tick_now()
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @vlc_tick_from_sec(i64 %124)
  %126 = add nsw i64 %121, %125
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %120, %93, %72
  br label %30

128:                                              ; preds = %45, %30
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = call i32 @msg_Dbg(%struct.TYPE_20__* %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @vlc_fifo_Lock(i32 %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 2
  store i32 1, i32* %136, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @vlc_fifo_Signal(i32 %139)
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @vlc_fifo_Unlock(i32 %143)
  ret i8* null
}

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @vlc_tick_from_sec(i64) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @block_Alloc(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @block_cleanup_push(%struct.TYPE_21__*) #1

declare dso_local i64 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i32 @block_Release(%struct.TYPE_21__*) #1

declare dso_local i64 @check_rtp_seq(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @block_FifoPut(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @net_Printf(%struct.TYPE_20__*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @rtsp_handle(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i32 @vlc_fifo_Signal(i32) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
