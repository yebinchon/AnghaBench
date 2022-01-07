; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ttml.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ttml.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_8__, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.vlc_memstream = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64 }

@VLC_TICK_0 = common dso_local global i64 0, align 8
@VLC_DEMUXER_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vlc_memstream, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  br label %12

12:                                               ; preds = %139, %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %12
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = call i64 @tt_time_Convert(i32* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br label %39

39:                                               ; preds = %23, %12
  %40 = phi i1 [ false, %12 ], [ %38, %23 ]
  br i1 %40, label %41, label %145

41:                                               ; preds = %39
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = call i64 @tt_time_Convert(i32* %51)
  store i64 %52, i64* %5, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  %64 = call i64 @tt_time_Convert(i32* %63)
  %65 = sub nsw i64 %64, 1
  store i64 %65, i64* %6, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %41
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* @VLC_TICK_0, align 8
  %80 = load i64, i64* %5, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @es_out_SetPCR(i32 %78, i64 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %75, %70, %41
  %86 = call i64 @vlc_memstream_open(%struct.vlc_memstream* %7)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @VLC_DEMUXER_EGENERIC, align 4
  store i32 %89, i32* %2, align 4
  br label %180

90:                                               ; preds = %85
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  %105 = call i32 @tt_node_ToText(%struct.vlc_memstream* %7, i32* %94, i32* %104)
  %106 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %7)
  %107 = load i64, i64* @VLC_SUCCESS, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %90
  %110 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %7, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %7, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.TYPE_11__* @block_heap_Alloc(i32 %111, i32 %113)
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %8, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = icmp ne %struct.TYPE_11__* %115, null
  br i1 %116, label %117, label %138

117:                                              ; preds = %109
  %118 = load i64, i64* @VLC_TICK_0, align 8
  %119 = load i64, i64* %5, align 8
  %120 = add nsw i64 %118, %119
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store i64 %120, i64* %124, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %5, align 8
  %127 = sub nsw i64 %125, %126
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %137 = call i32 @es_out_Send(i32 %132, i32 %135, %struct.TYPE_11__* %136)
  br label %138

138:                                              ; preds = %117, %109
  br label %139

139:                                              ; preds = %138, %90
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %12

145:                                              ; preds = %39
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %165, label %150

150:                                              ; preds = %145
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* @VLC_TICK_0, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %154, %157
  %159 = call i32 @es_out_SetPCR(i32 %153, i64 %158)
  %160 = call i64 @VLC_TICK_FROM_MS(i32 125)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %160
  store i64 %164, i64* %162, align 8
  br label %165

165:                                              ; preds = %150, %145
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp sge i32 %170, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %165
  %177 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %177, i32* %2, align 4
  br label %180

178:                                              ; preds = %165
  %179 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %176, %88
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i64 @tt_time_Convert(i32*) #1

declare dso_local i32 @es_out_SetPCR(i32, i64) #1

declare dso_local i64 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i32 @tt_node_ToText(%struct.vlc_memstream*, i32*, i32*) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

declare dso_local %struct.TYPE_11__* @block_heap_Alloc(i32, i32) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
