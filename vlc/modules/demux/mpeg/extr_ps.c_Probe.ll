; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.c_Probe.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.c_Probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }

@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"garbage at input, trying to resync...\00", align 1
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"found sync code\00", align 1
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@PS_STREAM_ID_PACK_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @Probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Probe(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ps_pkt_resynch(i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %29, i32* %3, align 4
  br label %168

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = call i32 @msg_Warn(%struct.TYPE_12__* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %168

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = call i32 @msg_Warn(%struct.TYPE_12__* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_14__* @ps_pkt_read(i32 %59)
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %9, align 8
  %61 = icmp eq %struct.TYPE_14__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %63, i32* %3, align 4
  br label %168

64:                                               ; preds = %54
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ps_pkt_id(i32 %67, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %72, 192
  br i1 %73, label %74, label %133

74:                                               ; preds = %64
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @ps_id_to_tk(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %79
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %10, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = call i32 @VLC_OBJECT(%struct.TYPE_12__* %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ps_pkt_parse_pes(i32 %82, %struct.TYPE_14__* %83, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %132, label %89

89:                                               ; preds = %74
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VLC_TICK_INVALID, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %132

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VLC_TICK_INVALID, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %107, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %104, %98
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %131

118:                                              ; preds = %104, %95
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @VLC_TICK_INVALID, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %118
  br label %131

131:                                              ; preds = %130, %112
  br label %132

132:                                              ; preds = %131, %89, %74
  br label %164

133:                                              ; preds = %64
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @PS_STREAM_ID_PACK_HEADER, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %133
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %137
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @ps_pkt_parse_pack(i32 %143, i32 %146, i64* %11, i32* %12)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %140
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @VLC_TICK_INVALID, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i64, i64* %11, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %149
  br label %160

160:                                              ; preds = %159, %140, %137
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  br label %163

163:                                              ; preds = %160, %133
  br label %164

164:                                              ; preds = %163, %132
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %166 = call i32 @block_Release(%struct.TYPE_14__* %165)
  %167 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %62, %41, %28
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @ps_pkt_resynch(i32, i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.TYPE_14__* @ps_pkt_read(i32) #1

declare dso_local i32 @ps_pkt_id(i32, i32) #1

declare dso_local i64 @ps_id_to_tk(i32) #1

declare dso_local i32 @ps_pkt_parse_pes(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_12__*) #1

declare dso_local i32 @ps_pkt_parse_pack(i32, i32, i64*, i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
