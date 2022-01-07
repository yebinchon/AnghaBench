; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_get_frame_float.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_get_frame_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, float**, float** }

@VORBIS_invalid_api_mixing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_vorbis_get_frame_float(%struct.TYPE_7__* %0, i32* %1, float*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store float*** %2, float**** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call i64 @IS_PUSH_MODE(%struct.TYPE_7__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = load i32, i32* @VORBIS_invalid_api_mixing, align 4
  %18 = call i32 @error(%struct.TYPE_7__* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %86

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = call i32 @vorbis_decode_packet(%struct.TYPE_7__* %20, i32* %8, i32* %10, i32* %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  store i32 0, i32* %4, align 4
  br label %86

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @vorbis_finish_frame(%struct.TYPE_7__* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %57, %28
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load float**, float*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float*, float** %43, i64 %45
  %47 = load float*, float** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load float**, float*** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float*, float** %53, i64 %55
  store float* %50, float** %56, align 8
  br label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %34

60:                                               ; preds = %34
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %60
  %77 = load float***, float**** %7, align 8
  %78 = icmp ne float*** %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load float**, float*** %81, align 8
  %83 = load float***, float**** %7, align 8
  store float** %82, float*** %83, align 8
  br label %84

84:                                               ; preds = %79, %76
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %23, %15
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @IS_PUSH_MODE(%struct.TYPE_7__*) #1

declare dso_local i32 @error(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @vorbis_decode_packet(%struct.TYPE_7__*, i32*, i32*, i32*) #1

declare dso_local i32 @vorbis_finish_frame(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
