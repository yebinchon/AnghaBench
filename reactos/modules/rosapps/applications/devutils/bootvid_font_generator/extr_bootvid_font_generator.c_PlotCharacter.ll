; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/bootvid_font_generator/extr_bootvid_font_generator.c_PlotCharacter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/bootvid_font_generator/extr_bootvid_font_generator.c_PlotCharacter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"CreateCompatibleBitmap failed with error %lu!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"GetDIBits failed with error %lu!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32, i32*)* @PlotCharacter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PlotCharacter(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [8 x i32], align 16
  %18 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %13, align 4
  store i32* null, i32** %16, align 8
  %20 = bitcast [8 x i32]* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %18, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @WIDTH, align 4
  %23 = load i32, i32* @HEIGHT, align 4
  %24 = call i32* @CreateCompatibleBitmap(i32 %21, i32 %22, i32 %23)
  store i32* %24, i32** %16, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %88

31:                                               ; preds = %6
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %16, align 8
  %34 = call i32* @SelectObject(i32 %32, i32* %33)
  store i32* %34, i32** %14, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @SelectObject(i32 %35, i32* %36)
  store i32* %37, i32** %15, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @RGB(i32 0, i32 0, i32 0)
  %40 = call i32 @SetBkColor(i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @RGB(i32 255, i32 255, i32 255)
  %43 = call i32 @SetTextColor(i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @TextOutA(i32 %44, i32 %45, i32 %46, i32* %11, i32 1)
  %48 = bitcast [8 x i32]* %17 to i32**
  %49 = call i32 @ZeroMemory(i32** %48, i32 32)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 4, i32* %52, align 4
  %53 = load i32, i32* @HEIGHT, align 4
  %54 = sub nsw i32 0, %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @WIDTH, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* @HEIGHT, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %74 = call i32 @GetDIBits(i32 %69, i32* %70, i32 0, i32 %71, i32* %72, %struct.TYPE_5__* %73, i32 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %31
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %76, %31
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = call i32* @SelectObject(i32 %82, i32* %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %15, align 8
  %87 = call i32* @SelectObject(i32 %85, i32* %86)
  br label %88

88:                                               ; preds = %81, %27
  %89 = load i32*, i32** %16, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @DeleteObject(i32* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %13, align 4
  ret i32 %95
}

declare dso_local i32* @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @SelectObject(i32, i32*) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @TextOutA(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ZeroMemory(i32**, i32) #1

declare dso_local i32 @GetDIBits(i32, i32*, i32, i32, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
