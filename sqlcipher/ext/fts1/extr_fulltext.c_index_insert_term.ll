; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_index_insert_term.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_index_insert_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }

@SQLITE_DONE = common dso_local global i32 0, align 4
@DL_POSITIONS_OFFSETS = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@CHUNK_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, %struct.TYPE_13__*)* @index_insert_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_insert_term(i32* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @term_chunk_select(i32* %17, i8* %18, i32 %19, i32 %20, i32* %12)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @SQLITE_DONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %5
  %26 = load i32, i32* @DL_POSITIONS_OFFSETS, align 4
  %27 = call i32 @docListInit(%struct.TYPE_13__* %14, i32 %26, i32 0, i32 0)
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %30 = call i64 @docListUpdate(%struct.TYPE_13__* %14, i32 %28, %struct.TYPE_13__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @term_insert(i32* %33, i8* %34, i32 %35, i32 %36, %struct.TYPE_13__* %14)
  store i32 %37, i32* %15, align 4
  %38 = call i32 @docListDestroy(%struct.TYPE_13__* %14)
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  br label %93

40:                                               ; preds = %25
  %41 = load i32, i32* @SQLITE_OK, align 4
  store i32 %41, i32* %6, align 4
  br label %93

42:                                               ; preds = %5
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @SQLITE_ROW, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %47, i32* %6, align 4
  br label %93

48:                                               ; preds = %42
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @term_select(i32* %49, i8* %50, i32 %51, i32 %52, i32* %13, %struct.TYPE_13__* %14)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %6, align 4
  br label %93

59:                                               ; preds = %48
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = call i64 @docListUpdate(%struct.TYPE_13__* %14, i32 %60, %struct.TYPE_13__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CHUNK_MAX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = call i64 @docListSplit(%struct.TYPE_13__* %14, %struct.TYPE_13__* %16)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @firstDocid(%struct.TYPE_13__* %16)
  %77 = call i32 @term_insert(i32* %73, i8* %74, i32 %75, i32 %76, %struct.TYPE_13__* %16)
  store i32 %77, i32* %15, align 4
  %78 = call i32 @docListDestroy(%struct.TYPE_13__* %16)
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @SQLITE_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %90

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %69
  br label %85

85:                                               ; preds = %84, %64
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @term_update(i32* %86, i32 %87, %struct.TYPE_13__* %14)
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %85, %59
  br label %90

90:                                               ; preds = %89, %82
  %91 = call i32 @docListDestroy(%struct.TYPE_13__* %14)
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %57, %46, %40, %32
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @term_chunk_select(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @docListInit(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i64 @docListUpdate(%struct.TYPE_13__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @term_insert(i32*, i8*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @docListDestroy(%struct.TYPE_13__*) #1

declare dso_local i32 @term_select(i32*, i8*, i32, i32, i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @docListSplit(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @firstDocid(%struct.TYPE_13__*) #1

declare dso_local i32 @term_update(i32*, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
