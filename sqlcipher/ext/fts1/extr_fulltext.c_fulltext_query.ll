; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_fulltext_query.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_fulltext_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@DL_POSITIONS = common dso_local global i32 0, align 4
@DL_DOCIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32**)* @fulltext_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltext_query(i32* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 -1, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @parse_query(i32* %16, i8* %17, %struct.TYPE_6__* %8)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %4, align 4
  br label %106

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %96, %24
  %26 = load i32, i32* %10, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %99

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %36, %30
  %48 = phi i1 [ false, %30 ], [ %46, %36 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @DL_POSITIONS, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @DL_DOCIDS, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32* @docListNew(i32 %57)
  store i32* %58, i32** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %56
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @query_merge(i32* %70, i32** %11, i32 %77, i32* %78, i32 %81, i32* %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @SQLITE_OK, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %69
  br label %99

88:                                               ; preds = %69
  %89 = load i32*, i32** %12, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @docListDelete(i32* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32*, i32** %15, align 8
  store i32* %95, i32** %12, align 8
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %25

99:                                               ; preds = %87, %25
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @sqlite3_finalize(i32* %100)
  %102 = call i32 @query_free(%struct.TYPE_6__* %8)
  %103 = load i32*, i32** %12, align 8
  %104 = load i32**, i32*** %7, align 8
  store i32* %103, i32** %104, align 8
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %99, %22
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @parse_query(i32*, i8*, %struct.TYPE_6__*) #1

declare dso_local i32* @docListNew(i32) #1

declare dso_local i32 @query_merge(i32*, i32**, i32, i32*, i32, i32*) #1

declare dso_local i32 @docListDelete(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @query_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
