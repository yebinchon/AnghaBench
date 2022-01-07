; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_sqlite3Fts5ParseColset.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_sqlite3Fts5ParseColset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"no such column: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3Fts5ParseColset(%struct.TYPE_9__* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  store i8* null, i8** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @sqlite3Fts5Strndup(i64* %12, i32 %15, i32 %18)
  store i8* %19, i8** %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SQLITE_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %10, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @sqlite3Fts5Dequote(i8* %29)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %50, %25
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @sqlite3_stricmp(i32 %44, i8* %45)
  %47 = icmp eq i64 0, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %31

53:                                               ; preds = %48, %31
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @sqlite3Fts5ParseError(%struct.TYPE_9__* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %61)
  br label %68

63:                                               ; preds = %53
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i8* @fts5ParseColset(%struct.TYPE_9__* %64, i8* %65, i32 %66)
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @sqlite3_free(i8* %69)
  br label %71

71:                                               ; preds = %68, %3
  %72 = load i8*, i8** %7, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SQLITE_OK, align 8
  %79 = icmp ne i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @sqlite3_free(i8* %82)
  br label %84

84:                                               ; preds = %74, %71
  %85 = load i8*, i8** %7, align 8
  ret i8* %85
}

declare dso_local i8* @sqlite3Fts5Strndup(i64*, i32, i32) #1

declare dso_local i32 @sqlite3Fts5Dequote(i8*) #1

declare dso_local i64 @sqlite3_stricmp(i32, i8*) #1

declare dso_local i32 @sqlite3Fts5ParseError(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i8* @fts5ParseColset(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
