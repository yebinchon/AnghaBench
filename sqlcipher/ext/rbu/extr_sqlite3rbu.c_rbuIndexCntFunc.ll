; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuIndexCntFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuIndexCntFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"SELECT count(*) FROM sqlite_master WHERE type='index' AND tbl_name = %Q\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @rbuIndexCntFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuIndexCntFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @sqlite3_user_data(i32* %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @sqlite3_value_text(i32* %24)
  %26 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @prepareFreeAndCollectError(i32 %21, i32** %8, i8** %9, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32*, i32** %4, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @sqlite3_result_error(i32* %32, i8* %33, i32 -1)
  br label %61

35:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %36 = load i64, i64* @SQLITE_ROW, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @sqlite3_step(i32* %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @sqlite3_column_int(i32* %41, i32 0)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @sqlite3_finalize(i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @sqlite3_result_int(i32* %50, i32 %51)
  br label %60

53:                                               ; preds = %43
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @sqlite3_errmsg(i32 %57)
  %59 = call i32 @sqlite3_result_error(i32* %54, i8* %58, i32 -1)
  br label %60

60:                                               ; preds = %53, %49
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @sqlite3_free(i8* %62)
  ret void
}

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @prepareFreeAndCollectError(i32, i32**, i8**, i32) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i32) #1

declare dso_local i32 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i8* @sqlite3_errmsg(i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
