; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_MouseMove.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_MouseMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32*, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@stDocument = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@stPosition = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_MouseMove(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @stDocument, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %94

14:                                               ; preds = %3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @ME_FindPixelPos(%struct.TYPE_13__* %36, i32 %37, i32 %38, i32* %7, i32* %40, i32 %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = call i32 @ME_InvalidateSelection(%struct.TYPE_13__* %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = call i32 @ME_ExtendAnchorSelection(%struct.TYPE_13__* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @stPosition, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %14
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = call i64 @memcmp(i32* %61, i32* %65, i32 4)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i32 @ME_EnsureVisible(%struct.TYPE_13__* %69, i32* %73)
  br label %82

75:                                               ; preds = %57, %14
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = call i32 @ME_EnsureVisible(%struct.TYPE_13__* %76, i32* %80)
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = call i32 @ME_InvalidateSelection(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @ITextHost_TxShowCaret(i32 %87, i32 %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = call i32 @ME_ShowCaret(%struct.TYPE_13__* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = call i32 @ME_SendSelChange(%struct.TYPE_13__* %92)
  br label %94

94:                                               ; preds = %82, %13
  ret void
}

declare dso_local i32 @ME_FindPixelPos(%struct.TYPE_13__*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ME_InvalidateSelection(%struct.TYPE_13__*) #1

declare dso_local i32 @ME_ExtendAnchorSelection(%struct.TYPE_13__*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @ME_EnsureVisible(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @ITextHost_TxShowCaret(i32, i32) #1

declare dso_local i32 @ME_ShowCaret(%struct.TYPE_13__*) #1

declare dso_local i32 @ME_SendSelChange(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
