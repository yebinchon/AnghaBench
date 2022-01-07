; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb.c_sql_fetch.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb.c_sql_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@LSM_OK = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32*)* @sql_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sql_fetch(i32* %0, i8* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %12, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sqlite3_reset(i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %5
  %25 = load i8**, i8*** %10, align 8
  %26 = icmp eq i8** %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** %11, align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* @LSM_OK, align 4
  store i32 %33, i32* %6, align 4
  br label %103

34:                                               ; preds = %5
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SQLITE_STATIC, align 4
  %41 = call i32 @sqlite3_bind_blob(i32 %37, i32 1, i8* %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sqlite3_step(i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @SQLITE_ROW, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %94

49:                                               ; preds = %34
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sqlite3_column_bytes(i32 %52, i32 0)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @sqlite3_column_blob(i32 %56, i32 0)
  %58 = inttoptr i64 %57 to i8*
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %15, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %49
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @free(i32* %68)
  %70 = load i32, i32* %14, align 4
  %71 = mul nsw i32 %70, 2
  %72 = call i64 @malloc(i32 %71)
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load i32, i32* %14, align 4
  %77 = mul nsw i32 %76, 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %65, %49
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @memcpy(i32* %83, i32* %84, i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = load i32*, i32** %11, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = load i8**, i8*** %10, align 8
  store i8* %92, i8** %93, align 8
  br label %97

94:                                               ; preds = %34
  %95 = load i32*, i32** %11, align 8
  store i32 -1, i32* %95, align 4
  %96 = load i8**, i8*** %10, align 8
  store i8* null, i8** %96, align 8
  br label %97

97:                                               ; preds = %94, %80
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @sqlite3_reset(i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %97, %24
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_bind_blob(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32, i32) #1

declare dso_local i64 @sqlite3_column_blob(i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
