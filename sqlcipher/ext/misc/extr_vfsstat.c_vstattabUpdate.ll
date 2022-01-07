; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfsstat.c_vstattabUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfsstat.c_vstattabUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@VFSSTAT_MXCNT = common dso_local global i64 0, align 8
@VSTAT_COLUMN_COUNT = common dso_local global i32 0, align 4
@aVfsCnt = common dso_local global i64* null, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, i64*)* @vstattabUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vstattabUpdate(i32* %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %15, i32* %5, align 4
  br label %77

16:                                               ; preds = %4
  %17 = load i32**, i32*** %8, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @sqlite3_value_type(i32* %19)
  %21 = load i64, i64* @SQLITE_INTEGER, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %24, i32* %5, align 4
  br label %77

25:                                               ; preds = %16
  %26 = load i32**, i32*** %8, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @sqlite3_value_int64(i32* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32**, i32*** %8, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @sqlite3_value_int64(i32* %33)
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %37, i32* %5, align 4
  br label %77

38:                                               ; preds = %25
  %39 = load i64, i64* %10, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @VFSSTAT_MXCNT, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %46, i32* %5, align 4
  br label %77

47:                                               ; preds = %41
  %48 = load i32**, i32*** %8, align 8
  %49 = load i32, i32* @VSTAT_COLUMN_COUNT, align 4
  %50 = add nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @sqlite3_value_type(i32* %53)
  %55 = load i64, i64* @SQLITE_INTEGER, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %58, i32* %5, align 4
  br label %77

59:                                               ; preds = %47
  %60 = load i32**, i32*** %8, align 8
  %61 = load i32, i32* @VSTAT_COLUMN_COUNT, align 4
  %62 = add nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %60, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @sqlite3_value_int64(i32* %65)
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %70, i32* %5, align 4
  br label %77

71:                                               ; preds = %59
  %72 = load i64, i64* %11, align 8
  %73 = load i64*, i64** @aVfsCnt, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 %72, i64* %75, align 8
  %76 = load i32, i32* @SQLITE_OK, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %69, %57, %45, %36, %23, %14
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
