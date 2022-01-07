; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_subpicture.c_picture_BlendSubpicture.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_subpicture.c_picture_BlendSubpicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_24__*, i64, i32 }
%struct.TYPE_24__ = type { i64, i32, i64, i32, i32, i32, %struct.TYPE_24__* }

@.str = private unnamed_addr constant [31 x i8] c"blending %4.4s to %4.4s failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picture_BlendSubpicture(%struct.TYPE_25__* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %10 = icmp ne %struct.TYPE_23__* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %11, %3
  %22 = phi i1 [ false, %11 ], [ false, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %8, align 8
  br label %28

28:                                               ; preds = %97, %21
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %30 = icmp ne %struct.TYPE_24__* %29, null
  br i1 %30, label %31, label %101

31:                                               ; preds = %28
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 5
  %56 = call i64 @filter_ConfigureBlend(%struct.TYPE_22__* %45, i32 %49, i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %41
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = sdiv i32 %76, 255
  %78 = call i64 @filter_Blend(%struct.TYPE_22__* %59, %struct.TYPE_25__* %60, i32 %63, i32 %66, i64 %69, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %58, %41
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = bitcast i32* %85 to i8*
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = bitcast i32* %90 to i8*
  %92 = call i32 @msg_Err(%struct.TYPE_22__* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %86, i8* %91)
  br label %96

93:                                               ; preds = %58
  %94 = load i32, i32* %7, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %93, %80
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 6
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  store %struct.TYPE_24__* %100, %struct.TYPE_24__** %8, align 8
  br label %28

101:                                              ; preds = %28
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @filter_ConfigureBlend(%struct.TYPE_22__*, i32, i32, i32*) #1

declare dso_local i64 @filter_Blend(%struct.TYPE_22__*, %struct.TYPE_25__*, i32, i32, i64, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_22__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
