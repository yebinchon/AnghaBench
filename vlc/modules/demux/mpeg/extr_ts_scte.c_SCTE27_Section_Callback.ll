; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_scte.c_SCTE27_Section_Callback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_scte.c_SCTE27_Section_Callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_18__ = type { i32*, i64, i32, i32 }

@VLC_CODEC_SCTE_27 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCTE27_Section_Callback(%struct.TYPE_17__* %0, i32* %1, i64 %2, i32* %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = ptrtoint i32* %21 to i64
  %23 = call i32 @VLC_UNUSED(i64 %22)
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @VLC_UNUSED(i64 %24)
  %26 = load i8*, i8** %12, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %13, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VLC_CODEC_SCTE_27, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %14, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call %struct.TYPE_18__* @block_Alloc(i64 %47)
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %16, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %50 = icmp ne %struct.TYPE_18__* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %6
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55, %6
  br label %163

67:                                               ; preds = %55
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @memcpy(i32* %70, i32* %71, i64 %72)
  store i32 0, i32* %17, align 4
  store i64 4, i64* %18, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 64
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %67
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 15
  %88 = shl i32 %87, 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %88, %93
  store i32 %94, i32* %17, align 4
  %95 = load i64, i64* %18, align 8
  %96 = add i64 %95, 5
  store i64 %96, i64* %18, align 8
  br label %97

97:                                               ; preds = %81, %67
  %98 = load i32, i32* %17, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %97
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %18, align 8
  %105 = add i64 %104, 8
  %106 = icmp ugt i64 %103, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %100
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %18, align 8
  %112 = add i64 %111, 3
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 64
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %135, label %118

118:                                              ; preds = %107
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %18, align 8
  %123 = add i64 %122, 4
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = call i64 @GetDWBE(i32* %124)
  store i64 %125, i64* %20, align 8
  %126 = load i64, i64* %20, align 8
  %127 = load i64, i64* %15, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load i64, i64* %20, align 8
  %131 = add nsw i64 %130, 4294967296
  store i64 %131, i64* %15, align 8
  br label %134

132:                                              ; preds = %118
  %133 = load i64, i64* %20, align 8
  store i64 %133, i64* %15, align 8
  br label %134

134:                                              ; preds = %132, %129
  br label %135

135:                                              ; preds = %134, %107
  br label %136

136:                                              ; preds = %135, %100, %97
  %137 = load i64, i64* %15, align 8
  %138 = call i32 @FROM_SCALE(i64 %137)
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 3
  store i32 %138, i32* %142, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %136
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %159 = call i32 @es_out_Send(i32 %152, i64 %157, %struct.TYPE_18__* %158)
  br label %163

160:                                              ; preds = %136
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %162 = call i32 @block_Release(%struct.TYPE_18__* %161)
  br label %163

163:                                              ; preds = %66, %160, %149
  ret void
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_18__* @block_Alloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @GetDWBE(i32*) #1

declare dso_local i32 @FROM_SCALE(i64) #1

declare dso_local i32 @es_out_Send(i32, i64, %struct.TYPE_18__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
