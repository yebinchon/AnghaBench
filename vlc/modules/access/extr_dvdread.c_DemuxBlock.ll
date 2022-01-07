; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dvdread.c_DemuxBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dvdread.c_DemuxBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@VLC_TICK_0 = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i32)* @DemuxBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DemuxBlock(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %7, align 8
  br label %17

17:                                               ; preds = %130, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %138

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ps_pkt_size(i32* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %20
  br label %138

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.TYPE_16__* @block_Alloc(i32 %32)
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %9, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @memcpy(i32 %36, i32* %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 256, %42
  switch i32 %43, label %74 [
    i32 441, label %44
    i32 443, label %44
    i32 444, label %44
    i32 442, label %47
  ]

44:                                               ; preds = %31, %31, %31
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = call i32 @block_Release(%struct.TYPE_16__* %45)
  br label %130

47:                                               ; preds = %31
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ps_pkt_parse_pack(i32 %50, i32 %53, i64* %10, i32* %11)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %47
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @VLC_TICK_0, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @es_out_SetPCR(i32 %59, i64 %62)
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %56
  br label %71

71:                                               ; preds = %70, %47
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = call i32 @block_Release(%struct.TYPE_16__* %72)
  br label %130

74:                                               ; preds = %31
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ps_pkt_id(i32 %77, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp sge i32 %82, 192
  br i1 %83, label %84, label %126

84:                                               ; preds = %74
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @ps_id_to_tk(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 %89
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %13, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %84
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @ESNew(%struct.TYPE_14__* %96, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %95, %84
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = call i32 @VLC_OBJECT(%struct.TYPE_14__* %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ps_pkt_parse_pes(i32 %106, %struct.TYPE_16__* %107, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %104
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %121 = call i32 @es_out_Send(i32 %116, i32 %119, %struct.TYPE_16__* %120)
  br label %125

122:                                              ; preds = %104, %99
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %124 = call i32 @block_Release(%struct.TYPE_16__* %123)
  br label %125

125:                                              ; preds = %122, %113
  br label %129

126:                                              ; preds = %74
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %128 = call i32 @block_Release(%struct.TYPE_16__* %127)
  br label %129

129:                                              ; preds = %126, %125
  br label %130

130:                                              ; preds = %129, %71, %44
  %131 = load i32, i32* %8, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %5, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %6, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %6, align 4
  br label %17

138:                                              ; preds = %30, %17
  %139 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %139
}

declare dso_local i32 @ps_pkt_size(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #1

declare dso_local i32 @ps_pkt_parse_pack(i32, i32, i64*, i32*) #1

declare dso_local i32 @es_out_SetPCR(i32, i64) #1

declare dso_local i32 @ps_pkt_id(i32, i32) #1

declare dso_local i64 @ps_id_to_tk(i32) #1

declare dso_local i32 @ESNew(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ps_pkt_parse_pes(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_14__*) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
