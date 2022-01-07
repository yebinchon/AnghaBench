; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_19__*, i64, i64 }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid record type 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %16, i32* %2, align 4
  br label %119

17:                                               ; preds = %1
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %22, %17
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = call i64 @get_chunk_header(%struct.TYPE_20__* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %30
  %40 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %40, i32* %2, align 4
  br label %119

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %22
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i64 %48
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %5, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %42
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %65, i32* %2, align 4
  br label %119

66:                                               ; preds = %54
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call %struct.TYPE_22__* @vlc_stream_Block(i32 %69, i64 %70)
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %6, align 8
  %72 = icmp ne %struct.TYPE_22__* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %74, i32* %2, align 4
  br label %119

75:                                               ; preds = %66
  %76 = load i32, i32* @VLC_TICK_INVALID, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %42
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %100 [
    i32 224, label %85
    i32 192, label %90
    i32 1, label %95
    i32 2, label %95
    i32 3, label %106
    i32 5, label %106
  ]

85:                                               ; preds = %81
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %89 = call i32 @DemuxRecVideo(%struct.TYPE_20__* %86, %struct.TYPE_19__* %87, %struct.TYPE_22__* %88)
  br label %113

90:                                               ; preds = %81
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %94 = call i32 @DemuxRecAudio(%struct.TYPE_20__* %91, %struct.TYPE_19__* %92, %struct.TYPE_22__* %93)
  br label %113

95:                                               ; preds = %81, %81
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %99 = call i32 @DemuxRecCc(%struct.TYPE_20__* %96, %struct.TYPE_19__* %97, %struct.TYPE_22__* %98)
  br label %113

100:                                              ; preds = %81
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @msg_Dbg(%struct.TYPE_20__* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %81, %81, %100
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %108 = icmp ne %struct.TYPE_22__* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %111 = call i32 @block_Release(%struct.TYPE_22__* %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %95, %90, %85
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %113, %73, %60, %39, %15
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @get_chunk_header(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_22__* @vlc_stream_Block(i32, i64) #1

declare dso_local i32 @DemuxRecVideo(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i32 @DemuxRecAudio(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i32 @DemuxRecCc(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
