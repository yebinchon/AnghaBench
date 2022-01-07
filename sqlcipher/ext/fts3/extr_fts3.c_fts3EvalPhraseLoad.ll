; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalPhraseLoad.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalPhraseLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @fts3EvalPhraseLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3EvalPhraseLoad(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %78, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SQLITE_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i1 [ false, %17 ], [ %26, %21 ]
  br i1 %28, label %29, label %81

29:                                               ; preds = %27
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %34
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %8, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %40, %29
  %46 = phi i1 [ true, %29 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @fts3TermSelect(i32* %54, %struct.TYPE_10__* %55, i32 %58, i32* %9, i8** %10)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @SQLITE_OK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @fts3EvalPhraseMergeToken(i32* %64, %struct.TYPE_11__* %65, i32 %66, i8* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %63, %53
  br label %71

71:                                               ; preds = %70, %45
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %17

81:                                               ; preds = %27
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3TermSelect(i32*, %struct.TYPE_10__*, i32, i32*, i8**) #1

declare dso_local i32 @fts3EvalPhraseMergeToken(i32*, %struct.TYPE_11__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
