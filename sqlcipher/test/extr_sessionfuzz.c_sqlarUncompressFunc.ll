; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_sessionfuzz.c_sqlarUncompressFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_sessionfuzz.c_sqlarUncompressFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Z_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"error in uncompress()\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @sqlarUncompressFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlarUncompressFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 2
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32**, i32*** %6, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @sqlite3_value_int(i32* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @sqlite3_value_bytes(i32* %25)
  store i64 %26, i64* %7, align 8
  %27 = icmp eq i64 %22, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21, %3
  %29 = load i32*, i32** %4, align 8
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @sqlite3_result_value(i32* %29, i32* %32)
  br label %59

34:                                               ; preds = %21
  %35 = load i32**, i32*** %6, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32* @sqlite3_value_blob(i32* %37)
  store i32* %38, i32** %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32* @sqlite3_malloc(i64 %39)
  store i32* %40, i32** %10, align 8
  %41 = load i64, i64* @Z_OK, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @uncompress(i32* %42, i64* %8, i32* %43, i64 %44)
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @sqlite3_result_error(i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %56

50:                                               ; preds = %34
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %55 = call i32 @sqlite3_result_blob(i32* %51, i32* %52, i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @sqlite3_free(i32* %57)
  br label %59

59:                                               ; preds = %56, %28
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_int(i32*) #1

declare dso_local i64 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32*) #1

declare dso_local i32* @sqlite3_value_blob(i32*) #1

declare dso_local i32* @sqlite3_malloc(i64) #1

declare dso_local i64 @uncompress(i32*, i64*, i32*, i64) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i32*, i64, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
