; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_expand_dir_added_cb.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_expand_dir_added_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@EMPTY_SHA1 = common dso_local global i32 0, align 4
@DIFF_TYPE_COMMITS = common dso_local global i32 0, align 4
@DIFF_STATUS_DIR_ADDED = common dso_local global i32 0, align 4
@DIFF_STATUS_ADDED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_6__*, i8*, i32*)* @expand_dir_added_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_dir_added_cb(i32* %0, i8* %1, %struct.TYPE_6__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca [20 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to i32**
  store i32** %15, i32*** %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %20 = call i32 @hex_to_rawdata(i32 %18, i8* %19, i32 20)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @S_ISDIR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EMPTY_SHA1, align 4
  %31 = call i64 @strcmp(i32 %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %35 = load i32, i32* @DIFF_STATUS_DIR_ADDED, align 4
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %37 = load i8*, i8** %7, align 8
  %38 = call %struct.TYPE_7__* @diff_entry_new(i32 %34, i32 %35, i8* %36, i8* %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %12, align 8
  br label %52

39:                                               ; preds = %26, %5
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @S_ISREG(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %47 = load i32, i32* @DIFF_STATUS_ADDED, align 4
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %49 = load i8*, i8** %7, align 8
  %50 = call %struct.TYPE_7__* @diff_entry_new(i32 %46, i32 %47, i8* %48, i8* %49)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %12, align 8
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @g_strdup(i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32**, i32*** %11, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %80 = call i32* @g_list_prepend(i32* %78, %struct.TYPE_7__* %79)
  %81 = load i32**, i32*** %11, align 8
  store i32* %80, i32** %81, align 8
  br label %82

82:                                               ; preds = %55, %52
  %83 = load i32, i32* @TRUE, align 4
  ret i32 %83
}

declare dso_local i32 @hex_to_rawdata(i32, i8*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_7__* @diff_entry_new(i32, i32, i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @g_strdup(i32) #1

declare dso_local i32* @g_list_prepend(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
