; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_build_terms.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_build_terms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i8*, i32, %struct.TYPE_10__**)*, i32 (%struct.TYPE_10__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@HASH_STRING = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@DL_POSITIONS_OFFSETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i8*, i32)* @build_terms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_terms(i32* %0, %struct.TYPE_11__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_11__*, i8*, i32, %struct.TYPE_10__**)*, i32 (%struct.TYPE_11__*, i8*, i32, %struct.TYPE_10__**)** %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 %22(%struct.TYPE_11__* %23, i8* %24, i32 -1, %struct.TYPE_10__** %10)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %5, align 4
  br label %87

31:                                               ; preds = %4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @HASH_STRING, align 4
  %37 = call i32 @HashInit(i32* %35, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %71, %31
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_10__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_10__*, i8**, i32*, i32*, i32*, i32*)** %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = call i32 %44(%struct.TYPE_10__* %45, i8** %11, i32* %12, i32* %13, i32* %14, i32* %15)
  %47 = icmp eq i32 %39, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %38
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %52, i32* %16, align 4
  br label %78

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32* @HashFind(i32* %54, i8* %55, i32 %56)
  store i32* %57, i32** %17, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load i32, i32* @DL_POSITIONS_OFFSETS, align 4
  %62 = call i32* @docListNew(i32 %61)
  store i32* %62, i32** %17, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @docListAddDocid(i32* %63, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @HashInsert(i32* %66, i8* %67, i32 %68, i32* %69)
  br label %71

71:                                               ; preds = %60, %53
  %72 = load i32*, i32** %17, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @docListAddPosOffset(i32* %72, i32 %73, i32 %74, i32 %75)
  br label %38

77:                                               ; preds = %38
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %85 = call i32 %83(%struct.TYPE_10__* %84)
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %78, %29
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @HashInit(i32*, i32, i32) #1

declare dso_local i32* @HashFind(i32*, i8*, i32) #1

declare dso_local i32* @docListNew(i32) #1

declare dso_local i32 @docListAddDocid(i32*, i32) #1

declare dso_local i32 @HashInsert(i32*, i8*, i32, i32*) #1

declare dso_local i32 @docListAddPosOffset(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
