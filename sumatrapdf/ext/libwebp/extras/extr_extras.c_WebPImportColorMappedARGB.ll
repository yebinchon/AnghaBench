; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_extras.c_WebPImportColorMappedARGB.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_extras.c_WebPImportColorMappedARGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32* }

@MAX_PALETTE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPImportColorMappedARGB(i32* %0, i32 %1, i32* %2, i32 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %15 = load i32, i32* @MAX_PALETTE_SIZE, align 4
  %16 = icmp sle i32 %15, 256
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @MAX_PALETTE_SIZE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %33, %30, %24, %21, %5
  store i32 0, i32* %6, align 4
  br label %108

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = call i32 @WebPPictureAlloc(%struct.TYPE_5__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %108

48:                                               ; preds = %41
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %104, %48
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %107

58:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %90, %58
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %59
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %75 = call i32 @WebPPictureFree(%struct.TYPE_5__* %74)
  store i32 0, i32* %6, align 4
  br label %108

76:                                               ; preds = %65
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %77, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %76
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %59

93:                                               ; preds = %59
  %94 = load i32, i32* %8, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %7, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %14, align 8
  br label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %52

107:                                              ; preds = %52
  store i32 1, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %73, %47, %40
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WebPPictureAlloc(%struct.TYPE_5__*) #1

declare dso_local i32 @WebPPictureFree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
