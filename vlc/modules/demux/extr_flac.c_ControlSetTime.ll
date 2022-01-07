; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_flac.c_ControlSetTime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_flac.c_ControlSetTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64, i64 }

@STREAM_CAN_SEEK = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@ES_OUT_SET_NEXT_DISPLAY_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64)* @ControlSetTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ControlSetTime(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STREAM_CAN_SEEK, align 4
  %23 = call i32 @vlc_stream_Control(i32 %21, i32 %22, i32* %7)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %3, align 4
  br label %178

28:                                               ; preds = %2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = call i64 @ControlGetLength(%struct.TYPE_9__* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %3, align 4
  br label %178

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @stream_Size(i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %3, align 4
  br label %178

47:                                               ; preds = %35
  %48 = load i64, i64* %9, align 8
  %49 = sitofp i64 %48 to double
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = sitofp i64 %54 to double
  %56 = fdiv double %49, %55
  store double %56, double* %11, align 8
  %57 = load double, double* %11, align 8
  %58 = fcmp oeq double %57, 0.000000e+00
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %60, i32* %3, align 4
  br label %178

61:                                               ; preds = %47
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %13, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %136

76:                                               ; preds = %61
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %98, %76
  %82 = load i32, i32* %8, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %87, i64 %89
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp sle i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %101

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %8, align 4
  br label %81

101:                                              ; preds = %96, %81
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %104, i64 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  store i64 %112, i64* %12, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %101
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %122, i64 %125
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  store i64 %133, i64* %13, align 8
  br label %134

134:                                              ; preds = %119, %101
  %135 = load i64, i64* %12, align 8
  store i64 %135, i64* %14, align 8
  br label %142

136:                                              ; preds = %61
  %137 = load i64, i64* %5, align 8
  %138 = sitofp i64 %137 to double
  %139 = load double, double* %11, align 8
  %140 = fdiv double %138, %139
  %141 = fptosi double %140 to i64
  store i64 %141, i64* %14, align 8
  br label %142

142:                                              ; preds = %136, %134
  %143 = load i32, i32* @VLC_SUCCESS, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @vlc_stream_Seek(i32 %146, i64 %147)
  %149 = icmp ne i32 %143, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %151, i32* %3, align 4
  br label %178

152:                                              ; preds = %142
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %154 = load i64, i64* %5, align 8
  %155 = load double, double* %11, align 8
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* %13, align 8
  %158 = call i32 @RefineSeek(%struct.TYPE_9__* %153, i64 %154, double %155, i64 %156, i64 %157)
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @VLC_SUCCESS, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %152
  %163 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %169 = call i32 @Reset(%struct.TYPE_10__* %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ES_OUT_SET_NEXT_DISPLAY_TIME, align 4
  %174 = load i64, i64* %5, align 8
  %175 = call i32 @es_out_Control(i32 %172, i32 %173, i64 %174)
  br label %176

176:                                              ; preds = %162, %152
  %177 = load i32, i32* %15, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %150, %59, %45, %33, %26
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @vlc_stream_Control(i32, i32, i32*) #1

declare dso_local i64 @ControlGetLength(%struct.TYPE_9__*) #1

declare dso_local i64 @stream_Size(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_stream_Seek(i32, i64) #1

declare dso_local i32 @RefineSeek(%struct.TYPE_9__*, i64, double, i64, i64) #1

declare dso_local i32 @Reset(%struct.TYPE_10__*) #1

declare dso_local i32 @es_out_Control(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
