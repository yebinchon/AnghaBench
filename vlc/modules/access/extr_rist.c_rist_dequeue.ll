; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_rist_dequeue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_rist_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.rist_flow = type { i64, i64, i64, i64, i64, %struct.rtp_pkt* }
%struct.rtp_pkt = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@RTP_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Packet NOT RECOVERED, %d packet(s), Window: [%d:%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_9__*, %struct.rist_flow*)* @rist_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @rist_dequeue(%struct.TYPE_9__* %0, %struct.rist_flow* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.rist_flow*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.rtp_pkt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.rist_flow* %1, %struct.rist_flow** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %17 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %20 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %25 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %131

29:                                               ; preds = %23
  %30 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %31 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %103, %50, %29
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %9, align 8
  %36 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %37 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %104

40:                                               ; preds = %33
  %41 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %42 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %41, i32 0, i32 5
  %43 = load %struct.rtp_pkt*, %struct.rtp_pkt** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %43, i64 %44
  store %struct.rtp_pkt* %45, %struct.rtp_pkt** %8, align 8
  %46 = load %struct.rtp_pkt*, %struct.rtp_pkt** %8, align 8
  %47 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %11, align 8
  br label %33

53:                                               ; preds = %40
  %54 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %55 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rtp_pkt*, %struct.rtp_pkt** %8, align 8
  %58 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %61 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = icmp sgt i64 %56, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %53
  %66 = load %struct.rtp_pkt*, %struct.rtp_pkt** %8, align 8
  %67 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RTP_HEADER_SIZE, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call %struct.TYPE_11__* @block_Alloc(i32 %73)
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %7, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %96

77:                                               ; preds = %65
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rtp_pkt*, %struct.rtp_pkt** %8, align 8
  %85 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RTP_HEADER_SIZE, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @memcpy(i32 %83, i32 %90, i32 %91)
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %95 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  store i32 1, i32* %10, align 4
  br label %96

96:                                               ; preds = %77, %65
  %97 = load %struct.rtp_pkt*, %struct.rtp_pkt** %8, align 8
  %98 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = call i32 @block_Release(%struct.TYPE_12__* %99)
  %101 = load %struct.rtp_pkt*, %struct.rtp_pkt** %8, align 8
  %102 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %101, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %102, align 8
  br label %104

103:                                              ; preds = %53
  br label %33

104:                                              ; preds = %96, %33
  %105 = load i64, i64* %11, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %114 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.rist_flow*, %struct.rist_flow** %5, align 8
  %117 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @msg_Dbg(%struct.TYPE_9__* %111, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %112, i64 %115, i64 %118)
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %110, %107, %104
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %3, align 8
  br label %131

131:                                              ; preds = %129, %28
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %132
}

declare dso_local %struct.TYPE_11__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_12__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
