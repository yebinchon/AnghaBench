; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_vobsub.c_DemuxVobSub.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_vobsub.c_DemuxVobSub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32*, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"broken PES size\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"invalid PES\00", align 1
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_16__*)* @DemuxVobSub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DemuxVobSub(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %5, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %7, align 8
  br label %27

27:                                               ; preds = %176, %113, %83, %2
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 6
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ult i32* %29, %30
  br i1 %31, label %32, label %177

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ps_pkt_size(i32* %33, i32 %40)
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %177

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = icmp sgt i64 %47, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = call i32 @msg_Warn(%struct.TYPE_14__* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %177

58:                                               ; preds = %45
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %68, %63, %58
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = call i32 @msg_Warn(%struct.TYPE_14__* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %177

76:                                               ; preds = %68
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @ps_pkt_id(i32* %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 65504
  %82 = icmp ne i32 %81, 48416
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %6, align 8
  br label %27

88:                                               ; preds = %76
  %89 = load i32, i32* %9, align 4
  %90 = call %struct.TYPE_16__* @block_Alloc(i32 %89)
  store %struct.TYPE_16__* %90, %struct.TYPE_16__** %10, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %92 = icmp eq %struct.TYPE_16__* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %177

97:                                               ; preds = %88
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @memcpy(i32* %100, i32* %101, i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %6, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = call i32 @VLC_OBJECT(%struct.TYPE_14__* %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %111 = call i64 @ps_pkt_parse_pes(i32 %109, %struct.TYPE_16__* %110, i32 1)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %97
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %115 = call i32 @block_Release(%struct.TYPE_16__* %114)
  br label %27

116:                                              ; preds = %97
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %117, 31
  store i32 %118, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %164, %116
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %119
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %130
  store %struct.TYPE_13__* %131, %struct.TYPE_13__** %13, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  store i32 %134, i32* %138, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %125
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %145
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %159 = call i32 @es_out_Send(i32 %154, i64 %157, %struct.TYPE_16__* %158)
  %160 = load i32, i32* @VLC_TICK_INVALID, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  br label %167

163:                                              ; preds = %145, %125
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %119

167:                                              ; preds = %151, %119
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sge i32 %168, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %175 = call i32 @block_Release(%struct.TYPE_16__* %174)
  br label %176

176:                                              ; preds = %173, %167
  br label %27

177:                                              ; preds = %96, %73, %55, %44, %27
  %178 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %178
}

declare dso_local i32 @ps_pkt_size(i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @ps_pkt_id(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ps_pkt_parse_pes(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_14__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #1

declare dso_local i32 @es_out_Send(i32, i64, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
