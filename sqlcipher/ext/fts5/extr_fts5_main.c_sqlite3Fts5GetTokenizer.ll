; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_sqlite3Fts5GetTokenizer.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_sqlite3Fts5GetTokenizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i8**, i32, i32**)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no such tokenizer: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"error in tokenizer constructor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5GetTokenizer(i32* %0, i8** %1, i32 %2, i32** %3, %struct.TYPE_5__** %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_5__**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store %struct.TYPE_5__** %4, %struct.TYPE_5__*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %15 = load i32, i32* @SQLITE_OK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %24

20:                                               ; preds = %6
  %21 = load i8**, i8*** %8, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i8* [ null, %19 ], [ %23, %20 ]
  %26 = call %struct.TYPE_6__* @fts5LocateTokenizer(i32* %16, i8* %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %13, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = icmp eq %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %34, i32* %14, align 4
  %35 = load i8**, i8*** %8, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i8**, i8*** %12, align 8
  store i8* %38, i8** %39, align 8
  br label %73

40:                                               ; preds = %24
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (i32, i8**, i32, i32**)*, i32 (i32, i8**, i32, i32**)** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i8**, i8*** %8, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 1
  br label %56

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  %58 = load i32**, i32*** %10, align 8
  %59 = call i32 %44(i32 %47, i8** %49, i32 %57, i32** %58)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %62, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load i8**, i8*** %12, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i8**, i8*** %12, align 8
  store i8* %70, i8** %71, align 8
  br label %72

72:                                               ; preds = %69, %66, %56
  br label %73

73:                                               ; preds = %72, %29
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @SQLITE_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %78, align 8
  %79 = load i32**, i32*** %10, align 8
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32, i32* %14, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_6__* @fts5LocateTokenizer(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
