; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_vnc.c_mallocFrameBufferHandler.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_vnc.c_mallocFrameBufferHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DemuxThread = common dso_local global i32 0, align 4
@VLC_CODEC_RGB8 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @mallocFrameBufferHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mallocFrameBufferHandler(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = load i32, i32* @DemuxThread, align 4
  %13 = call i64 @rfbClientGetClientData(%struct.TYPE_18__* %11, i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %6, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @es_out_Del(i32 %25, i32* %28)
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %22, %1
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %46 [
    i32 8, label %44
    i32 16, label %47
    i32 24, label %48
    i32 32, label %49
  ]

44:                                               ; preds = %32
  %45 = load i32, i32* @VLC_CODEC_RGB8, align 4
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %32, %46
  store i32 130, i32* %4, align 4
  br label %50

48:                                               ; preds = %32
  store i32 129, i32* %4, align 4
  br label %50

49:                                               ; preds = %32
  store i32 128, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %47, %44
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %90 [
    i32 130, label %52
    i32 129, label %71
    i32 128, label %71
  ]

52:                                               ; preds = %50
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  store i32 11, i32* %55, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  store i32 5, i32* %58, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 4
  store i32 31, i32* %64, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 5
  store i32 63, i32* %67, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 6
  store i32 31, i32* %70, align 4
  br label %90

71:                                               ; preds = %50, %50
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  store i32 16, i32* %74, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  store i32 8, i32* %77, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  store i32 0, i32* %80, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 4
  store i32 255, i32* %83, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 5
  store i32 255, i32* %86, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 6
  store i32 255, i32* %89, align 4
  br label %90

90:                                               ; preds = %50, %71, %52
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sdiv i32 %95, 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = icmp ne %struct.TYPE_15__* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %90
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call %struct.TYPE_15__* @block_Realloc(%struct.TYPE_15__* %106, i32 0, i32 %109)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 3
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %112, align 8
  br label %120

113:                                              ; preds = %90
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call %struct.TYPE_15__* @block_Alloc(i32 %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 3
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %119, align 8
  br label %120

120:                                              ; preds = %113, %103
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = icmp ne %struct.TYPE_15__* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 4
  br label %135

133:                                              ; preds = %120
  %134 = load i32, i32* @FALSE, align 4
  store i32 %134, i32* %2, align 4
  br label %209

135:                                              ; preds = %125
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = call i32 @SetFormatAndEncodings(%struct.TYPE_18__* %136)
  %138 = load i32, i32* @VIDEO_ES, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @es_format_Init(%struct.TYPE_19__* %10, i32 %138, i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %7, align 4
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* %8, align 4
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 3
  store i32 %149, i32* %153, align 4
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 5
  store i32 1000, i32* %155, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 1000, %158
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %9, align 4
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 7
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %168, %172
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 8
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %179, %183
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 9
  store i32 %184, i32* %186, align 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %190, %194
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 10
  store i32 %195, i32* %197, align 4
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 12
  store i32 1, i32* %199, align 4
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 11
  store i32 1, i32* %201, align 4
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32* @es_out_Add(i32 %204, %struct.TYPE_19__* %10)
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 2
  store i32* %205, i32** %207, align 8
  %208 = load i32, i32* @TRUE, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %135, %133
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i64 @rfbClientGetClientData(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @es_out_Del(i32, i32*) #1

declare dso_local %struct.TYPE_15__* @block_Realloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @block_Alloc(i32) #1

declare dso_local i32 @SetFormatAndEncodings(%struct.TYPE_18__*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32* @es_out_Add(i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
