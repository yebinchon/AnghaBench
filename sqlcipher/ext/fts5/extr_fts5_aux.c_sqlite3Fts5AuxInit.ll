; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_sqlite3Fts5AuxInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_sqlite3Fts5AuxInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*, i8*, i32, void (i8*)*)* }
%struct.Builtin = type { i8*, i8*, i32, void (i8*)* }
%struct.Builtin.0 = type { i8*, i8*, i32, void (i8*)* }

@.str = private unnamed_addr constant [8 x i8] c"snippet\00", align 1
@fts5SnippetFunction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@fts5HighlightFunction = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bm25\00", align 1
@fts5Bm25Function = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5AuxInit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca [3 x %struct.Builtin], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds [3 x %struct.Builtin], [3 x %struct.Builtin]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 16
  %8 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %6, i32 0, i32 1
  store i8* null, i8** %8, align 8
  %9 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %6, i32 0, i32 2
  %10 = load i32, i32* @fts5SnippetFunction, align 4
  store i32 %10, i32* %9, align 16
  %11 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %6, i32 0, i32 3
  store void (i8*)* null, void (i8*)** %11, align 8
  %12 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %6, i64 1
  %13 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 16
  %14 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %12, i32 0, i32 1
  store i8* null, i8** %14, align 8
  %15 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %12, i32 0, i32 2
  %16 = load i32, i32* @fts5HighlightFunction, align 4
  store i32 %16, i32* %15, align 16
  %17 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %12, i32 0, i32 3
  store void (i8*)* null, void (i8*)** %17, align 8
  %18 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %12, i64 1
  %19 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %18, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %18, i32 0, i32 2
  %22 = load i32, i32* @fts5Bm25Function, align 4
  store i32 %22, i32* %21, align 16
  %23 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %18, i32 0, i32 3
  store void (i8*)* null, void (i8*)** %23, align 8
  %24 = load i32, i32* @SQLITE_OK, align 4
  store i32 %24, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %63, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds [3 x %struct.Builtin], [3 x %struct.Builtin]* %3, i64 0, i64 0
  %32 = bitcast %struct.Builtin* %31 to %struct.Builtin.0*
  %33 = call i32 @ArraySize(%struct.Builtin.0* %32)
  %34 = icmp slt i32 %30, %33
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i1 [ false, %25 ], [ %34, %29 ]
  br i1 %36, label %37, label %66

37:                                               ; preds = %35
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_5__*, i8*, i8*, i32, void (i8*)*)*, i32 (%struct.TYPE_5__*, i8*, i8*, i32, void (i8*)*)** %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x %struct.Builtin], [3 x %struct.Builtin]* %3, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 16
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x %struct.Builtin], [3 x %struct.Builtin]* %3, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x %struct.Builtin], [3 x %struct.Builtin]* %3, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 16
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x %struct.Builtin], [3 x %struct.Builtin]* %3, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.Builtin, %struct.Builtin* %59, i32 0, i32 3
  %61 = load void (i8*)*, void (i8*)** %60, align 8
  %62 = call i32 %40(%struct.TYPE_5__* %41, i8* %46, i8* %51, i32 %56, void (i8*)* %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %37
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %25

66:                                               ; preds = %35
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ArraySize(%struct.Builtin.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
