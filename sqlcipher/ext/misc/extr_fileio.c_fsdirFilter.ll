; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_fsdirFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_fsdirFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"table function fsdir requires an argument\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"table function fsdir requires a non-NULL argument\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"cannot stat file: %s\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @fsdirFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsdirFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %13, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %18 = call i32 @fsdirResetCursor(%struct.TYPE_4__* %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %23 = call i32 (%struct.TYPE_4__*, i8*, ...) @fsdirSetErrmsg(%struct.TYPE_4__* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %24, i32* %6, align 4
  br label %115

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 2
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ true, %29 ], [ %34, %32 ]
  br label %37

37:                                               ; preds = %35, %25
  %38 = phi i1 [ false, %25 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32**, i32*** %11, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @sqlite3_value_text(i32* %43)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %50 = call i32 (%struct.TYPE_4__*, i8*, ...) @fsdirSetErrmsg(%struct.TYPE_4__* %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %51, i32* %6, align 4
  br label %115

52:                                               ; preds = %37
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32**, i32*** %11, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @sqlite3_value_text(i32* %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %55, %52
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = trunc i64 %72 to i32
  %74 = add nsw i32 %73, 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %79, i8* %80)
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %91

85:                                               ; preds = %63
  %86 = load i8*, i8** %12, align 8
  %87 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %85, %68
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %97, i32* %6, align 4
  br label %115

98:                                               ; preds = %91
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = call i64 @fileLinkStat(i64 %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (%struct.TYPE_4__*, i8*, ...) @fsdirSetErrmsg(%struct.TYPE_4__* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %110)
  %112 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %112, i32* %6, align 4
  br label %115

113:                                              ; preds = %98
  %114 = load i32, i32* @SQLITE_OK, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %113, %106, %96, %48, %21
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @fsdirResetCursor(%struct.TYPE_4__*) #1

declare dso_local i32 @fsdirSetErrmsg(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i64 @fileLinkStat(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
