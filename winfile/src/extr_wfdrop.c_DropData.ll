; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_DropData.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_DropData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@IDCW_LISTBOX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IDCW_TREELISTBOX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@LB_GETTEXT = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@FS_GETDIRECTORY = common dso_local global i32 0, align 4
@szStarDotStar = common dso_local global i32 0, align 4
@DROPEFFECT_MOVE = common dso_local global i64 0, align 8
@DROPEFFECT_COPY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DropData(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32* null, i32** %9, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @IDCW_LISTBOX, align 4
  %23 = call i32* @GetDlgItem(i32* %21, i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @IDCW_TREELISTBOX, align 4
  %32 = call i32* @GetDlgItem(i32* %30, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %117

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %117

47:                                               ; preds = %41
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @LB_GETTEXT, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ptrtoint i32* %13 to i32
  %54 = call i64 @SendMessage(i32* %48, i32 %49, i32 %52, i32 %53)
  %55 = load i64, i64* @LB_ERR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 1, i32* %12, align 4
  br label %117

58:                                               ; preds = %47
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @GetTreePath(i32 %59, i32* %18)
  br label %87

61:                                               ; preds = %38
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @FS_GETDIRECTORY, align 4
  %66 = call i32 @COUNTOF(i32* %18)
  %67 = ptrtoint i32* %18 to i32
  %68 = call i64 @SendMessage(i32* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %86

73:                                               ; preds = %61
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @LB_GETTEXT, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = ptrtoint i32* %14 to i64
  %80 = trunc i64 %79 to i32
  %81 = call i64 @SendMessage(i32* %74, i32 %75, i32 %78, i32 %80)
  %82 = call i32 @AddBackslash(i32* %18)
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @MemGetFileName(i32 %83)
  %85 = call i32 @lstrcat(i32* %18, i32 %84)
  br label %86

86:                                               ; preds = %73, %61
  br label %87

87:                                               ; preds = %86, %58
  %88 = call i32 @AddBackslash(i32* %18)
  %89 = load i32, i32* @szStarDotStar, align 4
  %90 = call i32 @lstrcat(i32* %18, i32 %89)
  %91 = call i32 @CheckEsc(i32* %18)
  %92 = load i32*, i32** %5, align 8
  %93 = call i32* @QuotedDropList(i32* %92)
  store i32* %93, i32** %9, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32*, i32** %5, align 8
  %97 = call i32* @QuotedContentList(i32* %96)
  store i32* %97, i32** %9, align 8
  %98 = load i64, i64* @DROPEFFECT_MOVE, align 8
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %95, %87
  %100 = load i32*, i32** %9, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @SetFocus(i32* %105)
  %107 = load i32*, i32** %9, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @DROPEFFECT_COPY, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @DMMoveCopyHelper(i32* %107, i32* %18, i32 %111)
  %113 = load i32*, i32** %9, align 8
  %114 = ptrtoint i32* %113 to i32
  %115 = call i32 @LocalFree(i32 %114)
  br label %116

116:                                              ; preds = %102, %99
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %116, %57, %46, %36
  %118 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %12, align 4
  switch i32 %119, label %121 [
    i32 0, label %120
    i32 1, label %120
  ]

120:                                              ; preds = %117, %117
  ret void

121:                                              ; preds = %117
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @GetDlgItem(i32*, i32) #2

declare dso_local i64 @SendMessage(i32*, i32, i32, i32) #2

declare dso_local i32 @GetTreePath(i32, i32*) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i32 @AddBackslash(i32*) #2

declare dso_local i32 @lstrcat(i32*, i32) #2

declare dso_local i32 @MemGetFileName(i32) #2

declare dso_local i32 @CheckEsc(i32*) #2

declare dso_local i32* @QuotedDropList(i32*) #2

declare dso_local i32* @QuotedContentList(i32*) #2

declare dso_local i32 @SetFocus(i32*) #2

declare dso_local i32 @DMMoveCopyHelper(i32*, i32*, i32) #2

declare dso_local i32 @LocalFree(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
