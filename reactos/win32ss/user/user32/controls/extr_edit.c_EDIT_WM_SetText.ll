; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_SetText.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_SetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64 }

@CP_ACP = common dso_local global i32 0, align 4
@EF_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"SetSel may generate UPDATE message whose handler may reset selection.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"<NULL>\0A\00", align 1
@empty_stringW = common dso_local global i32* null, align 8
@EF_MODIFIED = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@EN_UPDATE = common dso_local global i32 0, align 4
@EN_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32)* @EDIT_WM_SetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_WM_SetText(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = ptrtoint i32* %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @CP_ACP, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @MultiByteToWideChar(i32 %18, i32 0, i32 %19, i32 -1, i32* null, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32* @HeapAlloc(i32 %21, i32 0, i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %15
  %30 = load i32, i32* @CP_ACP, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @MultiByteToWideChar(i32 %30, i32 0, i32 %31, i32 -1, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %15
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %5, align 8
  br label %37

37:                                               ; preds = %35, %12, %3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @EF_UPDATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @ERR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %37
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @EDIT_EM_SetSel(%struct.TYPE_9__* %47, i32 0, i32 -1, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @debugstr_w(i32* %53)
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_9__* %56, i32 %57, i32* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %52
  %65 = call i32 (...) @GetProcessHeap()
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @HeapFree(i32 %65, i32 0, i32* %66)
  br label %68

68:                                               ; preds = %64, %52
  br label %77

69:                                               ; preds = %46
  %70 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = load i32*, i32** @empty_stringW, align 8
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_9__* %71, i32 %72, i32* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %69, %68
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @EF_MODIFIED, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 @EDIT_EM_SetSel(%struct.TYPE_9__* %86, i32 0, i32 0, i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ES_MULTILINE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %77
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = load i32, i32* @EN_UPDATE, align 4
  %103 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_9__* %101, i32 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = load i32, i32* @EN_CHANGE, align 4
  %106 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_9__* %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %95, %77
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__* %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_9__* %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_9__* %112)
  ret void
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @EDIT_EM_ReplaceSel(%struct.TYPE_9__*, i32, i32*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__*) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_9__*) #1

declare dso_local i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
