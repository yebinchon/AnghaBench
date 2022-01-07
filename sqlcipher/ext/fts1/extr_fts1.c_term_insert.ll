; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_term_insert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_term_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TERM_INSERT_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32, i32, %struct.TYPE_3__*)* @term_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @term_insert(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @TERM_INSERT_STMT, align 4
  %18 = call i32 @sql_get_statement(i32* %16, i32 %17, i32** %14)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %7, align 4
  br label %80

24:                                               ; preds = %6
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %14, align 8
  %29 = call i32 @sqlite3_bind_null(i32* %28, i32 1)
  store i32 %29, i32* %15, align 4
  br label %35

30:                                               ; preds = %24
  %31 = load i32*, i32** %14, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sqlite3_bind_int64(i32* %31, i32 1, i32 %33)
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %7, align 4
  br label %80

41:                                               ; preds = %35
  %42 = load i32*, i32** %14, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @SQLITE_STATIC, align 4
  %46 = call i32 @sqlite3_bind_text(i32* %42, i32 2, i8* %43, i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @SQLITE_OK, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %7, align 4
  br label %80

52:                                               ; preds = %41
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @sqlite3_bind_int(i32* %53, i32 3, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @SQLITE_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %7, align 4
  br label %80

61:                                               ; preds = %52
  %62 = load i32*, i32** %14, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SQLITE_STATIC, align 4
  %70 = call i32 @sqlite3_bind_blob(i32* %62, i32 4, i32 %65, i32 %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @SQLITE_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %7, align 4
  br label %80

76:                                               ; preds = %61
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @TERM_INSERT_STMT, align 4
  %79 = call i32 @sql_single_step_statement(i32* %77, i32 %78, i32** %14)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %74, %59, %50, %39, %22
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @sql_get_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_null(i32*, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sql_single_step_statement(i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
