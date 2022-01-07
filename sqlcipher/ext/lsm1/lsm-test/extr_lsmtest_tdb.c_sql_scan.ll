; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb.c_sql_scan.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb.c_sql_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32, i8*, i32, void (i8*, i8*, i32, i8*, i32)*)* @sql_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sql_scan(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, void (i8*, i8*, i32, i8*, i32)* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca void (i8*, i8*, i32, i8*, i32)*, align 8
  %17 = alloca %struct.TYPE_2__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store void (i8*, i8*, i32, i8*, i32)* %7, void (i8*, i8*, i32, i8*, i32)** %16, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %17, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %8
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %27, %8
  %31 = phi i1 [ true, %8 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp eq i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = load i8*, i8** %14, align 8
  %41 = icmp eq i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = mul nsw i32 %42, 2
  %44 = add nsw i32 %39, %43
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %36, i64 %48
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %18, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %30
  %54 = load i32*, i32** %18, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @SQLITE_STATIC, align 4
  %58 = call i32 @sqlite3_bind_blob(i32* %54, i32 1, i8* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %30
  %60 = load i8*, i8** %14, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32*, i32** %18, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @SQLITE_STATIC, align 4
  %67 = call i32 @sqlite3_bind_blob(i32* %63, i32 2, i8* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  br label %69

69:                                               ; preds = %74, %68
  %70 = load i64, i64* @SQLITE_ROW, align 8
  %71 = load i32*, i32** %18, align 8
  %72 = call i64 @sqlite3_step(i32* %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %69
  %75 = load i32*, i32** %18, align 8
  %76 = call i32 @sqlite3_column_bytes(i32* %75, i32 0)
  store i32 %76, i32* %20, align 4
  %77 = load i32*, i32** %18, align 8
  %78 = call i64 @sqlite3_column_blob(i32* %77, i32 0)
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %19, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @sqlite3_column_bytes(i32* %80, i32 1)
  store i32 %81, i32* %22, align 4
  %82 = load i32*, i32** %18, align 8
  %83 = call i64 @sqlite3_column_blob(i32* %82, i32 1)
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %21, align 8
  %85 = load void (i8*, i8*, i32, i8*, i32)*, void (i8*, i8*, i32, i8*, i32)** %16, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = load i32, i32* %20, align 4
  %89 = load i8*, i8** %21, align 8
  %90 = load i32, i32* %22, align 4
  call void %85(i8* %86, i8* %87, i32 %88, i8* %89, i32 %90)
  br label %69

91:                                               ; preds = %69
  %92 = load i32*, i32** %18, align 8
  %93 = call i32 @sqlite3_reset(i32* %92)
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i64 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
