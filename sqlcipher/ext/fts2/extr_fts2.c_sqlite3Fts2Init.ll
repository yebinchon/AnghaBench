; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_sqlite3Fts2Init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_sqlite3Fts2Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTS2_HASH_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"porter\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"icu\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fts2_tokenizer\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"snippet\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"offsets\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fts2\00", align 1
@fts2Module = common dso_local global i32 0, align 4
@hashDestroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts2Init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = call i32 @sqlite3Fts2SimpleTokenizerModule(i32** %6)
  %11 = call i32 @sqlite3Fts2PorterTokenizerModule(i32** %7)
  %12 = call i32* @sqlite3_malloc(i32 4)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %16, i32* %4, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @FTS2_HASH_STRING, align 4
  %20 = call i32 @sqlite3Fts2HashInit(i32* %18, i32 %19, i32 1)
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = call i64 @sqlite3Fts2HashInsert(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 7, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = call i64 @sqlite3Fts2HashInsert(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 7, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = call i64 @sqlite3Fts2HashInsert(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %31, %25
  %47 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %40, %37
  br label %49

49:                                               ; preds = %48, %21
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @sqlite3Fts2InitHashTable(i32* %55, i32* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %57, i32* %4, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %53
  %60 = load i32, i32* @SQLITE_OK, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @sqlite3_overload_function(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  store i32 %62, i32* %4, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load i32, i32* @SQLITE_OK, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @sqlite3_overload_function(i32* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  store i32 %67, i32* %4, align 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* @SQLITE_OK, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @sqlite3_overload_function(i32* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  store i32 %72, i32* %4, align 4
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = load i32, i32* @hashDestroy, align 4
  %79 = call i32 @sqlite3_create_module_v2(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* @fts2Module, i8* %77, i32 %78)
  store i32 %79, i32* %2, align 4
  br label %95

80:                                               ; preds = %69, %64, %59, %53, %49
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp ne i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @sqlite3Fts2HashClear(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @sqlite3_free(i32* %91)
  br label %93

93:                                               ; preds = %88, %80
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %74
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @sqlite3Fts2SimpleTokenizerModule(i32**) #1

declare dso_local i32 @sqlite3Fts2PorterTokenizerModule(i32**) #1

declare dso_local i32* @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3Fts2HashInit(i32*, i32, i32) #1

declare dso_local i64 @sqlite3Fts2HashInsert(i32*, i8*, i32, i8*) #1

declare dso_local i32 @sqlite3Fts2InitHashTable(i32*, i32*, i8*) #1

declare dso_local i32 @sqlite3_overload_function(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_create_module_v2(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts2HashClear(i32*) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
