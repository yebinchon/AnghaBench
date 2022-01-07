; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264.c_PutSPS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264.c_PutSPS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"invalid SPS\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"found NAL_SPS (sps_id=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_19__*)* @PutSPS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PutSPS(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %5, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = call i32 @hxxx_strip_AnnexB_startcode(i32** %6, i64* %7)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = call i32 @block_Release(%struct.TYPE_19__* %21)
  br label %59

23:                                               ; preds = %2
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call %struct.TYPE_16__* @h264_decode_sps(i32* %24, i64 %25, i32 1)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %8, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = call i32 @msg_Warn(%struct.TYPE_17__* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = call i32 @block_Release(%struct.TYPE_19__* %32)
  br label %59

34:                                               ; preds = %23
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %34
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @msg_Dbg(%struct.TYPE_17__* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %45, %34
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = call i32 @StoreSPS(%struct.TYPE_18__* %52, i64 %55, %struct.TYPE_19__* %56, %struct.TYPE_16__* %57)
  br label %59

59:                                               ; preds = %51, %29, %20
  ret void
}

declare dso_local i32 @hxxx_strip_AnnexB_startcode(i32**, i64*) #1

declare dso_local i32 @block_Release(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_16__* @h264_decode_sps(i32*, i64, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_17__*, i8*, i64) #1

declare dso_local i32 @StoreSPS(%struct.TYPE_18__*, i64, %struct.TYPE_19__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
