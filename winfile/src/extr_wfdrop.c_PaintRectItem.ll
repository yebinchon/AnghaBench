; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_PaintRectItem.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_PaintRectItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@IDCW_LISTBOX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IDCW_TREELISTBOX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@LB_ITEMFROMPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PaintRectItem(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IDCW_LISTBOX, align 4
  %13 = call i32* @GetDlgItem(i32 %11, i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IDCW_TREELISTBOX, align 4
  %22 = call i32* @GetDlgItem(i32 %20, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %120

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ScreenToClient(i32* %40, %struct.TYPE_9__* %7)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @LB_ITEMFROMPOINT, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @MAKELPARAM(i32 %45, i32 %47)
  %49 = call i32 @SendMessage(i32* %42, i32 %43, i32 0, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 65535
  store i32 %51, i32* %6, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %63

56:                                               ; preds = %31
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %120

63:                                               ; preds = %56, %31
  br label %64

64:                                               ; preds = %63, %28
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %90

69:                                               ; preds = %64
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* @FALSE, align 8
  %78 = call i64 @RectTreeItem(i32* %73, i32 %76, i64 %77)
  br label %87

79:                                               ; preds = %69
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* @FALSE, align 8
  %85 = load i64, i64* @FALSE, align 8
  %86 = call i64 @DSRectItem(i32* %80, i32 %83, i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %79, %72
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %64
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = icmp ne %struct.TYPE_8__* %91, null
  br i1 %92, label %93, label %120

93:                                               ; preds = %90
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i64, i64* @TRUE, align 8
  %100 = call i64 @RectTreeItem(i32* %97, i32 %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %96
  br label %119

107:                                              ; preds = %93
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i64, i64* @TRUE, align 8
  %111 = load i64, i64* @FALSE, align 8
  %112 = call i64 @DSRectItem(i32* %108, i32 %109, i64 %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %107
  br label %119

119:                                              ; preds = %118, %106
  br label %120

120:                                              ; preds = %26, %62, %119, %90
  ret void
}

declare dso_local i32* @GetDlgItem(i32, i32) #1

declare dso_local i32 @ScreenToClient(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @SendMessage(i32*, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

declare dso_local i64 @RectTreeItem(i32*, i32, i64) #1

declare dso_local i64 @DSRectItem(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
