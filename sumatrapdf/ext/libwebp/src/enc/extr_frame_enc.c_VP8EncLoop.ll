; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_VP8EncLoop.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_VP8EncLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VP8EncLoop(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %10 = call i32 @PreLoopInitialize(%struct.TYPE_22__* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %16 = call i32 @StatLoop(%struct.TYPE_22__* %15)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = call i32 @VP8IteratorInit(%struct.TYPE_22__* %17, %struct.TYPE_23__* %4)
  %19 = call i32 @VP8InitFilter(%struct.TYPE_23__* %4)
  br label %20

20:                                               ; preds = %56, %14
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = call i32 @VP8IteratorImport(%struct.TYPE_23__* %4, i32* null)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @VP8Decimate(%struct.TYPE_23__* %4, i32* %6, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %20
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CodeResiduals(i32 %40, %struct.TYPE_23__* %4, i32* %6)
  br label %44

42:                                               ; preds = %35
  %43 = call i32 @ResetAfterSkip(%struct.TYPE_23__* %4)
  br label %44

44:                                               ; preds = %42, %38
  %45 = call i32 @StoreSideInfo(%struct.TYPE_23__* %4)
  %46 = call i32 @VP8StoreFilterStats(%struct.TYPE_23__* %4)
  %47 = call i32 @VP8IteratorExport(%struct.TYPE_23__* %4)
  %48 = call i32 @VP8IteratorProgress(%struct.TYPE_23__* %4, i32 20)
  store i32 %48, i32* %5, align 4
  %49 = call i32 @VP8IteratorSaveBoundary(%struct.TYPE_23__* %4)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i64 @VP8IteratorNext(%struct.TYPE_23__* %4)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ false, %50 ], [ %55, %53 ]
  br i1 %57, label %20, label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @PostLoopFinalize(%struct.TYPE_23__* %4, i32 %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @PreLoopInitialize(%struct.TYPE_22__*) #1

declare dso_local i32 @StatLoop(%struct.TYPE_22__*) #1

declare dso_local i32 @VP8IteratorInit(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @VP8InitFilter(%struct.TYPE_23__*) #1

declare dso_local i32 @VP8IteratorImport(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @VP8Decimate(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @CodeResiduals(i32, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ResetAfterSkip(%struct.TYPE_23__*) #1

declare dso_local i32 @StoreSideInfo(%struct.TYPE_23__*) #1

declare dso_local i32 @VP8StoreFilterStats(%struct.TYPE_23__*) #1

declare dso_local i32 @VP8IteratorExport(%struct.TYPE_23__*) #1

declare dso_local i32 @VP8IteratorProgress(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @VP8IteratorSaveBoundary(%struct.TYPE_23__*) #1

declare dso_local i64 @VP8IteratorNext(%struct.TYPE_23__*) #1

declare dso_local i32 @PostLoopFinalize(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
