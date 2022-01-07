; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenDeinterlace.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenDeinterlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.deint_data = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { %struct.deint_data* }
%struct.TYPE_7__ = type { %struct.deint_data* }
%struct.TYPE_6__ = type { i32, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VAProcFilterDeinterlacing = common dso_local global i32 0, align 4
@OpenDeinterlace_InitFilterParams = common dso_local global i32 0, align 4
@OpenDeinterlace_InitHistory = common dso_local global i32 0, align 4
@DeinterlaceX2 = common dso_local global i32 0, align 4
@Deinterlace = common dso_local global i32 0, align 4
@Deinterlace_Flush = common dso_local global i32 0, align 4
@METADATA_SIZE = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenDeinterlace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDeinterlace(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.deint_data*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = call %struct.deint_data* @calloc(i32 1, i32 32)
  store %struct.deint_data* %10, %struct.deint_data** %6, align 8
  %11 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %12 = icmp ne %struct.deint_data* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %14, i32* %2, align 4
  br label %94

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load i32, i32* @VAProcFilterDeinterlacing, align 4
  %18 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %19 = load i32, i32* @OpenDeinterlace_InitFilterParams, align 4
  %20 = load i32, i32* @OpenDeinterlace_InitHistory, align 4
  %21 = call i64 @Open(%struct.TYPE_9__* %16, i32 %17, i32* %4, %struct.deint_data* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %66

24:                                               ; preds = %15
  %25 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %26 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @DeinterlaceX2, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @Deinterlace, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @Deinterlace_Flush, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %61, %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @METADATA_SIZE, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i32, i32* @VLC_TICK_INVALID, align 4
  %47 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %48 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %46, i32* %53, align 4
  %54 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %55 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 2, i32* %60, align 4
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %65, i32* %2, align 4
  br label %94

66:                                               ; preds = %23
  %67 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %68 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.deint_data*, %struct.deint_data** %69, align 8
  %71 = icmp ne %struct.deint_data* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %74 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.deint_data*, %struct.deint_data** %75, align 8
  %77 = call i32 @free(%struct.deint_data* %76)
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %80 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.deint_data*, %struct.deint_data** %81, align 8
  %83 = icmp ne %struct.deint_data* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %86 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.deint_data*, %struct.deint_data** %87, align 8
  %89 = call i32 @free(%struct.deint_data* %88)
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %92 = call i32 @free(%struct.deint_data* %91)
  %93 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %64, %13
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.deint_data* @calloc(i32, i32) #1

declare dso_local i64 @Open(%struct.TYPE_9__*, i32, i32*, %struct.deint_data*, i32, i32) #1

declare dso_local i32 @free(%struct.deint_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
