; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_h264_helper_get_current_sps.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_h264_helper_get_current_sps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper_nal = type { i32* }
%struct.hxxx_helper = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.hxxx_helper_nal* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hxxx_helper_nal* (%struct.hxxx_helper*)* @h264_helper_get_current_sps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper* %0) #0 {
  %2 = alloca %struct.hxxx_helper_nal*, align 8
  %3 = alloca %struct.hxxx_helper*, align 8
  %4 = alloca %struct.hxxx_helper_nal*, align 8
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %3, align 8
  %5 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %6 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.hxxx_helper_nal* null, %struct.hxxx_helper_nal** %2, align 8
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %13 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %14, align 8
  %16 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %17 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %15, i64 %19
  store %struct.hxxx_helper_nal* %20, %struct.hxxx_helper_nal** %4, align 8
  %21 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %4, align 8
  %22 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %4, align 8
  store %struct.hxxx_helper_nal* %27, %struct.hxxx_helper_nal** %2, align 8
  br label %28

28:                                               ; preds = %11, %10
  %29 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %2, align 8
  ret %struct.hxxx_helper_nal* %29
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
