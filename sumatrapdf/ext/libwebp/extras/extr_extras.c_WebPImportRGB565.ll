; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_extras.c_WebPImportRGB565.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_extras.c_WebPImportRGB565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32, i32, i32 }

@WEBP_YUV420 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPImportRGB565(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %117

21:                                               ; preds = %17
  %22 = load i32, i32* @WEBP_YUV420, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = call i32 @WebPPictureAlloc(%struct.TYPE_4__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %117

31:                                               ; preds = %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %113, %31
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %116

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %98, %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %101

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 2, %51
  %53 = add nsw i32 %52, 0
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, 248
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 %66, 5
  %68 = load i32, i32* %11, align 4
  %69 = ashr i32 %68, 3
  %70 = or i32 %67, %69
  %71 = and i32 %70, 252
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 %72, 5
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, 5
  %77 = or i32 %74, %76
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = ashr i32 %79, 6
  %81 = or i32 %78, %80
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = ashr i32 %83, 5
  %85 = or i32 %82, %84
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 -16777216, %87
  %89 = load i32, i32* %13, align 4
  %90 = shl i32 %89, 8
  %91 = or i32 %88, %90
  %92 = load i32, i32* %14, align 4
  %93 = or i32 %91, %92
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %49
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %45

101:                                              ; preds = %45
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 2, %102
  %104 = load i32*, i32** %4, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %4, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %8, align 8
  br label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %35

116:                                              ; preds = %35
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %30, %20
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @WebPPictureAlloc(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
