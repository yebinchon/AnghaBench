; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenDeinterlace_InitFilterParams.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenDeinterlace_InitFilterParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.deint_data = type { i32 }
%struct.deint_mode = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@VAProcDeinterlacingCount = common dso_local global i32 0, align 4
@VAProcFilterDeinterlacing = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"deinterlace-mode\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i8**, i32*, i32*)* @OpenDeinterlace_InitFilterParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDeinterlace_InitFilterParams(%struct.TYPE_11__* %0, i8* %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.deint_data*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.deint_mode, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.deint_data*
  store %struct.deint_data* %23, %struct.deint_data** %12, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %13, align 8
  %27 = load i32, i32* @VAProcDeinterlacingCount, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %14, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %31 = load i32, i32* @VAProcDeinterlacingCount, align 4
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = call i32 @VLC_OBJECT(%struct.TYPE_11__* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VAProcFilterDeinterlacing, align 4
  %43 = bitcast i32* %30 to i32**
  %44 = call i64 @vlc_vaapi_QueryVideoProcFilterCaps(i32 %33, i32 %37, i32 %41, i32 %42, i32** %43, i32* %16)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %5
  %47 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %85

48:                                               ; preds = %5
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = call i8* @var_InheritString(%struct.TYPE_11__* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %50, i8** %19, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @OpenDeinterlace_GetMode(%struct.TYPE_11__* %51, i8* %52, %struct.deint_mode* %18, i32* %30, i32 %53)
  store i32 %54, i32* %20, align 4
  %55 = load i8*, i8** %19, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i32, i32* %20, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %60, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %85

61:                                               ; preds = %48
  %62 = load i32*, i32** %10, align 8
  store i32 8, i32* %62, align 4
  %63 = load i32*, i32** %11, align 8
  store i32 1, i32* %63, align 4
  %64 = call %struct.TYPE_13__* @calloc(i32 1, i32 8)
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %21, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %66 = icmp ne %struct.TYPE_13__* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %85

69:                                               ; preds = %61
  %70 = load i32, i32* @VAProcFilterDeinterlacing, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %18, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %78 = bitcast %struct.TYPE_13__* %77 to i8*
  %79 = load i8**, i8*** %9, align 8
  store i8* %78, i8** %79, align 8
  %80 = getelementptr inbounds %struct.deint_mode, %struct.deint_mode* %18, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.deint_data*, %struct.deint_data** %12, align 8
  %83 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %84, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %85

85:                                               ; preds = %69, %67, %59, %46
  %86 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @vlc_vaapi_QueryVideoProcFilterCaps(i32, i32, i32, i32, i32**, i32*) #2

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_11__*) #2

declare dso_local i8* @var_InheritString(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @OpenDeinterlace_GetMode(%struct.TYPE_11__*, i8*, %struct.deint_mode*, i32*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
