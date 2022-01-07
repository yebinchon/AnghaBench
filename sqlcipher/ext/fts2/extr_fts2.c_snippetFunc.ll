; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_snippetFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_snippetFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@SQLITE_BLOB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"illegal first argument to html_snippet\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"<b>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"</b>\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"<b>...</b>\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @snippetFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snippetFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %82

14:                                               ; preds = %3
  %15 = load i32**, i32*** %6, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @sqlite3_value_type(i32* %17)
  %19 = load i64, i64* @SQLITE_BLOB, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @sqlite3_value_bytes(i32* %24)
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 8
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %14
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @sqlite3_result_error(i32* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %82

31:                                               ; preds = %21
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  %32 = load i32**, i32*** %6, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @sqlite3_value_blob(i32* %34)
  %36 = call i32 @memcpy(%struct.TYPE_7__** %7, i32 %35, i32 8)
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %63

39:                                               ; preds = %31
  %40 = load i32**, i32*** %6, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @sqlite3_value_text(i32* %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %8, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %45, 3
  br i1 %46, label %47, label %62

47:                                               ; preds = %39
  %48 = load i32**, i32*** %6, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @sqlite3_value_text(i32* %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %9, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp sge i32 %53, 4
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32**, i32*** %6, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @sqlite3_value_text(i32* %58)
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %10, align 8
  br label %61

61:                                               ; preds = %55, %47
  br label %62

62:                                               ; preds = %61, %39
  br label %63

63:                                               ; preds = %62, %31
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = call i32 @snippetAllOffsets(%struct.TYPE_7__* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @snippetText(%struct.TYPE_7__* %66, i8* %67, i8* %68, i8* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SQLITE_STATIC, align 4
  %81 = call i32 @sqlite3_result_text(i32* %71, i32 %75, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %13, %63, %28
  ret void
}

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @sqlite3_value_blob(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @snippetAllOffsets(%struct.TYPE_7__*) #1

declare dso_local i32 @snippetText(%struct.TYPE_7__*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
