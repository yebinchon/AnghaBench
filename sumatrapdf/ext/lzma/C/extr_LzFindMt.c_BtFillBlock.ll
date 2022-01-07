; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzFindMt.c_BtFillBlock.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzFindMt.c_BtFillBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@True = common dso_local global i32 0, align 4
@kMtBtNumBlocksMask = common dso_local global i64 0, align 8
@kMtBtBlockSize = common dso_local global i64 0, align 8
@kMtMaxValForNormalize = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BtFillBlock(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = call i32 @CriticalSection_Enter(i32* %15)
  %17 = load i32, i32* @True, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @kMtBtNumBlocksMask, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* @kMtBtBlockSize, align 8
  %29 = mul nsw i64 %27, %28
  %30 = add nsw i64 %24, %29
  %31 = call i32 @BtGetMatches(%struct.TYPE_6__* %21, i64 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @kMtMaxValForNormalize, align 8
  %36 = load i64, i64* @kMtBtBlockSize, align 8
  %37 = sub nsw i64 %35, %36
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %20
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %42, %46
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 2
  %56 = call i32 @MatchFinder_Normalize3(i64 %48, i32 %51, i32 %55)
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %39, %20
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = call i32 @CriticalSection_Leave(i32* %69)
  %71 = load i32, i32* @False, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %62
  ret void
}

declare dso_local i32 @CriticalSection_Enter(i32*) #1

declare dso_local i32 @BtGetMatches(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @MatchFinder_Normalize3(i64, i32, i32) #1

declare dso_local i32 @CriticalSection_Leave(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
