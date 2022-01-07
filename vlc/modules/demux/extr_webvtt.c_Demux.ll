; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i64 }

@VLC_TICK_0 = common dso_local global i64 0, align 8
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %181, %1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %15
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp sle i64 %36, %37
  br label %39

39:                                               ; preds = %25, %15
  %40 = phi i1 [ false, %15 ], [ %38, %25 ]
  br i1 %40, label %41, label %182

41:                                               ; preds = %39
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %91, %41
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %54
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %66, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %65
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %7, align 8
  br label %92

91:                                               ; preds = %65
  br label %54

92:                                               ; preds = %79, %54
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call %struct.TYPE_14__* @demux_From(%struct.TYPE_12__* %93, i64 %94)
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %8, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = icmp ne %struct.TYPE_14__* %96, null
  br i1 %97, label %98, label %152

98:                                               ; preds = %92
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %6, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* @VLC_TICK_0, align 8
  %105 = load i64, i64* %6, align 8
  %106 = add nsw i64 %104, %105
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  store i64 %106, i64* %110, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %98
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %115, %98
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @es_out_SetPCR(i32 %136, i64 %139)
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %133, %128, %123
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = call i32 @es_out_Send(i32 %146, i32 %149, %struct.TYPE_14__* %150)
  br label %152

152:                                              ; preds = %143, %92
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ult i64 %156, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %152
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %181

175:                                              ; preds = %162
  %176 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %162, %152
  br label %15

182:                                              ; preds = %39
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %200, label %187

187:                                              ; preds = %182
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* @VLC_TICK_0, align 8
  %192 = load i64, i64* %5, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @es_out_SetPCR(i32 %190, i64 %193)
  %195 = call i64 @VLC_TICK_FROM_SEC(i32 1)
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, %195
  store i64 %199, i64* %197, align 8
  br label %200

200:                                              ; preds = %187, %182
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp uge i64 %204, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %211, i32* %2, align 4
  br label %214

212:                                              ; preds = %200
  %213 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.TYPE_14__* @demux_From(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @es_out_SetPCR(i32, i64) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @VLC_TICK_FROM_SEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
