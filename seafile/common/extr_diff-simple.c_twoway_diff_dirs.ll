; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_twoway_diff_dirs.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_twoway_diff_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32** }

@EMPTY_SHA1 = common dso_local global i32 0, align 4
@DIFF_TYPE_COMMITS = common dso_local global i32 0, align 4
@DIFF_STATUS_DIR_ADDED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DIFF_STATUS_DIR_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.TYPE_5__**, i8*, i32*)* @twoway_diff_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twoway_diff_dirs(i32 %0, i8* %1, %struct.TYPE_5__** %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %12, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  store i32** %21, i32*** %13, align 8
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %22, i64 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %15, align 8
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %25, i64 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %16, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %5
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EMPTY_SHA1, align 4
  %35 = call i64 @strcmp(i32 %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37, %30
  %43 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %44 = load i32, i32* @DIFF_STATUS_DIR_ADDED, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32* @diff_entry_new_from_dirent(i32 %43, i32 %44, %struct.TYPE_5__* %45, i8* %46)
  store i32* %47, i32** %14, align 8
  %48 = load i32**, i32*** %13, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call i32* @g_list_prepend(i32* %49, i32* %50)
  %52 = load i32**, i32*** %13, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %58

55:                                               ; preds = %37
  %56 = load i32, i32* @TRUE, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %42
  store i32 0, i32* %6, align 4
  br label %85

59:                                               ; preds = %5
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %84, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %64 = load i32, i32* @DIFF_STATUS_DIR_DELETED, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32* @diff_entry_new_from_dirent(i32 %63, i32 %64, %struct.TYPE_5__* %65, i8* %66)
  store i32* %67, i32** %14, align 8
  %68 = load i32**, i32*** %13, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = call i32* @g_list_prepend(i32* %69, i32* %70)
  %72 = load i32**, i32*** %13, align 8
  store i32* %71, i32** %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  br label %83

80:                                               ; preds = %62
  %81 = load i32, i32* @TRUE, align 4
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  store i32 0, i32* %6, align 4
  br label %85

84:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %83, %58
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32* @diff_entry_new_from_dirent(i32, i32, %struct.TYPE_5__*, i8*) #1

declare dso_local i32* @g_list_prepend(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
