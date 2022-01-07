; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_QuotedDropList.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_QuotedDropList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__*)* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@CF_HDROP = common dso_local global i32 0, align 4
@DVASPECT_CONTENT = common dso_local global i32 0, align 4
@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@LMEM_FIXED = common dso_local global i32 0, align 4
@CHAR_DQUOTE = common dso_local global i8* null, align 8
@CHAR_SPACE = common dso_local global i32 0, align 4
@CHAR_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @QuotedDropList(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32* null, i32** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %13 = load i32, i32* @CF_HDROP, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %16 = load i32, i32* @DVASPECT_CONTENT, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 3
  store i32 -1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 4
  %19 = load i32, i32* @TYMED_HGLOBAL, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__*)*, i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__*)** %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = call i64 %24(%struct.TYPE_12__* %25, %struct.TYPE_13__* %9, %struct.TYPE_11__* %10)
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %101

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @DragQueryFile(i32 %32, i32 -1, i32* null, i32 0)
  store i32 %33, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %46, %29
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @DragQueryFile(i32 %39, i32 %40, i32* null, i32 0)
  %42 = add nsw i32 %41, 1
  %43 = add nsw i32 %42, 2
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %34

49:                                               ; preds = %34
  %50 = load i32, i32* @LMEM_FIXED, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i64 @LocalAlloc(i32 %50, i32 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %7, align 8
  store i32* %56, i32** %8, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %96, %49
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = load i8*, i8** @CHAR_DQUOTE, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @DragQueryFile(i32 %66, i32 %67, i32* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %8, align 8
  %75 = load i8*, i8** @CHAR_DQUOTE, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %61
  %84 = load i32, i32* @CHAR_SPACE, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  br label %90

87:                                               ; preds = %61
  %88 = load i32, i32* @CHAR_NULL, align 4
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  %93 = add nsw i32 %92, 2
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %57

99:                                               ; preds = %57
  %100 = call i32 @ReleaseStgMedium(%struct.TYPE_11__* %10)
  br label %101

101:                                              ; preds = %99, %1
  %102 = load i32*, i32** %7, align 8
  ret i32* %102
}

declare dso_local i32 @DragQueryFile(i32, i32, i32*, i32) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @ReleaseStgMedium(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
