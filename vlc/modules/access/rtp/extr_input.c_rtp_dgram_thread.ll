; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_input.c_rtp_dgram_thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_input.c_rtp_dgram_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.iovec = type { i32, i32 }
%struct.msghdr = type { i32, i32, %struct.iovec* }
%struct.pollfd = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@DEFAULT_MRU = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%zd bytes packet truncated (MRU was %zu)\00", align 1
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"RTP network error: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rtp_dgram_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iovec, align 4
  %9 = alloca %struct.msghdr, align 8
  %10 = alloca [1 x %struct.pollfd], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %3, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %4, align 8
  %20 = load i32, i32* @VLC_TICK_INVALID, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @MSG_TRUNC, align 4
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  %26 = load i32, i32* @DEFAULT_MRU, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 2
  store %struct.iovec* %8, %struct.iovec** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @POLLIN, align 4
  %35 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %36 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %141, %81, %44, %1
  %38 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @rtp_timeout(i32 %39)
  %41 = call i32 @poll(%struct.pollfd* %38, i32 1, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %37

45:                                               ; preds = %37
  %46 = call i32 (...) @vlc_savecancel()
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %132

50:                                               ; preds = %45
  %51 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %52 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %131

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %11, align 4
  %58 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %59 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @POLLHUP, align 4
  %62 = and i32 %60, %61
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %144

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_13__* @block_Alloc(i32 %68)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %13, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %71 = icmp eq %struct.TYPE_13__* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DEFAULT_MRU, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %144

81:                                               ; preds = %75
  %82 = load i32, i32* @DEFAULT_MRU, align 4
  %83 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  br label %37

84:                                               ; preds = %66
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %7, align 4
  %90 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @recvmsg(i32 %91, %struct.msghdr* %9, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %123

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = load i32, i32* %14, align 4
  %105 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @msg_Err(%struct.TYPE_11__* %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %106)
  %108 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %14, align 4
  %114 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  br label %119

115:                                              ; preds = %96
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %102
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %122 = call i32 @rtp_process(%struct.TYPE_11__* %120, %struct.TYPE_13__* %121)
  br label %130

123:                                              ; preds = %84
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = load i32, i32* @errno, align 4
  %126 = call i32 @vlc_strerror_c(i32 %125)
  %127 = call i32 @msg_Warn(%struct.TYPE_11__* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %129 = call i32 @block_Release(%struct.TYPE_13__* %128)
  br label %130

130:                                              ; preds = %123, %119
  br label %131

131:                                              ; preds = %130, %50
  br label %132

132:                                              ; preds = %131, %49
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @rtp_dequeue(%struct.TYPE_11__* %133, i32 %136, i32* %5)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* @VLC_TICK_INVALID, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %132
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @vlc_restorecancel(i32 %142)
  br label %37

144:                                              ; preds = %80, %65
  ret i8* null
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @rtp_timeout(i32) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_13__* @block_Alloc(i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @rtp_process(%struct.TYPE_11__*, %struct.TYPE_13__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_13__*) #1

declare dso_local i32 @rtp_dequeue(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
