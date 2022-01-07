; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxtimestamps_filter.h_timestamps_filter_push.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxtimestamps_filter.h_timestamps_filter_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timestamps_filter_s = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mva_packet_s = type { i64, i32 }

@MVA_PACKETS = common dso_local global i64 0, align 8
@CLOCK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.timestamps_filter_s*, i64, i64, i32, i32)* @timestamps_filter_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timestamps_filter_push(i8* %0, %struct.timestamps_filter_s* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.timestamps_filter_s*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mva_packet_s*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.timestamps_filter_s* %1, %struct.timestamps_filter_s** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %108

21:                                               ; preds = %17, %6
  %22 = load %struct.timestamps_filter_s*, %struct.timestamps_filter_s** %8, align 8
  %23 = getelementptr inbounds %struct.timestamps_filter_s, %struct.timestamps_filter_s* %22, i32 0, i32 2
  %24 = call %struct.mva_packet_s* @mva_getLastPacket(%struct.TYPE_4__* %23)
  store %struct.mva_packet_s* %24, %struct.mva_packet_s** %13, align 8
  %25 = load %struct.mva_packet_s*, %struct.mva_packet_s** %13, align 8
  %26 = icmp ne %struct.mva_packet_s* %25, null
  br i1 %26, label %27, label %95

27:                                               ; preds = %21
  %28 = load %struct.mva_packet_s*, %struct.mva_packet_s** %13, align 8
  %29 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %108

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %34
  %38 = load %struct.timestamps_filter_s*, %struct.timestamps_filter_s** %8, align 8
  %39 = getelementptr inbounds %struct.timestamps_filter_s, %struct.timestamps_filter_s* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MVA_PACKETS, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.timestamps_filter_s*, %struct.timestamps_filter_s** %8, align 8
  %46 = getelementptr inbounds %struct.timestamps_filter_s, %struct.timestamps_filter_s* %45, i32 0, i32 2
  %47 = call i32 @mva_get(%struct.TYPE_4__* %46)
  %48 = mul nsw i32 %47, 2
  br label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @CLOCK_FREQ, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi i32 [ %48, %44 ], [ %50, %49 ]
  store i32 %52, i32* %14, align 4
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.mva_packet_s*, %struct.mva_packet_s** %13, align 8
  %55 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = call i32 @llabs(i64 %57)
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %61, %51
  %65 = load %struct.timestamps_filter_s*, %struct.timestamps_filter_s** %8, align 8
  %66 = getelementptr inbounds %struct.timestamps_filter_s, %struct.timestamps_filter_s* %65, i32 0, i32 2
  %67 = call i32 @mva_get(%struct.TYPE_4__* %66)
  %68 = load %struct.mva_packet_s*, %struct.mva_packet_s** %13, align 8
  %69 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.timestamps_filter_s*, %struct.timestamps_filter_s** %8, align 8
  %71 = getelementptr inbounds %struct.timestamps_filter_s, %struct.timestamps_filter_s* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load %struct.mva_packet_s*, %struct.mva_packet_s** %13, align 8
  %76 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  %80 = load %struct.timestamps_filter_s*, %struct.timestamps_filter_s** %8, align 8
  %81 = getelementptr inbounds %struct.timestamps_filter_s, %struct.timestamps_filter_s* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %91

82:                                               ; preds = %61
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.mva_packet_s*, %struct.mva_packet_s** %13, align 8
  %85 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = trunc i64 %87 to i32
  %89 = load %struct.mva_packet_s*, %struct.mva_packet_s** %13, align 8
  %90 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %82, %64
  br label %92

92:                                               ; preds = %91, %34
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @VLC_UNUSED(i8* %93)
  br label %95

95:                                               ; preds = %92, %21
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.timestamps_filter_s*, %struct.timestamps_filter_s** %8, align 8
  %98 = getelementptr inbounds %struct.timestamps_filter_s, %struct.timestamps_filter_s* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = load %struct.timestamps_filter_s*, %struct.timestamps_filter_s** %8, align 8
  %102 = getelementptr inbounds %struct.timestamps_filter_s, %struct.timestamps_filter_s* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.timestamps_filter_s*, %struct.timestamps_filter_s** %8, align 8
  %104 = getelementptr inbounds %struct.timestamps_filter_s, %struct.timestamps_filter_s* %103, i32 0, i32 2
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @mva_add(%struct.TYPE_4__* %104, i64 %105, i64 %106)
  br label %108

108:                                              ; preds = %95, %33, %20
  ret void
}

declare dso_local %struct.mva_packet_s* @mva_getLastPacket(%struct.TYPE_4__*) #1

declare dso_local i32 @mva_get(%struct.TYPE_4__*) #1

declare dso_local i32 @llabs(i64) #1

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i32 @mva_add(%struct.TYPE_4__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
