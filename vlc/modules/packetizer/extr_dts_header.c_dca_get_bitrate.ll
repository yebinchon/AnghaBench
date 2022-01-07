; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_dca_get_bitrate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_dca_get_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.dca_get_bitrate.p_dca_bitrates = private unnamed_addr constant [32 x i32] [i32 32000, i32 56000, i32 64000, i32 96000, i32 112000, i32 128000, i32 192000, i32 224000, i32 256000, i32 320000, i32 384000, i32 448000, i32 512000, i32 576000, i32 640000, i32 768000, i32 896000, i32 1024000, i32 1152000, i32 1280000, i32 1344000, i32 1408000, i32 1411200, i32 1472000, i32 1536000, i32 1920000, i32 2048000, i32 3072000, i32 3840000, i32 0, i32 0, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dca_get_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dca_get_bitrate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i32], align 16
  store i32 %0, i32* %3, align 4
  %5 = bitcast [32 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([32 x i32]* @__const.dca_get_bitrate.p_dca_bitrates to i8*), i64 128, i1 false)
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %9, %8
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
