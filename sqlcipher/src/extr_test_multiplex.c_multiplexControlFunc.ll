; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexControlFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexControlFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@MULTIPLEX_CTRL_ENABLE = common dso_local global i32 0, align 4
@MULTIPLEX_CTRL_SET_CHUNK_SIZE = common dso_local global i32 0, align 4
@MULTIPLEX_CTRL_SET_MAX_CHUNKS = common dso_local global i32 0, align 4
@SQLITE_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @multiplexControlFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiplexControlFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @sqlite3_context_db_handle(i32* %12)
  store i32* %13, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %20, i32* %7, align 4
  br label %40

21:                                               ; preds = %16
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @sqlite3_value_int(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @sqlite3_value_int(i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %37 [
    i32 1, label %31
    i32 2, label %33
    i32 3, label %35
  ]

31:                                               ; preds = %21
  %32 = load i32, i32* @MULTIPLEX_CTRL_ENABLE, align 4
  store i32 %32, i32* %9, align 4
  br label %39

33:                                               ; preds = %21
  %34 = load i32, i32* @MULTIPLEX_CTRL_SET_CHUNK_SIZE, align 4
  store i32 %34, i32* %9, align 4
  br label %39

35:                                               ; preds = %21
  %36 = load i32, i32* @MULTIPLEX_CTRL_SET_MAX_CHUNKS, align 4
  store i32 %36, i32* %9, align 4
  br label %39

37:                                               ; preds = %21
  %38 = load i32, i32* @SQLITE_NOTFOUND, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %35, %33, %31
  br label %40

40:                                               ; preds = %39, %19
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @sqlite3_file_control(i32* %45, i32 0, i32 %46, i32* %10)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @sqlite3_result_error_code(i32* %49, i32 %50)
  ret void
}

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_file_control(i32*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
