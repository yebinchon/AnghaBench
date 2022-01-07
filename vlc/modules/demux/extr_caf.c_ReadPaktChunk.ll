; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_caf.c_ReadPaktChunk.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_caf.c_ReadPaktChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Couldn't peek packet descriptions\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Invalid packet table: i_num_packets is negative.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Invalid packet table: i_num_valid_frames is negative.\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Invalid packet table: i_num_priming_frames is negative.\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Invalid packet table: i_num_remainder_frames is negative.\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ReadPaktChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadPaktChunk(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @vlc_stream_Peek(i32 %11, i32** %5, i32 24)
  %13 = icmp slt i32 %12, 24
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = call i32 @msg_Err(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = call i64 @ReadBEInt64ToUInt64(i32* %19, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @msg_Err(%struct.TYPE_7__* %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %28, i32* %2, align 4
  br label %75

29:                                               ; preds = %18
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = call i64 @ReadBEInt64ToUInt64(i32* %31, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = call i32 @msg_Err(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %2, align 4
  br label %75

41:                                               ; preds = %29
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 16
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = call i64 @ReadBEInt32ToUInt32(i32* %43, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = call i32 @msg_Err(%struct.TYPE_7__* %50, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %52, i32* %2, align 4
  br label %75

53:                                               ; preds = %41
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 20
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = call i64 @ReadBEInt32ToUInt32(i32* %55, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = call i32 @msg_Err(%struct.TYPE_7__* %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %2, align 4
  br label %75

65:                                               ; preds = %53
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @vlc_stream_Tell(i32 %68)
  %70 = add nsw i64 %69, 24
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %65, %61, %49, %37, %25, %14
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @ReadBEInt64ToUInt64(i32*, i32*) #1

declare dso_local i64 @ReadBEInt32ToUInt32(i32*, i32*) #1

declare dso_local i64 @vlc_stream_Tell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
