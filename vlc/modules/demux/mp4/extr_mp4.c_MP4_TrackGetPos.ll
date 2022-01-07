; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_TrackGetPos.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_TrackGetPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i64*, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, i32, i32 }

@AUDIO_ES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @MP4_TrackGetPos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_TrackGetPos(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %161

20:                                               ; preds = %1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %6, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AUDIO_ES, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %88

33:                                               ; preds = %20
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %33
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %88

43:                                               ; preds = %38
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %86 [
    i32 128, label %48
    i32 129, label %67
  ]

48:                                               ; preds = %43
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %51, %60
  %62 = sdiv i32 %61, 160
  %63 = mul nsw i32 %62, 33
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %195

67:                                               ; preds = %43
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %70, %79
  %81 = sdiv i32 %80, 64
  %82 = mul nsw i32 %81, 34
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %195

86:                                               ; preds = %43
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %38, %33, %20
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AUDIO_ES, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %116, label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %105, 1
  br i1 %106, label %116, label %107

107:                                              ; preds = %100
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %107, %100, %95, %88
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %119, %128
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = call i32 @MP4_GetFixedSampleSize(%struct.TYPE_16__* %130, %struct.TYPE_17__* %131)
  %133 = mul nsw i32 %129, %132
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %5, align 4
  br label %160

136:                                              ; preds = %107
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %139, %148
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = sdiv i32 %149, %152
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %153, %156
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %136, %116
  br label %193

161:                                              ; preds = %1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %189, %161
  %172 = load i32, i32* %4, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = icmp ult i32 %172, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %171
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %177
  %190 = load i32, i32* %4, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %4, align 4
  br label %171

192:                                              ; preds = %171
  br label %193

193:                                              ; preds = %192, %160
  %194 = load i32, i32* %5, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %193, %67, %48
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @MP4_GetFixedSampleSize(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
