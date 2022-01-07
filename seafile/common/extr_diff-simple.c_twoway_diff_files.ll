; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_twoway_diff_files.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_twoway_diff_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@DIFF_TYPE_COMMITS = common dso_local global i32 0, align 4
@DIFF_STATUS_ADDED = common dso_local global i32 0, align 4
@DIFF_STATUS_DELETED = common dso_local global i32 0, align 4
@DIFF_STATUS_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32**, i8*)* @twoway_diff_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twoway_diff_files(i32 %0, i8* %1, i32** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  store i32** %19, i32*** %11, align 8
  %20 = load i32**, i32*** %8, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %13, align 8
  %23 = load i32**, i32*** %8, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %30 = load i32, i32* @DIFF_STATUS_ADDED, align 4
  %31 = load i32*, i32** %14, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32* @diff_entry_new_from_dirent(i32 %29, i32 %30, i32* %31, i8* %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32**, i32*** %11, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32* @g_list_prepend(i32* %35, i32* %36)
  %38 = load i32**, i32*** %11, align 8
  store i32* %37, i32** %38, align 8
  store i32 0, i32* %5, align 4
  br label %70

39:                                               ; preds = %4
  %40 = load i32*, i32** %14, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %44 = load i32, i32* @DIFF_STATUS_DELETED, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32* @diff_entry_new_from_dirent(i32 %43, i32 %44, i32* %45, i8* %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32**, i32*** %11, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i32* @g_list_prepend(i32* %49, i32* %50)
  %52 = load i32**, i32*** %11, align 8
  store i32* %51, i32** %52, align 8
  store i32 0, i32* %5, align 4
  br label %70

53:                                               ; preds = %39
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @dirent_same(i32* %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %60 = load i32, i32* @DIFF_STATUS_MODIFIED, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32* @diff_entry_new_from_dirent(i32 %59, i32 %60, i32* %61, i8* %62)
  store i32* %63, i32** %12, align 8
  %64 = load i32**, i32*** %11, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32* @g_list_prepend(i32* %65, i32* %66)
  %68 = load i32**, i32*** %11, align 8
  store i32* %67, i32** %68, align 8
  br label %69

69:                                               ; preds = %58, %53
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %42, %28
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32* @diff_entry_new_from_dirent(i32, i32, i32*, i8*) #1

declare dso_local i32* @g_list_prepend(i32*, i32*) #1

declare dso_local i32 @dirent_same(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
