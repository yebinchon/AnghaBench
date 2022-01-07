; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_meta.c_input_ExtractAttachmentAndCacheArt.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_meta.c_input_ExtractAttachmentAndCacheArt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"art already fetched\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"art attachment %s not found\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"image/x-pict\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".pct\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_ExtractAttachmentAndCacheArt(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_6__* @input_priv(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @input_item_IsArtFetched(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @input_FindArtInCache(i32* %18)
  %20 = load i64, i64* @VLC_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %74

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call %struct.TYPE_5__* @input_GetAttachment(i32* %28, i8* %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %74

37:                                               ; preds = %27
  store i8* null, i8** %7, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcmp(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %60

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcmp(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %59

51:                                               ; preds = %44
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %58, %50
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @VLC_OBJECT(i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @input_SaveArt(i32 %62, i32* %63, i32 %66, i32 %69, i8* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = call i32 @vlc_input_attachment_Delete(%struct.TYPE_5__* %72)
  br label %74

74:                                               ; preds = %60, %33, %25
  ret void
}

declare dso_local %struct.TYPE_6__* @input_priv(i32*) #1

declare dso_local i64 @input_item_IsArtFetched(i32*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @input_FindArtInCache(i32*) #1

declare dso_local %struct.TYPE_5__* @input_GetAttachment(i32*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @input_SaveArt(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local i32 @vlc_input_attachment_Delete(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
