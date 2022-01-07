; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_decode_filename.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_decode_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_vorbis_decode_filename(i8* %0, i32* %1, i32* %2, i16** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i16**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i16*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i16** %3, i16*** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.TYPE_5__* @stb_vorbis_open_filename(i8* %19, i32* %14, i32* null)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %16, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %112

24:                                               ; preds = %4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4096
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %24
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 2
  %45 = trunc i64 %44 to i32
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to i16*
  store i16* %47, i16** %15, align 8
  %48 = load i16*, i16** %15, align 8
  %49 = icmp eq i16* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %52 = call i32 @stb_vorbis_close(%struct.TYPE_5__* %51)
  store i32 -2, i32* %5, align 4
  br label %112

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %105, %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i16*, i16** %15, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %59, i64 %61
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i32 @stb_vorbis_get_frame_short_interleaved(%struct.TYPE_5__* %55, i32 %58, i16* %62, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %106

70:                                               ; preds = %54
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %70
  %87 = load i32, i32* %12, align 4
  %88 = mul nsw i32 %87, 2
  store i32 %88, i32* %12, align 4
  %89 = load i16*, i16** %15, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 2
  %93 = trunc i64 %92 to i32
  %94 = call i64 @realloc(i16* %89, i32 %93)
  %95 = inttoptr i64 %94 to i16*
  store i16* %95, i16** %18, align 8
  %96 = load i16*, i16** %18, align 8
  %97 = icmp eq i16* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %86
  %99 = load i16*, i16** %15, align 8
  %100 = call i32 @free(i16* %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %102 = call i32 @stb_vorbis_close(%struct.TYPE_5__* %101)
  store i32 -2, i32* %5, align 4
  br label %112

103:                                              ; preds = %86
  %104 = load i16*, i16** %18, align 8
  store i16* %104, i16** %15, align 8
  br label %105

105:                                              ; preds = %103, %70
  br label %54

106:                                              ; preds = %69
  %107 = load i16*, i16** %15, align 8
  %108 = load i16**, i16*** %9, align 8
  store i16* %107, i16** %108, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %110 = call i32 @stb_vorbis_close(%struct.TYPE_5__* %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %98, %50, %23
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_5__* @stb_vorbis_open_filename(i8*, i32*, i32*) #1

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
