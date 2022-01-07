; ModuleID = '/home/carl/AnghaBench/wcdb/fts/extr_mm_cipher.c_sqlite3_register_mm_cipher.c'
source_filename = "/home/carl/AnghaBench/wcdb/fts/extr_mm_cipher.c_sqlite3_register_mm_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@U_ZERO_ERROR = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@UCNV_IBM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mmenc\00", align 1
@SQLITE_ANY = common dso_local global i32 0, align 4
@mmenc_func = common dso_local global i32 0, align 4
@mm_func_destroy = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mmdec\00", align 1
@mmdec_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"mm_cipher_key\00", align 1
@mm_cipher_key_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_register_mm_cipher(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %9, i32* %6, align 4
  %10 = call %struct.TYPE_5__* @sqlite3_malloc(i32 12)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %14, i32* %3, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @UCNV_IBM, align 4
  %18 = call i32 @ucnv_openCCSID(i32 1214, i32 %17, i32* %6)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %68

26:                                               ; preds = %15
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @memcpy(i32 %29, i8* %30, i32 16)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 3, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @SQLITE_ANY, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = load i32, i32* @mmenc_func, align 4
  %38 = load i32, i32* @mm_func_destroy, align 4
  %39 = call i32 @sqlite3_create_function_v2(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1, i32 %35, %struct.TYPE_5__* %36, i32 %37, i32* null, i32* null, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SQLITE_OK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %68

44:                                               ; preds = %26
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @SQLITE_ANY, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = load i32, i32* @mmdec_func, align 4
  %49 = load i32, i32* @mm_func_destroy, align 4
  %50 = call i32 @sqlite3_create_function_v2(i32* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %46, %struct.TYPE_5__* %47, i32 %48, i32* null, i32* null, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %68

55:                                               ; preds = %44
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @SQLITE_ANY, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = load i32, i32* @mm_cipher_key_func, align 4
  %60 = load i32, i32* @mm_func_destroy, align 4
  %61 = call i32 @sqlite3_create_function_v2(i32* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %57, %struct.TYPE_5__* %58, i32 %59, i32* null, i32* null, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SQLITE_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @SQLITE_OK, align 4
  store i32 %67, i32* %3, align 4
  br label %76

68:                                               ; preds = %65, %54, %43, %25
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = call i32 @sqlite3_free(%struct.TYPE_5__* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %66, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_5__* @sqlite3_malloc(i32) #1

declare dso_local i32 @ucnv_openCCSID(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @sqlite3_create_function_v2(i32*, i8*, i32, i32, %struct.TYPE_5__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
