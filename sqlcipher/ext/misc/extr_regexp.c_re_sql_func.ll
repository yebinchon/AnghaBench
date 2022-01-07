; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_regexp.c_re_sql_func.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_regexp.c_re_sql_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @re_sql_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_sql_func(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @sqlite3_get_auxdata(i32* %12, i32 0)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %3
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @sqlite3_value_text(i32* %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %64

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @re_compile(i32** %7, i8* %26, i32 0)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @re_free(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @sqlite3_result_error(i32* %33, i8* %34, i32 -1)
  br label %64

36:                                               ; preds = %25
  %37 = load i32*, i32** %7, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @sqlite3_result_error_nomem(i32* %40)
  br label %64

42:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %3
  %44 = load i32**, i32*** %6, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @sqlite3_value_text(i32* %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @re_match(i32* %53, i8* %54, i32 -1)
  %56 = call i32 @sqlite3_result_int(i32* %52, i32 %55)
  br label %57

57:                                               ; preds = %51, %43
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @sqlite3_set_auxdata(i32* %61, i32 0, i32* %62, void (i8*)* bitcast (i32 (i32*)* @re_free to void (i8*)*))
  br label %64

64:                                               ; preds = %24, %30, %39, %60, %57
  ret void
}

declare dso_local i32* @sqlite3_get_auxdata(i32*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i8* @re_compile(i32**, i8*, i32) #1

declare dso_local i32 @re_free(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @re_match(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_set_auxdata(i32*, i32, i32*, void (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
