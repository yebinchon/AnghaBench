; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalStart.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @fts3EvalStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3EvalStart(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %3, align 8
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @fts3EvalAllocateReaders(%struct.TYPE_11__* %18, i32 %21, i32* %5, i32* %6, i32* %4)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SQLITE_OK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %113

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %113

29:                                               ; preds = %26
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %113

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = mul i64 %40, 2
  %42 = add i64 %37, %41
  %43 = trunc i64 %42 to i32
  %44 = call i64 @sqlite3_malloc64(i32 %43)
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = bitcast i32* %49 to i32**
  store i32** %50, i32*** %8, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %34
  %54 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %54, i32* %4, align 4
  br label %112

55:                                               ; preds = %34
  %56 = load i32*, i32** %7, align 8
  store i32* %56, i32** %10, align 8
  %57 = load i32**, i32*** %8, align 8
  store i32** %57, i32*** %11, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @fts3EvalTokenCosts(%struct.TYPE_11__* %58, i32 0, i32 %61, i32** %10, i32*** %11, i32* %4)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  %70 = load i32**, i32*** %11, align 8
  %71 = load i32**, i32*** %8, align 8
  %72 = ptrtoint i32** %70 to i64
  %73 = ptrtoint i32** %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %109

80:                                               ; preds = %55
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @fts3EvalSelectDeferred(%struct.TYPE_11__* %81, i32* null, i32* %82, i32 %83)
  store i32 %84, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %105, %80
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @SQLITE_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %90, %91
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ false, %85 ], [ %92, %89 ]
  br i1 %94, label %95, label %108

95:                                               ; preds = %93
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %97 = load i32**, i32*** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @fts3EvalSelectDeferred(%struct.TYPE_11__* %96, i32* %101, i32* %102, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %85

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %55
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @sqlite3_free(i32* %110)
  br label %112

112:                                              ; preds = %109, %53
  br label %113

113:                                              ; preds = %112, %29, %26, %1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @fts3EvalStartReaders(%struct.TYPE_11__* %114, i32 %117, i32* %4)
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @fts3EvalAllocateReaders(%struct.TYPE_11__*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @fts3EvalTokenCosts(%struct.TYPE_11__*, i32, i32, i32**, i32***, i32*) #1

declare dso_local i32 @fts3EvalSelectDeferred(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

declare dso_local i32 @fts3EvalStartReaders(%struct.TYPE_11__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
