; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_GetSnapshot.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_GetSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to grab a snapshot\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_CODEC_PNG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"snapshot-width\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"snapshot-height\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to convert image for snapshot\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vout_GetSnapshot(%struct.TYPE_8__* %0, i32** %1, i32** %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32* @vout_snapshot_Get(i32 %31, i32 %32)
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %6
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = call i32 @msg_Err(%struct.TYPE_8__* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %39, i32* %7, align 4
  br label %87

40:                                               ; preds = %6
  %41 = load i32**, i32*** %9, align 8
  %42 = icmp ne i32** %41, null
  br i1 %42, label %43, label %76

43:                                               ; preds = %40
  %44 = load i64, i64* @VLC_CODEC_PNG, align 8
  store i64 %44, i64* %15, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @image_Type2Fourcc(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %12, align 8
  %53 = call i64 @image_Type2Fourcc(i8* %52)
  store i64 %53, i64* %15, align 8
  br label %54

54:                                               ; preds = %51, %47, %43
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = call i32 @var_InheritInteger(%struct.TYPE_8__* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %16, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = call i32 @var_InheritInteger(%struct.TYPE_8__* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %58, i32* %17, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = call i32 @VLC_OBJECT(%struct.TYPE_8__* %59)
  %61 = load i32**, i32*** %9, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i64 @picture_Export(i32 %60, i32** %61, i32* %62, i32* %63, i64 %64, i32 %65, i32 %66, i32 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %54
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = call i32 @msg_Err(%struct.TYPE_8__* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @picture_Release(i32* %72)
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %7, align 4
  br label %87

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %40
  %77 = load i32**, i32*** %10, align 8
  %78 = icmp ne i32** %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %14, align 8
  %81 = load i32**, i32*** %10, align 8
  store i32* %80, i32** %81, align 8
  br label %85

82:                                               ; preds = %76
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @picture_Release(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %69, %36
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @vout_snapshot_Get(i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @image_Type2Fourcc(i8*) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @picture_Export(i32, i32**, i32*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_8__*) #1

declare dso_local i32 @picture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
