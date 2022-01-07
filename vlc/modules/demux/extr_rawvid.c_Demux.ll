; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_rawvid.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_rawvid.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = call i32 @date_Get(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @es_out_SetPCR(i32 %16, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vlc_stream_Read(i32 %26, i32* null, i32 5)
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %30, i32* %2, align 4
  br label %76

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %44, %31
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vlc_stream_Read(i32 %35, i32* %7, i32 1)
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %39, i32* %2, align 4
  br label %76

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %45

44:                                               ; preds = %40
  br label %32

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.TYPE_9__* @vlc_stream_Block(i32 %49, i32 %52)
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %5, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = icmp eq %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %57, i32* %2, align 4
  br label %76

58:                                               ; preds = %46
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = call i32 @es_out_Send(i32 %66, i32 %69, %struct.TYPE_9__* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @date_Increment(i32* %73, i32 1)
  %75 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %58, %56, %38, %29
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @date_Get(i32*) #1

declare dso_local i32 @es_out_SetPCR(i32, i32) #1

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @vlc_stream_Block(i32, i32) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
