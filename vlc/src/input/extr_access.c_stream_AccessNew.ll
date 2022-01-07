; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_access.c_stream_AccessNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_access.c_stream_AccessNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32, i32, i32*, i32*, i32*, i32* }
%struct.vlc_access_stream_private = type { i32* }

@AStreamDestroy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@AStreamReadBlock = common dso_local global i32* null, align 8
@AStreamReadStream = common dso_local global i32* null, align 8
@AStreamSeek = common dso_local global i32 0, align 4
@AStreamControl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"prefetch,cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @stream_AccessNew(i32* %0, i32* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.vlc_access_stream_private*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = call %struct.TYPE_11__* @access_New(i32* %15, i32* %16, i32* %17, i32 %18, i8* %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %12, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %22 = icmp eq %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  br label %115

24:                                               ; preds = %5
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %111

34:                                               ; preds = %29, %24
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %36 = call i32 @VLC_OBJECT(%struct.TYPE_11__* %35)
  %37 = load i32, i32* @AStreamDestroy, align 4
  %38 = call %struct.TYPE_11__* @vlc_stream_CustomNew(i32 %36, i32 %37, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %13, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %40 = icmp eq %struct.TYPE_11__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %46 = call i32 @vlc_stream_Delete(%struct.TYPE_11__* %45)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  br label %115

47:                                               ; preds = %34
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %49 = call %struct.vlc_access_stream_private* @vlc_stream_Private(%struct.TYPE_11__* %48)
  store %struct.vlc_access_stream_private* %49, %struct.vlc_access_stream_private** %14, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.vlc_access_stream_private*, %struct.vlc_access_stream_private** %14, align 8
  %52 = getelementptr inbounds %struct.vlc_access_stream_private, %struct.vlc_access_stream_private* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32*, i32** %8, align 8
  %57 = call i32* @input_GetItem(i32* %56)
  br label %59

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32* [ %57, %55 ], [ null, %58 ]
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 6
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = call i32* @strdup(i32* %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %59
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %78 = call i32 @vlc_object_delete(%struct.TYPE_11__* %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = call i32 @vlc_stream_Delete(%struct.TYPE_11__* %79)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  br label %115

81:                                               ; preds = %59
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32*, i32** @AStreamReadBlock, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  store i32* %87, i32** %89, align 8
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32*, i32** @AStreamReadStream, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  store i32* %96, i32** %98, align 8
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* @AStreamSeek, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @AStreamControl, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %110 = call %struct.TYPE_11__* @stream_FilterChainNew(%struct.TYPE_11__* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_11__* %110, %struct.TYPE_11__** %13, align 8
  br label %113

111:                                              ; preds = %29
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %13, align 8
  br label %113

113:                                              ; preds = %111, %99
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %6, align 8
  br label %115

115:                                              ; preds = %113, %76, %44, %23
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %116
}

declare dso_local %struct.TYPE_11__* @access_New(i32*, i32*, i32*, i32, i8*) #1

declare dso_local %struct.TYPE_11__* @vlc_stream_CustomNew(i32, i32, i32, i8*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_11__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_stream_Delete(%struct.TYPE_11__*) #1

declare dso_local %struct.vlc_access_stream_private* @vlc_stream_Private(%struct.TYPE_11__*) #1

declare dso_local i32* @input_GetItem(i32*) #1

declare dso_local i32* @strdup(i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @stream_FilterChainNew(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
