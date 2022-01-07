; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dvdnav.c_DemuxBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dvdnav.c_DemuxBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@BLOCK_FLAG_CELL_DISCONTINUITY = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i32)* @DemuxBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DemuxBlock(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %8, align 8
  br label %19

19:                                               ; preds = %171, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %179

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ps_pkt_size(i32* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %22
  br label %179

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.TYPE_16__* @block_Alloc(i32 %34)
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %10, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %37 = icmp ne %struct.TYPE_16__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %39, i32* %4, align 4
  br label %181

40:                                               ; preds = %33
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i32 %43, i32* %44, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = or i32 256, %49
  switch i32 %50, label %79 [
    i32 441, label %51
    i32 443, label %51
    i32 444, label %51
    i32 442, label %54
  ]

51:                                               ; preds = %40, %40, %40
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = call i32 @block_Release(%struct.TYPE_16__* %52)
  br label %171

54:                                               ; preds = %40
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ps_pkt_parse_pack(i32 %57, i32 %60, i32* %11, i32* %12)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @es_out_SetPCR(i32 %66, i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %63
  br label %76

76:                                               ; preds = %75, %54
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %78 = call i32 @block_Release(%struct.TYPE_16__* %77)
  br label %171

79:                                               ; preds = %40
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ps_pkt_id(i32 %82, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp sge i32 %87, 192
  br i1 %88, label %89, label %167

89:                                               ; preds = %79
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @ps_id_to_tk(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %14, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %89
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @ESNew(%struct.TYPE_14__* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %89
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %161

109:                                              ; preds = %104
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = call i32 @VLC_OBJECT(%struct.TYPE_14__* %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ps_pkt_parse_pes(i32 %111, %struct.TYPE_16__* %112, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %161, label %118

118:                                              ; preds = %109
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %15, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @BLOCK_FLAG_CELL_DISCONTINUITY, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %118
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @VLC_TICK_INVALID, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load i32, i32* @BLOCK_FLAG_CELL_DISCONTINUITY, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %15, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %140 = load i32, i32* %15, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %15, align 4
  br label %146

142:                                              ; preds = %128
  %143 = load i32, i32* @BLOCK_FLAG_CELL_DISCONTINUITY, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %134
  br label %147

147:                                              ; preds = %146, %118
  %148 = load i32, i32* %15, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %160 = call i32 @es_out_Send(i32 %155, i32 %158, %struct.TYPE_16__* %159)
  br label %166

161:                                              ; preds = %109, %104
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  store i32 0, i32* %163, align 4
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %165 = call i32 @block_Release(%struct.TYPE_16__* %164)
  br label %166

166:                                              ; preds = %161, %147
  br label %170

167:                                              ; preds = %79
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %169 = call i32 @block_Release(%struct.TYPE_16__* %168)
  br label %170

170:                                              ; preds = %167, %166
  br label %171

171:                                              ; preds = %170, %76, %51
  %172 = load i32, i32* %9, align 4
  %173 = load i32*, i32** %6, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %6, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %7, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %7, align 4
  br label %19

179:                                              ; preds = %32, %19
  %180 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %179, %38
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @ps_pkt_size(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #1

declare dso_local i32 @ps_pkt_parse_pack(i32, i32, i32*, i32*) #1

declare dso_local i32 @es_out_SetPCR(i32, i32) #1

declare dso_local i32 @ps_pkt_id(i32, i32) #1

declare dso_local i64 @ps_id_to_tk(i32) #1

declare dso_local i32 @ESNew(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ps_pkt_parse_pes(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_14__*) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
