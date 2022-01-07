; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_query_merge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_query_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@DL_POSITIONS_OFFSETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i8*, %struct.TYPE_9__*, i32, %struct.TYPE_9__*)* @query_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_merge(i32* %0, i32** %1, i8* %2, %struct.TYPE_9__* %3, i32 %4, %struct.TYPE_9__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %13, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %7, align 4
  br label %75

26:                                               ; preds = %19, %6
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32**, i32*** %9, align 8
  %30 = call i32 @term_select_doclist(i32* %27, i8* %28, i32 -1, i32** %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @SQLITE_ROW, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @SQLITE_DONE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %7, align 4
  br label %75

40:                                               ; preds = %34, %26
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %44 = call i32 @mergeInit(i32* %15, %struct.TYPE_9__* %41, i32 %42, %struct.TYPE_9__* %43)
  br label %45

45:                                               ; preds = %72, %40
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @SQLITE_ROW, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load i32, i32* @DL_POSITIONS_OFFSETS, align 4
  %51 = load i32**, i32*** %9, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @sqlite3_column_blob(i32* %52, i32 0)
  %54 = load i32**, i32*** %9, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @sqlite3_column_bytes(i32* %55, i32 0)
  %57 = call i32 @docListInit(%struct.TYPE_9__* %16, i32 %50, i32 %53, i32 %56)
  %58 = call i32 @mergeBlock(i32* %15, %struct.TYPE_9__* %16)
  %59 = call i32 @docListDestroy(%struct.TYPE_9__* %16)
  %60 = load i32**, i32*** %9, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @sqlite3_step(i32* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @SQLITE_ROW, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %49
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @SQLITE_DONE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %7, align 4
  br label %75

72:                                               ; preds = %66, %49
  br label %45

73:                                               ; preds = %45
  %74 = load i32, i32* @SQLITE_OK, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %70, %38, %24
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @term_select_doclist(i32*, i8*, i32, i32**) #1

declare dso_local i32 @mergeInit(i32*, %struct.TYPE_9__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @docListInit(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @mergeBlock(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @docListDestroy(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
