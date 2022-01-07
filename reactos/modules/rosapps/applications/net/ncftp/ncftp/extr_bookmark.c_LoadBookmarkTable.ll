; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_LoadBookmarkTable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_LoadBookmarkTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gNumBookmarks = common dso_local global i32 0, align 4
@gBookmarkTable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadBookmarkTable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = call i32* @OpenBookmarkFile(i32* %3)
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %8, %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @gNumBookmarks, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load i32*, i32** @gBookmarkTable, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i32*, i32** @gBookmarkTable, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = call i64 @realloc(i32* %17, i64 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** @gBookmarkTable, align 8
  %24 = load i32*, i32** @gBookmarkTable, align 8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32* %24, i32 0, i32 %29)
  br label %36

31:                                               ; preds = %13, %9
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = call i32* @calloc(i64 %34, i64 4)
  store i32* %35, i32** @gBookmarkTable, align 8
  br label %36

36:                                               ; preds = %31, %16
  %37 = load i32*, i32** @gBookmarkTable, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @CloseBookmarkFile(i32* %40)
  store i32 -1, i32* %1, align 4
  br label %65

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** @gBookmarkTable, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i64 @GetNextBookmark(i32* %48, i32* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %60

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %43

60:                                               ; preds = %55, %43
  %61 = load i32, i32* %2, align 4
  store i32 %61, i32* @gNumBookmarks, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @CloseBookmarkFile(i32* %62)
  %64 = call i32 (...) @SortBookmarks()
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %60, %39
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32* @OpenBookmarkFile(i32*) #1

declare dso_local i64 @realloc(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @calloc(i64, i64) #1

declare dso_local i32 @CloseBookmarkFile(i32*) #1

declare dso_local i64 @GetNextBookmark(i32*, i32*) #1

declare dso_local i32 @SortBookmarks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
