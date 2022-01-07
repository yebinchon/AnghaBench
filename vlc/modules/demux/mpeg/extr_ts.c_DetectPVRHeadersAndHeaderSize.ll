; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_DetectPVRHeadersAndHeaderSize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_DetectPVRHeadersAndHeaderSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TS_PACKET_SIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"TFrc\00", align 1
@TOPFIELD_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"this is a topfield file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.TYPE_7__*)* @DetectPVRHeadersAndHeaderSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DetectPVRHeadersAndHeaderSize(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %9, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @TS_PACKET_SIZE_MAX, align 8
  %16 = call i64 @vlc_stream_Peek(i32 %14, i32** %8, i64 %15)
  %17 = load i64, i64* @TS_PACKET_SIZE_MAX, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @memcmp(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* @TOPFIELD_HEADER_SIZE, align 8
  %34 = load i64, i64* @TS_PACKET_SIZE_MAX, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @vlc_stream_Peek(i32 %32, i32** %8, i64 %35)
  %37 = load i64, i64* @TOPFIELD_HEADER_SIZE, align 8
  %38 = load i64, i64* @TS_PACKET_SIZE_MAX, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %29
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 18
  %44 = call i32 @GetWBE(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* @TOPFIELD_HEADER_SIZE, align 8
  %48 = call i32 @DetectPacketSize(%struct.TYPE_8__* %45, i32* %46, i64 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Dbg(%struct.TYPE_8__* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %29, %24, %20
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @DetectPacketSize(%struct.TYPE_8__* %60, i32* %61, i64 0)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %51, %19
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @vlc_stream_Peek(i32, i32**, i64) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i32 @DetectPacketSize(%struct.TYPE_8__*, i32*, i64) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
