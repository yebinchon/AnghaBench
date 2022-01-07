; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_TEXT_DrawUnderscore.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_TEXT_DrawUnderscore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@PS_SOLID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32, %struct.TYPE_7__*)* @TEXT_DrawUnderscore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TEXT_DrawUnderscore(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @GetTextExtentPointW(i32 %18, i32* %19, i32 %20, %struct.TYPE_6__* %15)
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @GetTextExtentPointW(i32 %26, i32* %27, i32 %29, %struct.TYPE_6__* %15)
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %31, %33
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %6
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %62, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %50, %44, %38
  br label %105

63:                                               ; preds = %56
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %83, %6
  %85 = load i32, i32* @PS_SOLID, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @GetTextColor(i32 %86)
  %88 = call i32 @CreatePen(i32 %85, i32 1, i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @SelectObject(i32 %89, i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @MoveToEx(i32 %92, i32 %93, i32 %94, i32* null)
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @LineTo(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @SelectObject(i32 %100, i32 %101)
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @DeleteObject(i32 %103)
  br label %105

105:                                              ; preds = %84, %62
  ret void
}

declare dso_local i32 @GetTextExtentPointW(i32, i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @CreatePen(i32, i32, i32) #1

declare dso_local i32 @GetTextColor(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @MoveToEx(i32, i32, i32, i32*) #1

declare dso_local i32 @LineTo(i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
