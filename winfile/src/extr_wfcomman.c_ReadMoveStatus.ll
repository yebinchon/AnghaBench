; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_ReadMoveStatus.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_ReadMoveStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__*)* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32* }

@DVASPECT_CONTENT = common dso_local global i32 0, align 4
@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@CFSTR_PREFERREDDROPEFFECT = common dso_local global i32 0, align 4
@DROPEFFECT_COPY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@DROPEFFECT_MOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadMoveStatus() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca %struct.TYPE_13__, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__, align 4
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 2
  %11 = load i32, i32* @DVASPECT_CONTENT, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 3
  store i32 -1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 4
  %14 = load i32, i32* @TYMED_HGLOBAL, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* @CFSTR_PREFERREDDROPEFFECT, align 4
  %16 = call i32 @RegisterClipboardFormat(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %21 = load i32, i32* @DVASPECT_CONTENT, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  store i32 -1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %24 = load i32, i32* @TYMED_HGLOBAL, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i32, i32* @DROPEFFECT_COPY, align 4
  store i32 %25, i32* %6, align 4
  %26 = call i32 @OleGetClipboard(%struct.TYPE_12__** %1)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__*)*, i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__*)** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %36 = call i64 %34(%struct.TYPE_12__* %35, %struct.TYPE_13__* %4, %struct.TYPE_11__* %5)
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32* @GlobalLock(i32* %45)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DROPEFFECT_COPY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @DROPEFFECT_COPY, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %43
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DROPEFFECT_MOVE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @DROPEFFECT_MOVE, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %54
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @GlobalUnlock(i32* %64)
  %66 = call i32 @ReleaseStgMedium(%struct.TYPE_11__* %5)
  br label %67

67:                                               ; preds = %62, %39, %29, %0
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @RegisterClipboardFormat(i32) #1

declare dso_local i32 @OleGetClipboard(%struct.TYPE_12__**) #1

declare dso_local i32* @GlobalLock(i32*) #1

declare dso_local i32 @GlobalUnlock(i32*) #1

declare dso_local i32 @ReleaseStgMedium(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
