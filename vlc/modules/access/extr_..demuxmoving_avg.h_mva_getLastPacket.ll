; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmoving_avg.h_mva_getLastPacket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmoving_avg.h_mva_getLastPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mva_packet_s = type { i32 }
%struct.moving_average_s = type { i32, %struct.mva_packet_s* }

@MVA_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mva_packet_s* (%struct.moving_average_s*)* @mva_getLastPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mva_packet_s* @mva_getLastPacket(%struct.moving_average_s* %0) #0 {
  %2 = alloca %struct.moving_average_s*, align 8
  store %struct.moving_average_s* %0, %struct.moving_average_s** %2, align 8
  %3 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %4 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %9 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %8, i32 0, i32 1
  %10 = load %struct.mva_packet_s*, %struct.mva_packet_s** %9, align 8
  %11 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %12 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* @MVA_PACKETS, align 4
  %16 = srem i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %10, i64 %17
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %7
  %21 = phi %struct.mva_packet_s* [ %18, %7 ], [ null, %19 ]
  ret %struct.mva_packet_s* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
