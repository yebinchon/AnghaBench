; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DSDragLoop.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DSDragLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@hwndGlobalSink = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@VK_CONTROL = common dso_local global i32 0, align 4
@VK_MENU = common dso_local global i32 0, align 4
@VK_SHIFT = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4
@FS_GETDRIVE = common dso_local global i32 0, align 4
@hAppInstance = common dso_local global i32 0, align 4
@iCurDrag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSDragLoop(i64 %0, i64 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* @hwndGlobalSink, align 8
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %131

21:                                               ; preds = %3
  %22 = load i32, i32* @VK_CONTROL, align 4
  %23 = call i64 @GetKeyState(i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %8, align 4
  br label %131

27:                                               ; preds = %21
  %28 = load i32, i32* @VK_MENU, align 4
  %29 = call i64 @GetKeyState(i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @VK_SHIFT, align 4
  %33 = call i64 @GetKeyState(i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %8, align 4
  br label %131

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @GetMDIChildFromDescendant(i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %12, align 4
  br label %131

54:                                               ; preds = %47
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @LB_GETTEXT, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = ptrtoint %struct.TYPE_5__** %9 to i64
  %61 = call i64 @SendMessage(i64 %55, i32 %56, i64 %59, i64 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = icmp ne %struct.TYPE_5__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ATTR_DIR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %64, %54
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %12, align 4
  br label %131

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %37
  %76 = load i64, i64* %10, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @HasDirWindow(i64 %79)
  store i64 %80, i64* %11, align 8
  br label %82

81:                                               ; preds = %75
  store i64 0, i64* %11, align 8
  br label %82

82:                                               ; preds = %81, %78
  %83 = load i64, i64* %11, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %82
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @GetParent(i64 %89)
  %91 = icmp eq i64 %86, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %85
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, -1
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @LB_GETTEXT, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = ptrtoint %struct.TYPE_5__** %9 to i64
  %106 = call i64 @SendMessage(i64 %100, i32 %101, i64 %104, i64 %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %108 = icmp ne %struct.TYPE_5__* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %97
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %111 = call i32 @MemGetFileName(%struct.TYPE_5__* %110)
  %112 = call i64 @IsProgramFile(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %131

115:                                              ; preds = %109, %97
  br label %116

116:                                              ; preds = %115, %92
  br label %117

117:                                              ; preds = %116, %85, %82
  %118 = load i64, i64* %5, align 8
  %119 = call i64 @GetParent(i64 %118)
  %120 = load i32, i32* @FS_GETDRIVE, align 4
  %121 = call i64 @SendMessage(i64 %119, i32 %120, i64 0, i64 0)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @GetDrive(i64 %124, i32 %127)
  %129 = icmp ne i64 %121, %128
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %117, %114, %71, %52, %35, %25, %20
  %132 = load i64, i64* %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @ShowItemBitmaps(i64 %132, i32 %133)
  %135 = load i64, i64* %6, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* @hAppInstance, align 4
  %142 = load i32, i32* @iCurDrag, align 4
  %143 = and i32 %142, -2
  %144 = call i64 @MAKEINTRESOURCE(i32 %143)
  %145 = call i32 @LoadCursor(i32 %141, i64 %144)
  %146 = call i32 @SetCursor(i32 %145)
  br label %150

147:                                              ; preds = %137
  %148 = call i32 (...) @GetMoveCopyCursor()
  %149 = call i32 @SetCursor(i32 %148)
  br label %150

150:                                              ; preds = %147, %140
  br label %151

151:                                              ; preds = %150, %131
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i64 @GetKeyState(i32) #1

declare dso_local i64 @GetMDIChildFromDescendant(i64) #1

declare dso_local i64 @SendMessage(i64, i32, i64, i64) #1

declare dso_local i64 @HasDirWindow(i64) #1

declare dso_local i64 @GetParent(i64) #1

declare dso_local i64 @IsProgramFile(i32) #1

declare dso_local i32 @MemGetFileName(%struct.TYPE_5__*) #1

declare dso_local i64 @GetDrive(i64, i32) #1

declare dso_local i32 @ShowItemBitmaps(i64, i32) #1

declare dso_local i32 @SetCursor(i32) #1

declare dso_local i32 @LoadCursor(i32, i64) #1

declare dso_local i64 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @GetMoveCopyCursor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
