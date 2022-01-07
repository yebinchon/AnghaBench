; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_extras.c_WebPImportRGB4444.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_extras.c_WebPImportRGB4444.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32, i32, i32 }

@WEBP_YUV420 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPImportRGB4444(i32* %0, %struct.TYPE_4__* %1) #0 {
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
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %122

22:                                               ; preds = %18
  %23 = load i32, i32* @WEBP_YUV420, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = call i32 @WebPPictureAlloc(%struct.TYPE_4__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %122

32:                                               ; preds = %22
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %118, %32
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %121

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %103, %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %106

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 2, %52
  %54 = add nsw i32 %53, 0
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 2, %59
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 240
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 240
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = shl i32 %71, 4
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %74, 4
  %76 = or i32 %73, %75
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = ashr i32 %78, 4
  %80 = or i32 %77, %79
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = ashr i32 %82, 4
  %84 = or i32 %81, %83
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = ashr i32 %86, 4
  %88 = or i32 %85, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = shl i32 %89, 24
  %91 = load i32, i32* %12, align 4
  %92 = shl i32 %91, 16
  %93 = or i32 %90, %92
  %94 = load i32, i32* %13, align 4
  %95 = shl i32 %94, 8
  %96 = or i32 %93, %95
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %96, %97
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %50
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %46

106:                                              ; preds = %46
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 2, %107
  %109 = load i32*, i32** %4, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %4, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %8, align 8
  br label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %36

121:                                              ; preds = %36
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %31, %21
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @WebPPictureAlloc(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
