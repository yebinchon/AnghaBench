; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DSDragScrollSink.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DSDragScrollSink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, i32*, i32* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@IDCW_LISTBOX = common dso_local global i32 0, align 4
@IDCW_TREELISTBOX = common dso_local global i32 0, align 4
@WM_VSCROLL = common dso_local global i32 0, align 4
@SB_LINEUP = common dso_local global i32 0, align 4
@SB_LINEDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSDragScrollSink(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32* @GetMDIChildFromDescendant(i32* %16)
  store i32* %17, i32** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32* @GetMDIChildFromDescendant(i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %46

29:                                               ; preds = %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @GetClientRect(i32* %32, %struct.TYPE_8__* %6)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %38 = ptrtoint i64* %37 to i32
  %39 = call i32 @ClientToScreen(i32* %36, i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 @ClientToScreen(i32* %42, i32 %44)
  br label %46

46:                                               ; preds = %29, %26
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %56, %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load i32*, i32** %5, align 8
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %46
  %67 = load i32*, i32** %4, align 8
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %66, %46
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @GetClientRect(i32* %69, %struct.TYPE_8__* %7)
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %73 = ptrtoint i64* %72 to i32
  %74 = call i32 @ClientToScreen(i32* %71, i32 %73)
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %77 = ptrtoint i32* %76 to i32
  %78 = call i32 @ClientToScreen(i32* %75, i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %68
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %86, %88
  br i1 %89, label %90, label %147

90:                                               ; preds = %84, %68
  %91 = load i32*, i32** %9, align 8
  %92 = call i32* @HasTreeWindow(i32* %91)
  store i32* %92, i32** %10, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32* @HasDirWindow(i32* %93)
  store i32* %94, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %118

97:                                               ; preds = %90
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* @IDCW_LISTBOX, align 4
  %100 = call i32* @GetDlgItem(i32* %98, i32 %99)
  store i32* %100, i32** %12, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @GetClientRect(i32* %104, %struct.TYPE_8__* %13)
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %108 = ptrtoint i64* %107 to i32
  %109 = call i32 @ClientToScreen(i32* %106, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  store i32* null, i32** %12, align 8
  br label %116

116:                                              ; preds = %115, %103
  br label %117

117:                                              ; preds = %116, %97
  br label %118

118:                                              ; preds = %117, %90
  %119 = load i32*, i32** %12, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load i32*, i32** %10, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* @IDCW_TREELISTBOX, align 4
  %127 = call i32* @GetDlgItem(i32* %125, i32 %126)
  store i32* %127, i32** %12, align 8
  br label %128

128:                                              ; preds = %124, %121, %118
  %129 = load i32*, i32** %12, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* @WM_VSCROLL, align 4
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %135, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32, i32* @SB_LINEUP, align 4
  br label %143

141:                                              ; preds = %131
  %142 = load i32, i32* @SB_LINEDOWN, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %145 = call i32 @SendMessage(i32* %132, i32 %133, i32 %144, i64 0)
  br label %146

146:                                              ; preds = %143, %128
  br label %147

147:                                              ; preds = %146, %84
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32* @GetMDIChildFromDescendant(i32*) #1

declare dso_local i32 @GetClientRect(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ClientToScreen(i32*, i32) #1

declare dso_local i32* @HasTreeWindow(i32*) #1

declare dso_local i32* @HasDirWindow(i32*) #1

declare dso_local i32* @GetDlgItem(i32*, i32) #1

declare dso_local i32 @SendMessage(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
