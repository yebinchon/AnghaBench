; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_sw.c_pbo_picture_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_sw.c_pbo_picture_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 (i64, i32)* }
%struct.TYPE_18__ = type { i32*, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }

@pbo_picture_destroy = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_20__*)* @pbo_picture_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @pbo_picture_create(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %9 = call %struct.TYPE_18__* @calloc(i32 1, i32 16)
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = icmp eq %struct.TYPE_18__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %133

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %18 = load i32, i32* @pbo_picture_destroy, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %19, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = call %struct.TYPE_17__* @picture_NewFromResource(i32* %22, %struct.TYPE_19__* %5)
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %6, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = icmp eq %struct.TYPE_17__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = call i32 @free(%struct.TYPE_18__* %27)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %133

29:                                               ; preds = %16
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32 (i64, i32)*, i32 (i64, i32)** %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %34(i64 %37, i32 %40)
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = call i64 @picture_Setup(%struct.TYPE_17__* %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %29
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = call i32 @picture_Release(%struct.TYPE_17__* %55)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %133

57:                                               ; preds = %29
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br label %71

71:                                               ; preds = %62, %57
  %72 = phi i1 [ false, %57 ], [ %70, %62 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %128, %71
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %131

82:                                               ; preds = %75
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i64 %87
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %8, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %82
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ule i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @SIZE_MAX, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = udiv i64 %103, %106
  %108 = icmp ugt i64 %102, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %98, %93, %82
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = call i32 @picture_Release(%struct.TYPE_17__* %110)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %133

112:                                              ; preds = %98
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = mul i64 %116, %119
  %121 = trunc i64 %120 to i32
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  br label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %75

131:                                              ; preds = %75
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %132, %struct.TYPE_17__** %2, align 8
  br label %133

133:                                              ; preds = %131, %109, %54, %26, %15
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %134
}

declare dso_local %struct.TYPE_18__* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_17__* @picture_NewFromResource(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local i64 @picture_Setup(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
