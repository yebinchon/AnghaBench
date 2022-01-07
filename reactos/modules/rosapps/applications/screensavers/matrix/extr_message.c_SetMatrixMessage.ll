; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_message.c_SetMatrixMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_message.c_SetMatrixMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32** }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@MAXMSG_WIDTH = common dso_local global i32 0, align 4
@MAXMSG_HEIGHT = common dso_local global i32 0, align 4
@WHITE_BRUSH = common dso_local global i32 0, align 4
@g_hFont = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@DT_WORDBREAK = common dso_local global i32 0, align 4
@DT_CALCRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetMatrixMessage(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = call i32 @GetDC(i32* null)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @CreateCompatibleDC(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @MAXMSG_WIDTH, align 4
  %19 = load i32, i32* @MAXMSG_HEIGHT, align 4
  %20 = call i32 @CreateBitmap(i32 %18, i32 %19, i32 1, i32 1, i32 0)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @SelectObject(i32 %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ReleaseDC(i32* null, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MAXMSG_HEIGHT, align 4
  %30 = call i32 @SetRect(%struct.TYPE_8__* %8, i32 0, i32 0, i32 %28, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @WHITE_BRUSH, align 4
  %33 = call i32 @GetStockObject(i32 %32)
  %34 = call i32 @FillRect(i32 %31, %struct.TYPE_8__* %8, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @g_hFont, align 4
  %37 = call i32 @SelectObject(i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @DT_CENTER, align 4
  %41 = load i32, i32* @DT_VCENTER, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @DT_WORDBREAK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @DT_CALCRECT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @DrawText(i32 %38, i32* %39, i32 -1, %struct.TYPE_8__* %8, i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %52, %54
  %56 = sub nsw i32 %50, %55
  %57 = sdiv i32 %56, 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %62, %64
  %66 = sub nsw i32 %60, %65
  %67 = sdiv i32 %66, 2
  %68 = call i32 @OffsetRect(%struct.TYPE_8__* %8, i32 %57, i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @DT_CENTER, align 4
  %72 = load i32, i32* @DT_VCENTER, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @DT_WORDBREAK, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @DrawText(i32 %69, i32* %70, i32 -1, %struct.TYPE_8__* %8, i32 %75)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %112, %3
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %108, %83
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @GetPixel(i32 %91, i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %97, i32* %107, align 4
  br label %108

108:                                              ; preds = %90
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %84

111:                                              ; preds = %84
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %77

115:                                              ; preds = %77
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @SelectObject(i32 %116, i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @SelectObject(i32 %119, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @DeleteDC(i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @DeleteObject(i32 %124)
  ret void
}

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @CreateBitmap(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @DrawText(i32, i32*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @GetPixel(i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
