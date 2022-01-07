; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmMCursorClose.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmMCursorClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_9__*, i32*, %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lsmMCursorClose(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %105

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 7
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store %struct.TYPE_9__** %16, %struct.TYPE_9__*** %6, align 8
  br label %17

17:                                               ; preds = %32, %11
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = icmp eq %struct.TYPE_9__* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %30, align 8
  br label %36

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  store %struct.TYPE_9__** %35, %struct.TYPE_9__*** %6, align 8
  br label %17

36:                                               ; preds = %26, %17
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %66, %39
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %58
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %8, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @lsmFsPageRelease(i64 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %47

69:                                               ; preds = %47
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lsmTreeCursorReset(i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @lsmTreeCursorReset(i32 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %89, align 8
  br label %104

90:                                               ; preds = %36
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = call i32 @sortedBlobFree(i32* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = call i32 @sortedBlobFree(i32* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = call i32 @mcursorFreeComponents(%struct.TYPE_9__* %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = call i32 @lsmFree(i32 %101, %struct.TYPE_9__* %102)
  br label %104

104:                                              ; preds = %90, %69
  br label %105

105:                                              ; preds = %104, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmFsPageRelease(i64) #1

declare dso_local i32 @lsmTreeCursorReset(i32) #1

declare dso_local i32 @sortedBlobFree(i32*) #1

declare dso_local i32 @mcursorFreeComponents(%struct.TYPE_9__*) #1

declare dso_local i32 @lsmFree(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
