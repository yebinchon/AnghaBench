; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_audio.c_libvlc_audio_output_list_get.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_audio.c_libvlc_audio_output_list_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [13 x i8] c"audio output\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @libvlc_audio_output_list_get(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %9 = call i32** @module_list_get(i64* %3)
  store i32** %9, i32*** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %78, %1
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %81

14:                                               ; preds = %10
  %15 = load i32**, i32*** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @module_provides(i32* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %78

23:                                               ; preds = %14
  %24 = call %struct.TYPE_6__* @malloc(i32 24)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %62, %30
  %32 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call i32 @libvlc_audio_output_list_release(%struct.TYPE_6__* %33)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %81

35:                                               ; preds = %23
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @module_get_object(i32* %36)
  %38 = call i8* @strdup(i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_6__*
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %41, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @module_get_name(i32* %42, i32 1)
  %44 = call i8* @strdup(i32 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_6__*
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp eq %struct.TYPE_6__* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %35
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp eq %struct.TYPE_6__* %55, null
  br label %57

57:                                               ; preds = %52, %35
  %58 = phi i1 [ true, %35 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @free(%struct.TYPE_6__* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @free(%struct.TYPE_6__* %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = call i32 @free(%struct.TYPE_6__* %71)
  br label %31

73:                                               ; preds = %57
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %5, align 8
  br label %78

78:                                               ; preds = %73, %22
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %10

81:                                               ; preds = %31, %10
  %82 = load i32**, i32*** %4, align 8
  %83 = call i32 @module_list_free(i32** %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @VLC_UNUSED(i32* %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %86
}

declare dso_local i32** @module_list_get(i64*) #1

declare dso_local i32 @module_provides(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @libvlc_printerr(i8*) #1

declare dso_local i32 @libvlc_audio_output_list_release(%struct.TYPE_6__*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @module_get_object(i32*) #1

declare dso_local i32 @module_get_name(i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @module_list_free(i32**) #1

declare dso_local i32 @VLC_UNUSED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
