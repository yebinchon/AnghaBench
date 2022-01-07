; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenBasicFilter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenBasicFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.basic_filter_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, %struct.range* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_VAR_FLOAT = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@VLC_VAR_ISCOMMAND = common dso_local global i32 0, align 4
@OpenBasicFilter_InitFilterParams = common dso_local global i32 0, align 4
@FilterCallback = common dso_local global i32 0, align 4
@BasicFilter = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, %struct.range*)* @OpenBasicFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenBasicFilter(i32* %0, i32 %1, i8* %2, %struct.range* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.range*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.basic_filter_data*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.range* %3, %struct.range** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @assert(i32 %17)
  %19 = call %struct.basic_filter_data* @calloc(i32 1, i32 24)
  store %struct.basic_filter_data* %19, %struct.basic_filter_data** %12, align 8
  %20 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %21 = icmp ne %struct.basic_filter_data* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %23, i32* %5, align 4
  br label %79

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %27 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %30 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load %struct.range*, %struct.range** %9, align 8
  %33 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %34 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store %struct.range* %32, %struct.range** %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %38 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %42 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @VLC_VAR_ISCOMMAND, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @var_Create(i32* %36, i8* %40, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %49 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %52 = load i32, i32* @OpenBasicFilter_InitFilterParams, align 4
  %53 = call i64 @Open(%struct.TYPE_5__* %47, i32 %50, i32* %10, %struct.basic_filter_data* %51, i32 %52, i32* null)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %24
  br label %69

56:                                               ; preds = %24
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %59 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @FilterCallback, align 4
  %63 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %64 = call i32 @var_AddCallback(i32* %57, i8* %61, i32 %62, %struct.basic_filter_data* %63)
  %65 = load i32, i32* @BasicFilter, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %68, i32* %5, align 4
  br label %79

69:                                               ; preds = %55
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %72 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @var_Destroy(i32* %70, i8* %74)
  %76 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %77 = call i32 @free(%struct.basic_filter_data* %76)
  %78 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %69, %56, %22
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.basic_filter_data* @calloc(i32, i32) #1

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i64 @Open(%struct.TYPE_5__*, i32, i32*, %struct.basic_filter_data*, i32, i32*) #1

declare dso_local i32 @var_AddCallback(i32*, i8*, i32, %struct.basic_filter_data*) #1

declare dso_local i32 @var_Destroy(i32*, i8*) #1

declare dso_local i32 @free(%struct.basic_filter_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
