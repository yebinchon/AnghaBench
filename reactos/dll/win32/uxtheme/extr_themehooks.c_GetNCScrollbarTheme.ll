; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_themehooks.c_GetNCScrollbarTheme.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_themehooks.c_GetNCScrollbarTheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@WS_HSCROLL = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@STAP_ALLOW_NONCLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i32] [i32 83, i32 67, i32 82, i32 79, i32 76, i32 76, i32 66, i32 65, i32 82, i32 0], align 4
@OTD_NONCLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetNCScrollbarTheme(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @WS_HSCROLL, align 4
  %9 = load i32, i32* @WS_VSCROLL, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %53

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_3__* @ThemeGetWndData(i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %53

20:                                               ; preds = %14
  %21 = call i32 (...) @GetThemeAppProperties()
  %22 = load i32, i32* @STAP_ALLOW_NONCLIENT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @CloseThemeData(i32* %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  store i32* null, i32** %3, align 8
  br label %53

38:                                               ; preds = %20
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @OTD_NONCLIENT, align 4
  %46 = call i32* @OpenThemeDataEx(i32 %44, i8* bitcast ([10 x i32]* @.str to i8*), i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %3, align 8
  br label %53

53:                                               ; preds = %49, %37, %19, %13
  %54 = load i32*, i32** %3, align 8
  ret i32* %54
}

declare dso_local %struct.TYPE_3__* @ThemeGetWndData(i32) #1

declare dso_local i32 @GetThemeAppProperties(...) #1

declare dso_local i32 @CloseThemeData(i32*) #1

declare dso_local i32* @OpenThemeDataEx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
