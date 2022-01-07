; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_CreateVLCEPGEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_CreateVLCEPGEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32*, i32, i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32*, i64, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32*, i32 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, %struct.TYPE_14__*, %struct.TYPE_17__*, %struct.TYPE_16__*)* @ATSC_CreateVLCEPGEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @ATSC_CreateVLCEPGEvent(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_17__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @VLC_UNUSED(i32* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @atsc_a65_Decode_multiple_string(i32 %24, i32* %27, i32 %30)
  store i8* %31, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @atsc_a65_GPSTimeToEpoch(i32 %34, i32 %39)
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @EIT_DEBUG_TIMESHIFT(i64 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %14, align 8
  br label %46

46:                                               ; preds = %146, %4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %48 = icmp ne %struct.TYPE_15__* %47, null
  br i1 %48, label %49, label %150

49:                                               ; preds = %46
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %144 [
    i32 128, label %53
  ]

53:                                               ; preds = %49
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %15, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %16, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 63
  store i32 %65, i32* %17, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %16, align 8
  br label %70

70:                                               ; preds = %140, %53
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %16, align 8
  %75 = icmp ugt i64 %74, 3
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i1 [ false, %70 ], [ %75, %73 ]
  br i1 %77, label %78, label %143

78:                                               ; preds = %76
  %79 = load i32*, i32** %15, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 2
  %85 = add i64 %84, 3
  %86 = load i64, i64* %16, align 8
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %143

89:                                               ; preds = %78
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %18, align 4
  %92 = mul nsw i32 2, %91
  %93 = sext i32 %92 to i64
  %94 = add i64 2, %93
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %18, align 4
  %98 = mul nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = add i64 3, %99
  %101 = load i32*, i32** %15, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 %100
  store i32* %102, i32** %15, align 8
  %103 = load i32, i32* %18, align 4
  %104 = mul nsw i32 2, %103
  %105 = sext i32 %104 to i64
  %106 = add i64 3, %105
  %107 = load i64, i64* %16, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %16, align 8
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %16, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %89
  br label %143

114:                                              ; preds = %89
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @unlikely(i8* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @free(i8* %119)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %19, align 4
  %127 = call i8* @atsc_a65_Decode_multiple_string(i32 %124, i32* %125, i32 %126)
  store i8* %127, i8** %10, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %143

131:                                              ; preds = %121
  %132 = load i32, i32* %19, align 4
  %133 = load i32*, i32** %15, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %15, align 8
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %16, align 8
  %139 = sub i64 %138, %137
  store i64 %139, i64* %16, align 8
  br label %140

140:                                              ; preds = %131
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %17, align 4
  br label %70

143:                                              ; preds = %130, %113, %88, %76
  br label %144

144:                                              ; preds = %49, %143
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  store %struct.TYPE_15__* %149, %struct.TYPE_15__** %14, align 8
  br label %46

150:                                              ; preds = %46
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %152 = icmp ne %struct.TYPE_16__* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i8* @atsc_a65_Decode_multiple_string(i32 %156, i32* %159, i32 %162)
  store i8* %163, i8** %11, align 8
  br label %164

164:                                              ; preds = %153, %150
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* @VLC_TICK_INVALID, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %164
  %169 = load i8*, i8** %9, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %193

171:                                              ; preds = %168
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load i64, i64* %13, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call %struct.TYPE_13__* @vlc_epg_event_New(i32 %174, i64 %175, i32 %178)
  store %struct.TYPE_13__* %179, %struct.TYPE_13__** %12, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %181 = icmp ne %struct.TYPE_13__* %180, null
  br i1 %181, label %182, label %192

182:                                              ; preds = %171
  %183 = call i8* @grab_notempty(i8** %9)
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  %186 = call i8* @grab_notempty(i8** %10)
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  store i8* %186, i8** %188, align 8
  %189 = call i8* @grab_notempty(i8** %11)
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  br label %192

192:                                              ; preds = %182, %171
  br label %193

193:                                              ; preds = %192, %168, %164
  %194 = load i8*, i8** %9, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i8*, i8** %10, align 8
  %197 = call i32 @free(i8* %196)
  %198 = load i8*, i8** %11, align 8
  %199 = call i32 @free(i8* %198)
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  ret %struct.TYPE_13__* %200
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i8* @atsc_a65_Decode_multiple_string(i32, i32*, i32) #1

declare dso_local i64 @atsc_a65_GPSTimeToEpoch(i32, i32) #1

declare dso_local i32 @EIT_DEBUG_TIMESHIFT(i64) #1

declare dso_local i32 @unlikely(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_13__* @vlc_epg_event_New(i32, i64, i32) #1

declare dso_local i8* @grab_notempty(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
