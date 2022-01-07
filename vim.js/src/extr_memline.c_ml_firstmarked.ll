; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_memline.c_ml_firstmarked.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_memline.c_ml_firstmarked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32* }

@curbuf = common dso_local global %struct.TYPE_10__* null, align 8
@lowest_marked = common dso_local global i64 0, align 8
@ML_FIND = common dso_local global i32 0, align 4
@DB_MARKED = common dso_local global i32 0, align 4
@DB_INDEX_MASK = common dso_local global i32 0, align 4
@ML_LOCKED_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ml_firstmarked() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i64 0, i64* %1, align 8
  br label %85

12:                                               ; preds = %0
  %13 = load i64, i64* @lowest_marked, align 8
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %83, %12
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %15, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %14
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @ML_FIND, align 4
  %25 = call %struct.TYPE_8__* @ml_find_line(%struct.TYPE_10__* %22, i64 %23, i32 %24)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %2, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i64 0, i64* %1, align 8
  br label %85

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %33, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %78, %28
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %41, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %40
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DB_MARKED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %47
  %59 = load i32, i32* @DB_INDEX_MASK, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %59
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @ML_LOCKED_DIRTY, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 8
  %74 = load i64, i64* %4, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* @lowest_marked, align 8
  %76 = load i64, i64* %4, align 8
  store i64 %76, i64* %1, align 8
  br label %85

77:                                               ; preds = %47
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  %81 = load i64, i64* %4, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %4, align 8
  br label %40

83:                                               ; preds = %40
  br label %14

84:                                               ; preds = %14
  store i64 0, i64* %1, align 8
  br label %85

85:                                               ; preds = %84, %58, %27, %11
  %86 = load i64, i64* %1, align 8
  ret i64 %86
}

declare dso_local %struct.TYPE_8__* @ml_find_line(%struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
