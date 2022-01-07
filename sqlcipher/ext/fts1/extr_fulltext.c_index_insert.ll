; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_index_insert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_index_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i8*, i32*)* @index_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_insert(%struct.TYPE_5__* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @content_insert(%struct.TYPE_5__* %15, i32* %16, i8* %17, i32 -1)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %88

24:                                               ; preds = %4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sqlite3_last_insert_rowid(i32 %27)
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @SQLITE_OK, align 4
  store i32 %33, i32* %5, align 4
  br label %88

34:                                               ; preds = %24
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @build_terms(i32* %10, i32 %37, i8* %38, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @SQLITE_OK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %88

47:                                               ; preds = %34
  %48 = call i32* @HashFirst(i32* %10)
  store i32* %48, i32** %11, align 8
  br label %49

49:                                               ; preds = %69, %47
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32*, i32** %11, align 8
  %54 = call i32* @HashData(i32* %53)
  store i32* %54, i32** %13, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @HashKey(i32* %56)
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @HashKeysize(i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @index_insert_term(%struct.TYPE_5__* %55, i32 %57, i32 %59, i32 %61, i32* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @SQLITE_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %72

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** %11, align 8
  %71 = call i32* @HashNext(i32* %70)
  store i32* %71, i32** %11, align 8
  br label %49

72:                                               ; preds = %67, %49
  %73 = call i32* @HashFirst(i32* %10)
  store i32* %73, i32** %11, align 8
  br label %74

74:                                               ; preds = %82, %72
  %75 = load i32*, i32** %11, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32*, i32** %11, align 8
  %79 = call i32* @HashData(i32* %78)
  store i32* %79, i32** %14, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @docListDelete(i32* %80)
  br label %82

82:                                               ; preds = %77
  %83 = load i32*, i32** %11, align 8
  %84 = call i32* @HashNext(i32* %83)
  store i32* %84, i32** %11, align 8
  br label %74

85:                                               ; preds = %74
  %86 = call i32 @HashClear(i32* %10)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %45, %32, %22
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @content_insert(%struct.TYPE_5__*, i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_last_insert_rowid(i32) #1

declare dso_local i32 @build_terms(i32*, i32, i8*, i32) #1

declare dso_local i32* @HashFirst(i32*) #1

declare dso_local i32* @HashData(i32*) #1

declare dso_local i32 @index_insert_term(%struct.TYPE_5__*, i32, i32, i32, i32*) #1

declare dso_local i32 @HashKey(i32*) #1

declare dso_local i32 @HashKeysize(i32*) #1

declare dso_local i32* @HashNext(i32*) #1

declare dso_local i32 @docListDelete(i32*) #1

declare dso_local i32 @HashClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
