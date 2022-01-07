; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*, i8**, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32 (i8*, i8**, i32, i32*)* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"unicode61\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32**)* @fts5PorterCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5PorterCreate(i8* %0, i8** %1, i32 %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %9, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %10, align 4
  store i8* null, i8** %12, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  br label %25

25:                                               ; preds = %21, %4
  %26 = call i64 @sqlite3_malloc(i32 16)
  %27 = inttoptr i64 %26 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %11, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %32 = call i32 @memset(%struct.TYPE_7__* %31, i32 0, i32 16)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_6__*, i8*, i8**, %struct.TYPE_8__*)*, i32 (%struct.TYPE_6__*, i8*, i8**, %struct.TYPE_8__*)** %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = call i32 %35(%struct.TYPE_6__* %36, i8* %37, i8** %12, %struct.TYPE_8__* %39)
  store i32 %40, i32* %10, align 4
  br label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %41, %30
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @SQLITE_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  br label %54

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 0, %53 ]
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8**, i8*** %6, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  br label %62

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i8** [ %60, %58 ], [ null, %61 ]
  store i8** %63, i8*** %15, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32 (i8*, i8**, i32, i32*)*, i32 (i8*, i8**, i32, i32*)** %66, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8**, i8*** %15, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 %67(i8* %68, i8** %69, i32 %70, i32* %72)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %62, %43
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @SQLITE_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = bitcast %struct.TYPE_7__* %79 to i32*
  %81 = call i32 @fts5PorterDelete(i32* %80)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %84 = bitcast %struct.TYPE_7__* %83 to i32*
  %85 = load i32**, i32*** %8, align 8
  store i32* %84, i32** %85, align 8
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @fts5PorterDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
