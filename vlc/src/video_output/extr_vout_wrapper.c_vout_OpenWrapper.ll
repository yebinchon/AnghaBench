; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_wrapper.c_vout_OpenWrapper.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_wrapper.c_vout_OpenWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32*, i32*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__*, i32 }

@VoutViewpointMoved = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Opening vout display wrapper\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vout\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"splitter,none\00", align 1
@DISPLAY_PICTURE_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Not enough display buffers in the pool, requested %u got %u\00", align 1
@VOUT_MAX_PICTURES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"viewpoint-changeable\00", align 1
@PROJECTION_MODE_RECTANGULAR = common dso_local global i64 0, align 8
@Forward = common dso_local global i32 0, align 4
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @vout_OpenWrapper(%struct.TYPE_21__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %25 = load i32, i32* @VoutViewpointMoved, align 4
  store i32 %25, i32* %24, align 8
  store i8* null, i8** %14, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = call i32 @msg_Dbg(%struct.TYPE_21__* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = call i8* @var_InheritString(%struct.TYPE_21__* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %14, align 8
  store i8* %32, i8** %13, align 8
  br label %34

33:                                               ; preds = %4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = call i32 @VLC_OBJECT(%struct.TYPE_21__* %35)
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 2
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call %struct.TYPE_23__* @vout_display_New(i32 %36, i32* %38, i32* %39, i32* %40, i8* %41, %struct.TYPE_24__* %12)
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %11, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %46 = icmp eq %struct.TYPE_23__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %5, align 8
  br label %122

48:                                               ; preds = %34
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  store i32 4, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %51 = load i32, i32* @DISPLAY_PICTURE_COUNT, align 4
  %52 = add i32 %51, 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %17, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %55 = load i32, i32* %17, align 4
  %56 = call i32* @vout_GetPool(%struct.TYPE_23__* %54, i32 %55)
  store i32* %56, i32** %18, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %119

60:                                               ; preds = %48
  %61 = load i32*, i32** %18, align 8
  %62 = call i32 @picture_pool_GetSize(i32* %61)
  %63 = load i32, i32* %17, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 @picture_pool_GetSize(i32* %68)
  %70 = call i32 @msg_Warn(%struct.TYPE_21__* %66, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %73 = call i32 @vout_IsDisplayFiltered(%struct.TYPE_23__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = load i32*, i32** %18, align 8
  %77 = call i32 @picture_pool_GetSize(i32* %76)
  %78 = load i32, i32* %17, align 4
  %79 = icmp uge i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32*, i32** %18, align 8
  %82 = call i32* @picture_pool_Reserve(i32* %81, i32 4)
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  br label %96

85:                                               ; preds = %75, %71
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = load i32, i32* @VOUT_MAX_PICTURES, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @DISPLAY_PICTURE_COUNT, align 4
  %91 = sub i32 %89, %90
  %92 = call i32 @__MAX(i32 %88, i32 %91)
  %93 = call i32* @picture_pool_NewFromFormat(i32* %87, i32 %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  store i32* %93, i32** %95, align 8
  br label %96

96:                                               ; preds = %85, %80
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32*, i32** %18, align 8
  %103 = call i32 @picture_pool_Release(i32* %102)
  br label %119

104:                                              ; preds = %96
  %105 = load i32*, i32** %18, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  store i32* %105, i32** %107, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %109 = call i32 @VLC_OBJECT(%struct.TYPE_21__* %108)
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PROJECTION_MODE_RECTANGULAR, align 8
  %115 = icmp ne i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @var_SetBool(i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* %118, %struct.TYPE_23__** %5, align 8
  br label %122

119:                                              ; preds = %101, %59
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %121 = call i32 @vout_display_Delete(%struct.TYPE_23__* %120)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %5, align 8
  br label %122

122:                                              ; preds = %119, %104, %47
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  ret %struct.TYPE_23__* %123
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_21__*, i8*) #1

declare dso_local %struct.TYPE_23__* @vout_display_New(i32, i32*, i32*, i32*, i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_21__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @vout_GetPool(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @picture_pool_GetSize(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_21__*, i8*, i32, i32) #1

declare dso_local i32 @vout_IsDisplayFiltered(%struct.TYPE_23__*) #1

declare dso_local i32* @picture_pool_Reserve(i32*, i32) #1

declare dso_local i32* @picture_pool_NewFromFormat(i32*, i32) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @picture_pool_Release(i32*) #1

declare dso_local i32 @var_SetBool(i32, i8*, i32) #1

declare dso_local i32 @vout_display_Delete(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
