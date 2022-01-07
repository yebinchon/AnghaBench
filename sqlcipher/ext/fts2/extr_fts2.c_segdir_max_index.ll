; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_segdir_max_index.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_segdir_max_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGDIR_MAX_INDEX_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @segdir_max_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segdir_max_index(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @SEGDIR_MAX_INDEX_STMT, align 4
  %12 = call i32 @sql_get_statement(i32* %10, i32 %11, i32** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @SQLITE_OK, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %75

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sqlite3_bind_int(i32* %19, i32 1, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %75

27:                                               ; preds = %18
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @sqlite3_step(i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SQLITE_DONE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %75

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SQLITE_ROW, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %35
  %42 = load i64, i64* @SQLITE_NULL, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @sqlite3_column_type(i32* %43, i32 0)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @sqlite3_step(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SQLITE_ROW, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %53, i32* %4, align 4
  br label %75

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %75

56:                                               ; preds = %41
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @sqlite3_column_int(i32* %57, i32 0)
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @sqlite3_step(i32* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @SQLITE_ROW, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %66, i32* %4, align 4
  br label %75

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @SQLITE_DONE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @SQLITE_ROW, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %71, %65, %54, %52, %39, %33, %25, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @sql_get_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
