; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_term_select_all.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_term_select_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TERM_SELECT_ALL_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@DL_DEFAULT = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8*, i32, i32*)* @term_select_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @term_select_all(%struct.TYPE_5__* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = load i32, i32* @TERM_SELECT_ALL_STMT, align 4
  %18 = call i32 @sql_get_statement(%struct.TYPE_5__* %16, i32 %17, i32** %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %6, align 4
  br label %75

24:                                               ; preds = %5
  %25 = load i32*, i32** %13, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SQLITE_STATIC, align 4
  %29 = call i32 @sqlite3_bind_text(i32* %25, i32 1, i8* %26, i32 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %6, align 4
  br label %75

35:                                               ; preds = %24
  %36 = load i32, i32* @DL_DEFAULT, align 4
  %37 = call i32 @docListInit(i32* %12, i32 %36, i32 0, i32 0)
  br label %38

38:                                               ; preds = %59, %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = load i32, i32* @TERM_SELECT_ALL_STMT, align 4
  %41 = call i32 @sql_step_statement(%struct.TYPE_5__* %39, i32 %40, i32** %13)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* @SQLITE_ROW, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load i32, i32* @DL_DEFAULT, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @sqlite3_column_blob(i32* %46, i32 0)
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @sqlite3_column_bytes(i32* %48, i32 0)
  %50 = call i32 @docListInit(i32* %15, i32 %45, i32 %47, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @docListRestrictColumn(i32* %15, i32 %57)
  br label %59

59:                                               ; preds = %56, %44
  %60 = call i32 @docListAccumulate(i32* %15, i32* %12)
  %61 = call i32 @docListDestroy(i32* %12)
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %12, align 4
  br label %38

63:                                               ; preds = %38
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @SQLITE_DONE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = call i32 @docListDestroy(i32* %12)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %6, align 4
  br label %75

70:                                               ; preds = %63
  %71 = call i32 @docListDiscardEmpty(i32* %12)
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @SQLITE_OK, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %70, %67, %33, %22
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @sql_get_statement(%struct.TYPE_5__*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @docListInit(i32*, i32, i32, i32) #1

declare dso_local i32 @sql_step_statement(%struct.TYPE_5__*, i32, i32**) #1

declare dso_local i32 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @docListRestrictColumn(i32*, i32) #1

declare dso_local i32 @docListAccumulate(i32*, i32*) #1

declare dso_local i32 @docListDestroy(i32*) #1

declare dso_local i32 @docListDiscardEmpty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
