; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_decode_memory.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_decode_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_vorbis_decode_memory(i32* %0, i32 %1, i32* %2, i32* %3, i16** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i16**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i16*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i16** %4, i16*** %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.TYPE_5__* @stb_vorbis_open_memory(i32* %21, i32 %22, i32* %16, i32* null)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %18, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %115

27:                                               ; preds = %5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 4096
  store i32 %31, i32* %15, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %27
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 2
  %48 = trunc i64 %47 to i32
  %49 = call i64 @malloc(i32 %48)
  %50 = inttoptr i64 %49 to i16*
  store i16* %50, i16** %17, align 8
  %51 = load i16*, i16** %17, align 8
  %52 = icmp eq i16* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %55 = call i32 @stb_vorbis_close(%struct.TYPE_5__* %54)
  store i32 -2, i32* %6, align 4
  br label %115

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %108, %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i16*, i16** %17, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16, i16* %62, i64 %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i32 @stb_vorbis_get_frame_short_interleaved(%struct.TYPE_5__* %58, i32 %61, i16* %65, i32 %68)
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %109

73:                                               ; preds = %57
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %14, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %73
  %90 = load i32, i32* %14, align 4
  %91 = mul nsw i32 %90, 2
  store i32 %91, i32* %14, align 4
  %92 = load i16*, i16** %17, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 2
  %96 = trunc i64 %95 to i32
  %97 = call i64 @realloc(i16* %92, i32 %96)
  %98 = inttoptr i64 %97 to i16*
  store i16* %98, i16** %20, align 8
  %99 = load i16*, i16** %20, align 8
  %100 = icmp eq i16* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %89
  %102 = load i16*, i16** %17, align 8
  %103 = call i32 @free(i16* %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %105 = call i32 @stb_vorbis_close(%struct.TYPE_5__* %104)
  store i32 -2, i32* %6, align 4
  br label %115

106:                                              ; preds = %89
  %107 = load i16*, i16** %20, align 8
  store i16* %107, i16** %17, align 8
  br label %108

108:                                              ; preds = %106, %73
  br label %57

109:                                              ; preds = %72
  %110 = load i16*, i16** %17, align 8
  %111 = load i16**, i16*** %11, align 8
  store i16* %110, i16** %111, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %113 = call i32 @stb_vorbis_close(%struct.TYPE_5__* %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %109, %101, %53, %26
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_5__* @stb_vorbis_open_memory(i32*, i32, i32*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stb_vorbis_close(%struct.TYPE_5__*) #1

declare dso_local i32 @stb_vorbis_get_frame_short_interleaved(%struct.TYPE_5__*, i32, i16*, i32) #1

declare dso_local i64 @realloc(i16*, i32) #1

declare dso_local i32 @free(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
