; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"FTS2 Next %p\0A\00", align 1
@QUERY_FULLTEXT = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fulltextNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextNext(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = call i32 @TRACE(i8* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %13 = call i32 @snippetClear(i32* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QUERY_FULLTEXT, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sqlite3_step(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %33 [
    i32 128, label %25
    i32 129, label %29
  ]

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* @SQLITE_OK, align 4
  store i32 %28, i32* %2, align 4
  br label %98

29:                                               ; preds = %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @SQLITE_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %98

33:                                               ; preds = %19
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %98

37:                                               ; preds = %1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sqlite3_reset(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SQLITE_OK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %98

47:                                               ; preds = %37
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = call i64 @dlrAtEnd(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53, %47
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* @SQLITE_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %98

62:                                               ; preds = %53
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = call i32 @dlrDocid(i32* %67)
  %69 = call i32 @sqlite3_bind_int64(i32 %65, i32 1, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = call i32 @dlrStep(i32* %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SQLITE_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %98

78:                                               ; preds = %62
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sqlite3_step(i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 0, i32* %87, align 8
  %88 = load i32, i32* @SQLITE_OK, align 4
  store i32 %88, i32* %2, align 4
  br label %98

89:                                               ; preds = %78
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 129
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @SQLITE_ERROR, align 4
  br label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %85, %76, %58, %45, %33, %29, %25
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @snippetClear(i32*) #1

declare dso_local i32 @sqlite3_step(i32) #1

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i64 @dlrAtEnd(i32*) #1

declare dso_local i32 @sqlite3_bind_int64(i32, i32, i32) #1

declare dso_local i32 @dlrDocid(i32*) #1

declare dso_local i32 @dlrStep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
