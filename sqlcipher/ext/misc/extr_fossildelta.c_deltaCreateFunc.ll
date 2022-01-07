; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fossildelta.c_deltaCreateFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fossildelta.c_deltaCreateFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"cannot create fossil delta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @deltaCreateFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deltaCreateFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 2
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @sqlite3_value_type(i32* %19)
  %21 = load i64, i64* @SQLITE_NULL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %79

24:                                               ; preds = %3
  %25 = load i32**, i32*** %6, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @sqlite3_value_type(i32* %27)
  %29 = load i64, i64* @SQLITE_NULL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %79

32:                                               ; preds = %24
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @sqlite3_value_bytes(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32**, i32*** %6, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @sqlite3_value_blob(i32* %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %7, align 8
  %42 = load i32**, i32*** %6, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @sqlite3_value_bytes(i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32**, i32*** %6, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @sqlite3_value_blob(i32* %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 70
  %53 = call i8* @sqlite3_malloc64(i32 %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %32
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @sqlite3_result_error_nomem(i32* %57)
  br label %79

59:                                               ; preds = %32
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @delta_create(i8* %60, i32 %61, i8* %62, i32 %63, i8* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @sqlite3_free(i8* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @sqlite3_result_error(i32* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %78

73:                                               ; preds = %59
  %74 = load i32*, i32** %4, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @sqlite3_result_blob(i32* %74, i8* %75, i32 %76, i32 (i8*)* @sqlite3_free)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %23, %31, %78, %56
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @delta_create(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
