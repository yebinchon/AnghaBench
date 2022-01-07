; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3Init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTS3_HASH_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"porter\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"unicode61\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fts3_tokenizer\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"snippet\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"offsets\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"matchinfo\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"fts3\00", align 1
@fts3Module = common dso_local global i32 0, align 4
@hashDestroy = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"fts4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3Init(i32* %0) #0 {
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
  %10 = call i32 @sqlite3Fts3UnicodeTokenizer(i32** %8)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @sqlite3Fts3InitAux(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SQLITE_OK, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %130

18:                                               ; preds = %1
  %19 = call i32 @sqlite3Fts3SimpleTokenizerModule(i32** %6)
  %20 = call i32 @sqlite3Fts3PorterTokenizerModule(i32** %7)
  %21 = call i32* @sqlite3_malloc(i32 4)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @FTS3_HASH_STRING, align 4
  %29 = call i32 @sqlite3Fts3HashInit(i32* %27, i32 %28, i32 1)
  br label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = call i64 @sqlite3Fts3HashInsert(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 7, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = call i64 @sqlite3Fts3HashInsert(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 7, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = call i64 @sqlite3Fts3HashInsert(i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 10, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %40, %34
  %53 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %46
  br label %55

55:                                               ; preds = %54, %30
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %115

59:                                               ; preds = %55
  %60 = load i32, i32* @SQLITE_OK, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @sqlite3Fts3InitHashTable(i32* %61, i32* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %63, i32* %4, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %115

65:                                               ; preds = %59
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @sqlite3_overload_function(i32* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  store i32 %68, i32* %4, align 4
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %115

70:                                               ; preds = %65
  %71 = load i32, i32* @SQLITE_OK, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @sqlite3_overload_function(i32* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %73, i32* %4, align 4
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %115

75:                                               ; preds = %70
  %76 = load i32, i32* @SQLITE_OK, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @sqlite3_overload_function(i32* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %78, i32* %4, align 4
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %115

80:                                               ; preds = %75
  %81 = load i32, i32* @SQLITE_OK, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @sqlite3_overload_function(i32* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 2)
  store i32 %83, i32* %4, align 4
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %80
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @sqlite3_overload_function(i32* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 1)
  store i32 %88, i32* %4, align 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %85
  %91 = load i32*, i32** %3, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = bitcast i32* %92 to i8*
  %94 = load i32, i32* @hashDestroy, align 4
  %95 = call i32 @sqlite3_create_module_v2(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* @fts3Module, i8* %93, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @SQLITE_OK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load i32*, i32** %3, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = bitcast i32* %101 to i8*
  %103 = call i32 @sqlite3_create_module_v2(i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* @fts3Module, i8* %102, i32 0)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %99, %90
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @SQLITE_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32*, i32** %3, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = bitcast i32* %110 to i8*
  %112 = call i32 @sqlite3Fts3InitTok(i32* %109, i8* %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %130

115:                                              ; preds = %85, %80, %75, %70, %65, %59, %55
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @SQLITE_OK, align 4
  %118 = icmp ne i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32*, i32** %5, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @sqlite3Fts3HashClear(i32* %124)
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @sqlite3_free(i32* %126)
  br label %128

128:                                              ; preds = %123, %115
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %113, %16
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @sqlite3Fts3UnicodeTokenizer(i32**) #1

declare dso_local i32 @sqlite3Fts3InitAux(i32*) #1

declare dso_local i32 @sqlite3Fts3SimpleTokenizerModule(i32**) #1

declare dso_local i32 @sqlite3Fts3PorterTokenizerModule(i32**) #1

declare dso_local i32* @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3Fts3HashInit(i32*, i32, i32) #1

declare dso_local i64 @sqlite3Fts3HashInsert(i32*, i8*, i32, i8*) #1

declare dso_local i32 @sqlite3Fts3InitHashTable(i32*, i32*, i8*) #1

declare dso_local i32 @sqlite3_overload_function(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_create_module_v2(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @sqlite3Fts3InitTok(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts3HashClear(i32*) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
