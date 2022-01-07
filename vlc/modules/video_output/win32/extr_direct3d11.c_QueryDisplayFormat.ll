; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_QueryDisplayFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_QueryDisplayFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 (i32, %struct.TYPE_23__*, i32*)*, %struct.TYPE_18__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_21__ = type { i32, i32, i32 }

@COLOR_RANGE_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Failed to set format %dx%d %d bits on output\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_22__*)* @QueryDisplayFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QueryDisplayFormat(%struct.TYPE_19__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_23__, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %6, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %36 [
    i32 131, label %30
    i32 128, label %32
    i32 129, label %32
    i32 130, label %34
  ]

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  store i32 8, i32* %31, align 8
  br label %71

32:                                               ; preds = %2, %2
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  store i32 8, i32* %33, align 8
  br label %71

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  store i32 10, i32* %35, align 8
  br label %71

36:                                               ; preds = %2
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_21__* @vlc_fourcc_GetChromaDescription(i32 %39)
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %8, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = icmp eq %struct.TYPE_21__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  store i32 8, i32* %44, align 8
  br label %70

45:                                               ; preds = %36
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %67

51:                                               ; preds = %45
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  br label %64

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %62, %59 ], [ 1, %63 ]
  %66 = sdiv i32 %54, %65
  br label %67

67:                                               ; preds = %64, %50
  %68 = phi i32 [ 8, %50 ], [ %66, %64 ]
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %43
  br label %71

71:                                               ; preds = %70, %34, %32, %30
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @COLOR_RANGE_FULL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @is_d3d11_opaque(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @vlc_fourcc_IsYUV(i32 %86)
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %83, %77, %71
  %90 = phi i1 [ true, %77 ], [ true, %71 ], [ %88, %83 ]
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 6
  store i64 %95, i64* %96, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 5
  store i64 %99, i64* %100, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  store i64 %103, i64* %104, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load i32 (i32, %struct.TYPE_23__*, i32*)*, i32 (i32, %struct.TYPE_23__*, i32*)** %106, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 %107(i32 %110, %struct.TYPE_23__* %7, i32* %9)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %89
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @msg_Err(%struct.TYPE_19__* %114, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %118, i32 %120)
  %122 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %122, i32* %3, align 4
  br label %127

123:                                              ; preds = %89
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %126 = call i32 @UpdateDisplayFormat(%struct.TYPE_19__* %124, i32* %9, %struct.TYPE_22__* %125)
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %113
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_21__* @vlc_fourcc_GetChromaDescription(i32) #1

declare dso_local i64 @is_d3d11_opaque(i32) #1

declare dso_local i64 @vlc_fourcc_IsYUV(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_19__*, i8*, i32, i32, i32) #1

declare dso_local i32 @UpdateDisplayFormat(%struct.TYPE_19__*, i32*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
