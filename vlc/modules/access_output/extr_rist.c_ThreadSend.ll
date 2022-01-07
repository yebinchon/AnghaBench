; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_ThreadSend.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_ThreadSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64, i32, i32, i32, %struct.rist_flow*, i64 }
%struct.rist_flow = type { i32, i32, i32, i32, i32, i8*, %struct.rtp_pkt*, i32 }
%struct.rtp_pkt = type { %struct.TYPE_11__*, i8* }
%struct.TYPE_11__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"Error sending data packet after 2 tries ...\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Traffic detected\00", align 1
@STATS_INTERVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"STATS: Total %u, Retransmitted %u, Link Quality %.2f%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ThreadSend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ThreadSend(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rist_flow*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtp_pkt*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %4, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 6
  %26 = load %struct.rist_flow*, %struct.rist_flow** %25, align 8
  store %struct.rist_flow* %26, %struct.rist_flow** %6, align 8
  br label %27

27:                                               ; preds = %184, %1
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_11__* @block_FifoGet(i32 %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %10, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = call i32 @block_cleanup_push(%struct.TYPE_11__* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @vlc_tick_wait(i64 %38)
  %40 = call i32 (...) @vlc_cleanup_pop()
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = call i32 (...) @vlc_savecancel()
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @rtp_get_seqnum(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @rtp_get_timestamp(i32 %51)
  store i8* %52, i8** %9, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 4
  %55 = call i32 @vlc_mutex_lock(i32* %54)
  %56 = load %struct.rist_flow*, %struct.rist_flow** %6, align 8
  %57 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @rist_Write(i32 %58, i32 %61, i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %27
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = call i32 @msg_Err(%struct.TYPE_9__* %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %27
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = call i32 @vlc_mutex_unlock(i32* %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = call i32 @vlc_mutex_lock(i32* %74)
  %76 = load %struct.rist_flow*, %struct.rist_flow** %6, align 8
  %77 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %76, i32 0, i32 6
  %78 = load %struct.rtp_pkt*, %struct.rtp_pkt** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %78, i64 %80
  store %struct.rtp_pkt* %81, %struct.rtp_pkt** %12, align 8
  %82 = load %struct.rtp_pkt*, %struct.rtp_pkt** %12, align 8
  %83 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = icmp ne %struct.TYPE_11__* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %69
  %87 = load %struct.rtp_pkt*, %struct.rtp_pkt** %12, align 8
  %88 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = call i32 @block_Release(%struct.TYPE_11__* %89)
  %91 = load %struct.rtp_pkt*, %struct.rtp_pkt** %12, align 8
  %92 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %91, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %92, align 8
  br label %93

93:                                               ; preds = %86, %69
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.rtp_pkt*, %struct.rtp_pkt** %12, align 8
  %96 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %98 = load %struct.rtp_pkt*, %struct.rtp_pkt** %12, align 8
  %99 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %98, i32 0, i32 0
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %99, align 8
  %100 = load %struct.rist_flow*, %struct.rist_flow** %6, align 8
  %101 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Info(%struct.TYPE_9__* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.rist_flow*, %struct.rist_flow** %6, align 8
  %108 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %93
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.rist_flow*, %struct.rist_flow** %6, align 8
  %112 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = load %struct.rist_flow*, %struct.rist_flow** %6, align 8
  %115 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %114, i32 0, i32 5
  store i8* %113, i8** %115, align 8
  %116 = load %struct.rist_flow*, %struct.rist_flow** %6, align 8
  %117 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.rist_flow*, %struct.rist_flow** %6, align 8
  %122 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.rist_flow*, %struct.rist_flow** %6, align 8
  %129 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = call i32 @vlc_mutex_unlock(i32* %131)
  %133 = call i64 (...) @vlc_tick_now()
  store i64 %133, i64* %13, align 8
  %134 = load i64, i64* %13, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %134, %137
  store i64 %138, i64* %14, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load i32, i32* @STATS_INTERVAL, align 4
  %141 = call i64 @VLC_TICK_FROM_MS(i32 %140)
  %142 = icmp sgt i64 %139, %141
  br i1 %142, label %143, label %184

143:                                              ; preds = %109
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %176

148:                                              ; preds = %143
  store float 1.000000e+02, float* %15, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = sitofp i64 %156 to float
  %158 = fmul float 1.000000e+02, %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = sitofp i64 %161 to float
  %163 = fdiv float %158, %162
  %164 = fsub float 1.000000e+02, %163
  store float %164, float* %15, align 4
  br label %165

165:                                              ; preds = %153, %148
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load float, float* %15, align 4
  %174 = fpext float %173 to double
  %175 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Info(%struct.TYPE_9__* %166, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %169, i64 %172, double %174)
  br label %176

176:                                              ; preds = %165, %143
  %177 = load i64, i64* %13, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %176, %109
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %186, align 8
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @vlc_restorecancel(i32 %189)
  br label %27
}

declare dso_local %struct.TYPE_11__* @block_FifoGet(i32) #1

declare dso_local i32 @block_cleanup_push(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_tick_wait(i64) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @rtp_get_seqnum(i32) #1

declare dso_local i8* @rtp_get_timestamp(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @rist_Write(i32, i32, i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_11__*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
