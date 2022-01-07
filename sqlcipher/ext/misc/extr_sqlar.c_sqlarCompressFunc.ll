; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_sqlar.c_sqlarCompressFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_sqlar.c_sqlarCompressFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_BLOB = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"error in compress()\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @sqlarCompressFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlarCompressFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32**, i32*** %6, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @sqlite3_value_type(i32* %17)
  %19 = load i64, i64* @SQLITE_BLOB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %3
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32* @sqlite3_value_blob(i32* %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @sqlite3_value_bytes(i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @compressBound(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @sqlite3_malloc(i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @sqlite3_result_error_nomem(i32* %38)
  br label %77

40:                                               ; preds = %21
  %41 = load i64, i64* @Z_OK, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @compress(i32* %42, i32* %9, i32* %43, i32 %44)
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @sqlite3_result_error(i32* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %67

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %59 = call i32 @sqlite3_result_blob(i32* %55, i32* %56, i32 %57, i32 %58)
  br label %66

60:                                               ; preds = %50
  %61 = load i32*, i32** %4, align 8
  %62 = load i32**, i32*** %6, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @sqlite3_result_value(i32* %61, i32* %64)
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @sqlite3_free(i32* %68)
  br label %70

70:                                               ; preds = %67
  br label %77

71:                                               ; preds = %3
  %72 = load i32*, i32** %4, align 8
  %73 = load i32**, i32*** %6, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @sqlite3_result_value(i32* %72, i32* %75)
  br label %77

77:                                               ; preds = %37, %71, %70
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32* @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @compressBound(i32) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i64 @compress(i32*, i32*, i32*, i32) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32*) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
