; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_voc.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_voc.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i32 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@MAX_READ_FRAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"cannot read data\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @vlc_stream_Tell(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = call i64 @ReadBlockHeader(%struct.TYPE_14__* %26)
  %28 = load i64, i64* @VLC_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %31, i32* %2, align 4
  br label %144

32:                                               ; preds = %25
  %33 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %33, i32* %2, align 4
  br label %144

34:                                               ; preds = %15
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sdiv i64 %39, %44
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @MAX_READ_FRAME, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i64, i64* @MAX_READ_FRAME, align 8
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %49, %34
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = mul nsw i64 %59, %60
  %62 = call %struct.TYPE_16__* @vlc_stream_Block(i32 %54, i64 %61)
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %5, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = icmp eq %struct.TYPE_16__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %51
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = call i32 @msg_Warn(%struct.TYPE_14__* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %68, i32* %2, align 4
  br label %144

69:                                               ; preds = %51
  br label %97

70:                                               ; preds = %1
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @MAX_READ_FRAME, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i64, i64* @MAX_READ_FRAME, align 8
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %77, %70
  %80 = load i64, i64* %6, align 8
  %81 = call %struct.TYPE_16__* @block_Alloc(i64 %80)
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %5, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = icmp eq %struct.TYPE_16__* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %85, i32* %2, align 4
  br label %144

86:                                               ; preds = %79
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @memset(i32 %89, i32 0, i64 %90)
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %86, %69
  %98 = load i64, i64* @VLC_TICK_0, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = call i64 @date_Get(i32* %100)
  %102 = add nsw i64 %98, %101
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  store i64 %102, i64* %106, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = mul nsw i64 %107, %112
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @date_Increment(i32* %117, i64 %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @es_out_SetPCR(i32 %124, i64 %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = call i32 @es_out_Send(i32 %137, i32* %140, %struct.TYPE_16__* %141)
  %143 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %97, %84, %65, %32, %30
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @vlc_stream_Tell(i32) #1

declare dso_local i64 @ReadBlockHeader(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @vlc_stream_Block(i32, i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.TYPE_16__* @block_Alloc(i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Increment(i32*, i64) #1

declare dso_local i32 @es_out_SetPCR(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @es_out_Send(i32, i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
