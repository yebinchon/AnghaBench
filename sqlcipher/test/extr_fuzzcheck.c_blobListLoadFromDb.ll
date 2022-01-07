; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_blobListLoadFromDb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_blobListLoadFromDb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i64*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s WHERE rowid=%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32*, %struct.TYPE_4__**)* @blobListLoadFromDb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blobListLoadFromDb(i32* %0, i8* %1, i32 %2, i32* %3, %struct.TYPE_4__** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__**, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_4__** %4, %struct.TYPE_4__*** %10, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  store i8* %24, i8** %16, align 8
  br label %28

25:                                               ; preds = %5
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i8* %27, i8** %16, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = call i32 @sqlite3_prepare_v2(i32* %29, i8* %30, i32 -1, i32** %13, i32 0)
  store i32 %31, i32* %15, align 4
  %32 = load i8*, i8** %16, align 8
  %33 = call i32 @sqlite3_free(i8* %32)
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @sqlite3_errmsg(i32* %37)
  %39 = call i32 @fatalError(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %28
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %41, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %12, align 8
  br label %42

42:                                               ; preds = %47, %40
  %43 = load i64, i64* @SQLITE_ROW, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i64 @sqlite3_step(i32* %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %42
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @sqlite3_column_bytes(i32* %48, i32 1)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 32, %51
  %53 = trunc i64 %52 to i32
  %54 = call %struct.TYPE_4__* @safe_realloc(i32 0, i32 %53)
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %18, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @sqlite3_column_int(i32* %55, i32 0)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @sqlite3_column_blob(i32* %71, i32 1)
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @memcpy(i64* %70, i32 %72, i32 %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %12, align 8
  br label %42

85:                                               ; preds = %42
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @sqlite3_finalize(i32* %86)
  %88 = load i32, i32* %14, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %92, align 8
  ret void
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @fatalError(i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @safe_realloc(i32, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
