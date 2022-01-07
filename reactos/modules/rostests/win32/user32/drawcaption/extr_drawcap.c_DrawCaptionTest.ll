; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/user32/drawcaption/extr_drawcap.c_DrawCaptionTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/user32/drawcaption/extr_drawcap.c_DrawCaptionTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i32] [i32 68, i32 67, i32 95, i32 84, i32 69, i32 88, i32 84, i32 58, i32 0], align 4
@DC_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i32] [i32 68, i32 67, i32 95, i32 84, i32 69, i32 88, i32 84, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 65, i32 67, i32 84, i32 73, i32 86, i32 69, i32 58, i32 0], align 4
@DC_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i32] [i32 68, i32 67, i32 95, i32 84, i32 69, i32 88, i32 84, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 73, i32 67, i32 79, i32 78, i32 58, i32 0], align 4
@DC_ICON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i32] [i32 68, i32 67, i32 95, i32 84, i32 69, i32 88, i32 84, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 65, i32 67, i32 84, i32 73, i32 86, i32 69, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 73, i32 67, i32 79, i32 78, i32 58, i32 0], align 4
@.str.4 = private unnamed_addr constant [23 x i32] [i32 68, i32 67, i32 95, i32 84, i32 69, i32 88, i32 84, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 73, i32 78, i32 66, i32 85, i32 84, i32 84, i32 79, i32 78, i32 58, i32 0], align 4
@DC_INBUTTON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i32] [i32 68, i32 67, i32 95, i32 84, i32 69, i32 88, i32 84, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 65, i32 67, i32 84, i32 73, i32 86, i32 69, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 73, i32 78, i32 66, i32 85, i32 84, i32 84, i32 79, i32 78, i32 58, i32 0], align 4
@.str.6 = private unnamed_addr constant [33 x i32] [i32 68, i32 67, i32 95, i32 84, i32 69, i32 88, i32 84, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 73, i32 67, i32 79, i32 78, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 73, i32 78, i32 66, i32 85, i32 84, i32 84, i32 79, i32 78, i32 58, i32 0], align 4
@.str.7 = private unnamed_addr constant [45 x i32] [i32 68, i32 67, i32 95, i32 84, i32 69, i32 88, i32 84, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 65, i32 67, i32 84, i32 73, i32 86, i32 69, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 73, i32 67, i32 79, i32 78, i32 32, i32 124, i32 32, i32 68, i32 67, i32 95, i32 73, i32 78, i32 66, i32 85, i32 84, i32 84, i32 79, i32 78, i32 58, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DrawCaptionTest(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @GetClientRect(i32 %11, %struct.TYPE_4__* %10)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 30, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 10, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 10
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32 10, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @DC_TEXT, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @CapTest(i32 %19, i32 %20, %struct.TYPE_4__* %10, i8* bitcast ([9 x i32]* @.str to i8*), i32 %21, i32* %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DC_TEXT, align 4
  %28 = load i32, i32* @DC_ACTIVE, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @CapTest(i32 %25, i32 %26, %struct.TYPE_4__* %10, i8* bitcast ([21 x i32]* @.str.1 to i8*), i32 %29, i32* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DC_TEXT, align 4
  %36 = load i32, i32* @DC_ICON, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @CapTest(i32 %33, i32 %34, %struct.TYPE_4__* %10, i8* bitcast ([19 x i32]* @.str.2 to i8*), i32 %37, i32* %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @DC_TEXT, align 4
  %44 = load i32, i32* @DC_ACTIVE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @DC_ICON, align 4
  %47 = or i32 %45, %46
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @CapTest(i32 %41, i32 %42, %struct.TYPE_4__* %10, i8* bitcast ([31 x i32]* @.str.3 to i8*), i32 %47, i32* %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @DC_TEXT, align 4
  %54 = load i32, i32* @DC_INBUTTON, align 4
  %55 = or i32 %53, %54
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @CapTest(i32 %51, i32 %52, %struct.TYPE_4__* %10, i8* bitcast ([23 x i32]* @.str.4 to i8*), i32 %55, i32* %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @DC_TEXT, align 4
  %62 = load i32, i32* @DC_ACTIVE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @DC_INBUTTON, align 4
  %65 = or i32 %63, %64
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @CapTest(i32 %59, i32 %60, %struct.TYPE_4__* %10, i8* bitcast ([35 x i32]* @.str.5 to i8*), i32 %65, i32* %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @DC_TEXT, align 4
  %72 = load i32, i32* @DC_ICON, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @DC_INBUTTON, align 4
  %75 = or i32 %73, %74
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @CapTest(i32 %69, i32 %70, %struct.TYPE_4__* %10, i8* bitcast ([33 x i32]* @.str.6 to i8*), i32 %75, i32* %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @DC_TEXT, align 4
  %82 = load i32, i32* @DC_ACTIVE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @DC_ICON, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @DC_INBUTTON, align 4
  %87 = or i32 %85, %86
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @CapTest(i32 %79, i32 %80, %struct.TYPE_4__* %10, i8* bitcast ([45 x i32]* @.str.7 to i8*), i32 %87, i32* %88, i32 %89)
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @CapTest(i32, i32, %struct.TYPE_4__*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
