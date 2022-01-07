; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_segdir_set.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_segdir_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGDIR_SET_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i8*, i32)* @segdir_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segdir_set(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* @SEGDIR_SET_STMT, align 4
  %22 = call i32 @sql_get_statement(i32* %20, i32 %21, i32** %18)
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* %19, align 4
  %24 = load i32, i32* @SQLITE_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = load i32, i32* %19, align 4
  store i32 %27, i32* %9, align 4
  br label %87

28:                                               ; preds = %8
  %29 = load i32*, i32** %18, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @sqlite3_bind_int(i32* %29, i32 1, i32 %30)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %9, align 4
  br label %87

37:                                               ; preds = %28
  %38 = load i32*, i32** %18, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @sqlite3_bind_int(i32* %38, i32 2, i32 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %9, align 4
  br label %87

46:                                               ; preds = %37
  %47 = load i32*, i32** %18, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @sqlite3_bind_int64(i32* %47, i32 3, i32 %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %19, align 4
  store i32 %54, i32* %9, align 4
  br label %87

55:                                               ; preds = %46
  %56 = load i32*, i32** %18, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @sqlite3_bind_int64(i32* %56, i32 4, i32 %57)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* @SQLITE_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %19, align 4
  store i32 %63, i32* %9, align 4
  br label %87

64:                                               ; preds = %55
  %65 = load i32*, i32** %18, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @sqlite3_bind_int64(i32* %65, i32 5, i32 %66)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %9, align 4
  br label %87

73:                                               ; preds = %64
  %74 = load i32*, i32** %18, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @SQLITE_STATIC, align 4
  %78 = call i32 @sqlite3_bind_blob(i32* %74, i32 6, i8* %75, i32 %76, i32 %77)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* @SQLITE_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %19, align 4
  store i32 %83, i32* %9, align 4
  br label %87

84:                                               ; preds = %73
  %85 = load i32*, i32** %18, align 8
  %86 = call i32 @sql_single_step(i32* %85)
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %82, %71, %62, %53, %44, %35, %26
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32 @sql_get_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @sql_single_step(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
