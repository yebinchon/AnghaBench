; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_sqlite3Fts5TokenizerInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_sqlite3Fts5TokenizerInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)* }
%struct.BuiltinTokenizer = type { i8*, i32 }
%struct.BuiltinTokenizer.0 = type { i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"unicode61\00", align 1
@fts5UnicodeCreate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@fts5AsciiCreate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"porter\00", align 1
@fts5PorterCreate = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@fts5AsciiDelete = common dso_local global i32 0, align 4
@fts5AsciiTokenize = common dso_local global i32 0, align 4
@fts5PorterDelete = common dso_local global i32 0, align 4
@fts5PorterTokenize = common dso_local global i32 0, align 4
@fts5UnicodeDelete = common dso_local global i32 0, align 4
@fts5UnicodeTokenize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5TokenizerInit(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca [3 x %struct.BuiltinTokenizer], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds [3 x %struct.BuiltinTokenizer], [3 x %struct.BuiltinTokenizer]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.BuiltinTokenizer, %struct.BuiltinTokenizer* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, align 16
  %8 = getelementptr inbounds %struct.BuiltinTokenizer, %struct.BuiltinTokenizer* %6, i32 0, i32 1
  %9 = load i32, i32* @fts5UnicodeCreate, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.BuiltinTokenizer, %struct.BuiltinTokenizer* %6, i64 1
  %11 = getelementptr inbounds %struct.BuiltinTokenizer, %struct.BuiltinTokenizer* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.BuiltinTokenizer, %struct.BuiltinTokenizer* %10, i32 0, i32 1
  %13 = load i32, i32* @fts5AsciiCreate, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.BuiltinTokenizer, %struct.BuiltinTokenizer* %10, i64 1
  %15 = getelementptr inbounds %struct.BuiltinTokenizer, %struct.BuiltinTokenizer* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 16
  %16 = getelementptr inbounds %struct.BuiltinTokenizer, %struct.BuiltinTokenizer* %14, i32 0, i32 1
  %17 = load i32, i32* @fts5PorterCreate, align 4
  store i32 %17, i32* %16, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %48, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds [3 x %struct.BuiltinTokenizer], [3 x %struct.BuiltinTokenizer]* %3, i64 0, i64 0
  %26 = bitcast %struct.BuiltinTokenizer* %25 to %struct.BuiltinTokenizer.0*
  %27 = call i32 @ArraySize(%struct.BuiltinTokenizer.0* %26)
  %28 = icmp slt i32 %24, %27
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi i1 [ false, %19 ], [ %28, %23 ]
  br i1 %30, label %31, label %51

31:                                               ; preds = %29
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)*, i32 (%struct.TYPE_7__*, i8*, i8*, i32*, i32)** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x %struct.BuiltinTokenizer], [3 x %struct.BuiltinTokenizer]* %3, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.BuiltinTokenizer, %struct.BuiltinTokenizer* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 16
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = bitcast %struct.TYPE_7__* %41 to i8*
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x %struct.BuiltinTokenizer], [3 x %struct.BuiltinTokenizer]* %3, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.BuiltinTokenizer, %struct.BuiltinTokenizer* %45, i32 0, i32 1
  %47 = call i32 %34(%struct.TYPE_7__* %35, i8* %40, i8* %42, i32* %46, i32 0)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %19

51:                                               ; preds = %29
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @ArraySize(%struct.BuiltinTokenizer.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
