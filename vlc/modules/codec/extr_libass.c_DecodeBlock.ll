; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i64, i32 }
%struct.TYPE_25__ = type { i32, i32, i8*, i64, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i64 }
%struct.TYPE_22__ = type { i32, i8*, i64, %struct.TYPE_24__*, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_22__*, i32, i32, i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@SubpictureDestroy = common dso_local global i32 0, align 4
@SubpictureUpdate = common dso_local global i32 0, align 4
@SubpictureValidate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't get spu buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_25__*)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBlock(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %14 = icmp eq %struct.TYPE_25__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %16, i32* %3, align 4
  br label %185

17:                                               ; preds = %2
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %26 = call i32 @Flush(%struct.TYPE_23__* %25)
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %28 = call i32 @block_Release(%struct.TYPE_25__* %27)
  %29 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %29, i32* %3, align 4
  br label %185

30:                                               ; preds = %17
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35, %30
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %45 = call i32 @block_Release(%struct.TYPE_25__* %44)
  %46 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %46, i32* %3, align 4
  br label %185

47:                                               ; preds = %35
  %48 = call i8* @malloc(i32 40)
  %49 = bitcast i8* %48 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %49, %struct.TYPE_22__** %8, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = icmp ne %struct.TYPE_22__* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = call i32 @block_Release(%struct.TYPE_25__* %53)
  %55 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %55, i32* %3, align 4
  br label %185

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %58, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %60 = load i32, i32* @SubpictureDestroy, align 4
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %62 = load i32, i32* @SubpictureUpdate, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %64 = load i32, i32* @SubpictureValidate, align 4
  store i32 %64, i32* %63, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %66 = call %struct.TYPE_21__* @decoder_NewSubpicture(%struct.TYPE_23__* %65, %struct.TYPE_20__* %9)
  store %struct.TYPE_21__* %66, %struct.TYPE_21__** %7, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %68 = icmp ne %struct.TYPE_21__* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %56
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = call i32 @msg_Warn(%struct.TYPE_23__* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %73 = call i32 @free(%struct.TYPE_22__* %72)
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %75 = call i32 @block_Release(%struct.TYPE_25__* %74)
  %76 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %76, i32* %3, align 4
  br label %185

77:                                               ; preds = %56
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 3
  store %struct.TYPE_24__* %80, %struct.TYPE_24__** %82, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @malloc(i32 %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %77
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %105 = call i32 @subpicture_Delete(%struct.TYPE_21__* %104)
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = call i32 @block_Release(%struct.TYPE_25__* %106)
  %108 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %108, i32* %3, align 4
  br label %185

109:                                              ; preds = %77
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memcpy(i8* %112, i8* %115, i32 %118)
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = call i32 @__MAX(i32 %127, i64 %134)
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = call i32 @vlc_mutex_lock(i32* %148)
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %109
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @MS_FROM_VLC_TICK(i64 %166)
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @MS_FROM_VLC_TICK(i64 %170)
  %172 = call i32 @ass_process_chunk(i64 %157, i8* %160, i32 %163, i32 %167, i32 %171)
  br label %173

173:                                              ; preds = %154, %109
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = call i32 @vlc_mutex_unlock(i32* %175)
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %178 = call i32 @DecSysHold(%struct.TYPE_24__* %177)
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %180 = call i32 @block_Release(%struct.TYPE_25__* %179)
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %183 = call i32 @decoder_QueueSub(%struct.TYPE_23__* %181, %struct.TYPE_21__* %182)
  %184 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %173, %103, %69, %52, %43, %24, %15
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @Flush(%struct.TYPE_23__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_25__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local %struct.TYPE_21__* @decoder_NewSubpicture(%struct.TYPE_23__*, %struct.TYPE_20__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_22__*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_21__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @__MAX(i32, i64) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @ass_process_chunk(i64, i8*, i32, i32, i32) #1

declare dso_local i32 @MS_FROM_VLC_TICK(i64) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @DecSysHold(%struct.TYPE_24__*) #1

declare dso_local i32 @decoder_QueueSub(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
