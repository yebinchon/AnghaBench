; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_treectl.c_RectTreeItem.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_treectl.c_RectTreeItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@hwndStatus = common dso_local global i64 0, align 8
@SB_SETTEXT = common dso_local global i32 0, align 4
@SBT_NOBORDERS = common dso_local global i32 0, align 4
@szNULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@LB_GETSEL = common dso_local global i32 0, align 4
@hwndDragging = common dso_local global i64 0, align 8
@LB_GETTEXT = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@LB_GETITEMRECT = common dso_local global i32 0, align 4
@dyBorder = common dso_local global i32 0, align 4
@dxText = common dso_local global i32 0, align 4
@dxFolder = common dso_local global i64 0, align 8
@dyBorderx2 = common dso_local global i32 0, align 4
@SST_FORMAT = common dso_local global i32 0, align 4
@SST_RESOURCE = common dso_local global i32 0, align 4
@fShowSourceBitmaps = common dso_local global i64 0, align 8
@IDS_DRAG_COPYING = common dso_local global i64 0, align 8
@IDS_DRAG_MOVING = common dso_local global i64 0, align 8
@COLOR_WINDOW = common dso_local global i32 0, align 4
@COLOR_WINDOWFRAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RectTreeItem(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %57, %48, %26
  %28 = load i64, i64* @hwndStatus, align 8
  %29 = load i32, i32* @SB_SETTEXT, align 4
  %30 = load i32, i32* @SBT_NOBORDERS, align 4
  %31 = or i32 %30, 255
  %32 = load i64, i64* @szNULL, align 8
  %33 = call i64 @SendMessage(i64 %28, i32 %29, i32 %31, i64 %32)
  %34 = load i64, i64* @hwndStatus, align 8
  %35 = call i32 @UpdateWindow(i64 %34)
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %163

37:                                               ; preds = %3
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @LB_GETSEL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @SendMessage(i64 %38, i32 %39, i32 %40, i64 0)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i64, i64* @hwndDragging, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %27

49:                                               ; preds = %44, %37
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @LB_GETTEXT, align 4
  %52 = load i32, i32* %6, align 4
  %53 = ptrtoint %struct.TYPE_15__** %14 to i64
  %54 = call i64 @SendMessage(i64 %50, i32 %51, i32 %52, i64 %53)
  %55 = load i64, i64* @LB_ERR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %27

58:                                               ; preds = %49
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* @LB_GETITEMRECT, align 4
  %61 = load i32, i32* %6, align 4
  %62 = ptrtoint %struct.TYPE_14__* %10 to i64
  %63 = call i64 @SendMessage(i64 %59, i32 %60, i32 %61, i64 %62)
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @GetDC(i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %67 = call i64 @GetRealExtent(%struct.TYPE_15__* %66, i32* null, i32* %23, i32* %8)
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* @dyBorder, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %70
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @GetClientRect(i64 %74, %struct.TYPE_14__* %11)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @dxText, align 4
  %80 = mul nsw i32 %78, %79
  %81 = mul nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %86, %88
  %90 = sub nsw i64 %84, %89
  %91 = sub nsw i64 %82, %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i64 %91, i64* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @dxFolder, align 8
  %96 = add nsw i64 %94, %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %96, %98
  %100 = load i32, i32* @dyBorderx2, align 4
  %101 = mul nsw i32 4, %100
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %99, %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i64 %103, i64* %104, align 8
  %105 = call i32 @IntersectRect(%struct.TYPE_14__* %10, %struct.TYPE_14__* %10, %struct.TYPE_14__* %11)
  %106 = load i64, i64* %7, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %152

108:                                              ; preds = %58
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %110 = call i32 @GetTreePath(%struct.TYPE_15__* %109, i32* %23)
  %111 = call i32 @StripBackslash(i32* %23)
  %112 = load i32, i32* @SBT_NOBORDERS, align 4
  %113 = or i32 %112, 255
  %114 = load i32, i32* @SST_FORMAT, align 4
  %115 = load i32, i32* @SST_RESOURCE, align 4
  %116 = or i32 %114, %115
  %117 = load i64, i64* @fShowSourceBitmaps, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = load i64, i64* @IDS_DRAG_COPYING, align 8
  br label %123

121:                                              ; preds = %108
  %122 = load i64, i64* @IDS_DRAG_MOVING, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i64 [ %120, %119 ], [ %122, %121 ]
  %125 = trunc i64 %124 to i32
  %126 = call i32 @SetStatusText(i32 %113, i32 %116, i32 %125, i32* %23)
  %127 = load i64, i64* @hwndStatus, align 8
  %128 = call i32 @UpdateWindow(i64 %127)
  %129 = load i64, i64* %12, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load i32, i32* @COLOR_WINDOW, align 4
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* @dyBorder, align 4
  %134 = sub nsw i32 0, %133
  %135 = load i32, i32* @dyBorder, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i32 @InflateRect(%struct.TYPE_14__* %10, i32 %134, i32 %136)
  br label %140

138:                                              ; preds = %123
  %139 = load i32, i32* @COLOR_WINDOWFRAME, align 4
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %138, %131
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @GetSysColor(i32 %141)
  %143 = call i32 @CreateSolidBrush(i32 %142)
  store i32 %143, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @FrameRect(i32 %146, %struct.TYPE_14__* %10, i32 %147)
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @DeleteObject(i32 %149)
  br label %151

151:                                              ; preds = %145, %140
  br label %158

152:                                              ; preds = %58
  %153 = load i64, i64* %5, align 8
  %154 = load i64, i64* @TRUE, align 8
  %155 = call i32 @InvalidateRect(i64 %153, %struct.TYPE_14__* %10, i64 %154)
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @UpdateWindow(i64 %156)
  br label %158

158:                                              ; preds = %152, %151
  %159 = load i64, i64* %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @ReleaseDC(i64 %159, i32 %160)
  %162 = load i64, i64* @TRUE, align 8
  store i64 %162, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %163

163:                                              ; preds = %158, %27
  %164 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i64, i64* %4, align 8
  ret i64 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SendMessage(i64, i32, i32, i64) #2

declare dso_local i32 @UpdateWindow(i64) #2

declare dso_local i32 @GetDC(i64) #2

declare dso_local i64 @GetRealExtent(%struct.TYPE_15__*, i32*, i32*, i32*) #2

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_14__*) #2

declare dso_local i32 @IntersectRect(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #2

declare dso_local i32 @GetTreePath(%struct.TYPE_15__*, i32*) #2

declare dso_local i32 @StripBackslash(i32*) #2

declare dso_local i32 @SetStatusText(i32, i32, i32, i32*) #2

declare dso_local i32 @InflateRect(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @CreateSolidBrush(i32) #2

declare dso_local i32 @GetSysColor(i32) #2

declare dso_local i32 @FrameRect(i32, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @DeleteObject(i32) #2

declare dso_local i32 @InvalidateRect(i64, %struct.TYPE_14__*, i64) #2

declare dso_local i32 @ReleaseDC(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
