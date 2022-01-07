; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_themehooks.c_ThemeDestroyWndData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_themehooks.c_ThemeDestroyWndData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_4__ = type { i64, i64, i32*, i32*, i64 }

@atWndContext = common dso_local global i32 0, align 4
@g_user32ApiHook = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ThemeDestroyWndData(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @GetWindowThreadProcessId(i32 %5, i64* %4)
  %7 = load i64, i64* %4, align 8
  %8 = call i64 (...) @GetCurrentProcessId()
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %83

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @atWndContext, align 4
  %14 = call i64 @MAKEINTATOM(i32 %13)
  %15 = trunc i64 %14 to i32
  %16 = call i64 @GetPropW(i32 %12, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %83

21:                                               ; preds = %11
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_user32ApiHook, i32 0, i32 0), align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 %27(i32 %28, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @GetWindowTheme(i32 %37)
  %39 = call i32 @CloseThemeData(i64 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @DeleteObject(i32* %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @DeleteObject(i32* %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @CloseThemeData(i64 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @CloseThemeData(i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = call i32 (...) @GetProcessHeap()
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = call i32 @HeapFree(i32 %75, i32 0, %struct.TYPE_4__* %76)
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @atWndContext, align 4
  %80 = call i64 @MAKEINTATOM(i32 %79)
  %81 = trunc i64 %80 to i32
  %82 = call i32 @SetPropW(i32 %78, i32 %81, i32* null)
  br label %83

83:                                               ; preds = %74, %20, %10
  ret void
}

declare dso_local i32 @GetWindowThreadProcessId(i32, i64*) #1

declare dso_local i64 @GetCurrentProcessId(...) #1

declare dso_local i64 @GetPropW(i32, i32) #1

declare dso_local i64 @MAKEINTATOM(i32) #1

declare dso_local i32 @CloseThemeData(i64) #1

declare dso_local i64 @GetWindowTheme(i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetPropW(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
