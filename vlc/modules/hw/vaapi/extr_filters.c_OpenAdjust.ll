; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenAdjust.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenAdjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.adjust_data = type { i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@NUM_ADJUST_MODES = common dso_local global i32 0, align 4
@adjust_params_names = common dso_local global i32* null, align 8
@VLC_VAR_FLOAT = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@VLC_VAR_ISCOMMAND = common dso_local global i32 0, align 4
@VAProcFilterColorBalance = common dso_local global i32 0, align 4
@OpenAdjust_InitFilterParams = common dso_local global i32 0, align 4
@FilterCallback = common dso_local global i32 0, align 4
@Adjust = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenAdjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenAdjust(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.adjust_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %5, align 8
  %12 = call %struct.adjust_data* @calloc(i32 1, i32 4)
  store %struct.adjust_data* %12, %struct.adjust_data** %6, align 8
  %13 = load %struct.adjust_data*, %struct.adjust_data** %6, align 8
  %14 = icmp ne %struct.adjust_data* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %16, i32* %2, align 4
  br label %89

17:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NUM_ADJUST_MODES, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** @adjust_params_names, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %30 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VLC_VAR_ISCOMMAND, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @var_Create(i32* %23, i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = load i32, i32* @VAProcFilterColorBalance, align 4
  %41 = load %struct.adjust_data*, %struct.adjust_data** %6, align 8
  %42 = load i32, i32* @OpenAdjust_InitFilterParams, align 4
  %43 = call i64 @Open(%struct.TYPE_3__* %39, i32 %40, i32* %4, %struct.adjust_data* %41, i32 %42, i32* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %69

46:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @NUM_ADJUST_MODES, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** @adjust_params_names, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FilterCallback, align 4
  %59 = load %struct.adjust_data*, %struct.adjust_data** %6, align 8
  %60 = call i32 @var_AddCallback(i32* %52, i32 %57, i32 %58, %struct.adjust_data* %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %47

64:                                               ; preds = %47
  %65 = load i32, i32* @Adjust, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %68, i32* %2, align 4
  br label %89

69:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %82, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @NUM_ADJUST_MODES, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** @adjust_params_names, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @var_Destroy(i32* %75, i32 %80)
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %70

85:                                               ; preds = %70
  %86 = load %struct.adjust_data*, %struct.adjust_data** %6, align 8
  %87 = call i32 @free(%struct.adjust_data* %86)
  %88 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %64, %15
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.adjust_data* @calloc(i32, i32) #1

declare dso_local i32 @var_Create(i32*, i32, i32) #1

declare dso_local i64 @Open(%struct.TYPE_3__*, i32, i32*, %struct.adjust_data*, i32, i32*) #1

declare dso_local i32 @var_AddCallback(i32*, i32, i32, %struct.adjust_data*) #1

declare dso_local i32 @var_Destroy(i32*, i32) #1

declare dso_local i32 @free(%struct.adjust_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
