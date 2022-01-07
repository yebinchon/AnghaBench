; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_get_window_attributes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_get_window_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_attributes = type { i32, i32, i32, i32, i32, i64* }

@GWL_STYLE = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WM_NCHITTEST = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i64 0, align 8
@WS_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Button\00", align 1
@BS_TYPEMASK = common dso_local global i64 0, align 8
@BS_GROUPBOX = common dso_local global i64 0, align 8
@HTTRANSPARENT = common dso_local global i64 0, align 8
@WS_EX_TRANSPARENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.window_attributes*)* @get_window_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_window_attributes(i32 %0, %struct.window_attributes* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.window_attributes*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.window_attributes* %1, %struct.window_attributes** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @GWL_STYLE, align 4
  %10 = call i64 @GetWindowLongA(i32 %8, i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GWL_EXSTYLE, align 4
  %13 = call i64 @GetWindowLongA(i32 %11, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.window_attributes*, %struct.window_attributes** %4, align 8
  %15 = getelementptr inbounds %struct.window_attributes, %struct.window_attributes* %14, i32 0, i32 5
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.window_attributes*, %struct.window_attributes** %4, align 8
  %20 = getelementptr inbounds %struct.window_attributes, %struct.window_attributes* %19, i32 0, i32 5
  %21 = load i64*, i64** %20, align 8
  %22 = call i32 @GetClassNameA(i32 %18, i64* %21, i32 8)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @WM_NCHITTEST, align 4
  %25 = call i64 @SendMessageA(i32 %23, i32 %24, i32 0, i32 0)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @WS_VISIBLE, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load %struct.window_attributes*, %struct.window_attributes** %4, align 8
  %32 = getelementptr inbounds %struct.window_attributes, %struct.window_attributes* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @WS_DISABLED, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %struct.window_attributes*, %struct.window_attributes** %4, align 8
  %39 = getelementptr inbounds %struct.window_attributes, %struct.window_attributes* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.window_attributes*, %struct.window_attributes** %4, align 8
  %41 = getelementptr inbounds %struct.window_attributes, %struct.window_attributes* %40, i32 0, i32 5
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @lstrcmpiA(i64* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %2
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @BS_TYPEMASK, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* @BS_GROUPBOX, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %45, %2
  %52 = phi i1 [ false, %2 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = load %struct.window_attributes*, %struct.window_attributes** %4, align 8
  %55 = getelementptr inbounds %struct.window_attributes, %struct.window_attributes* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @HTTRANSPARENT, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load %struct.window_attributes*, %struct.window_attributes** %4, align 8
  %61 = getelementptr inbounds %struct.window_attributes, %struct.window_attributes* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @WS_EX_TRANSPARENT, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load %struct.window_attributes*, %struct.window_attributes** %4, align 8
  %68 = getelementptr inbounds %struct.window_attributes, %struct.window_attributes* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  ret void
}

declare dso_local i64 @GetWindowLongA(i32, i32) #1

declare dso_local i32 @GetClassNameA(i32, i64*, i32) #1

declare dso_local i64 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @lstrcmpiA(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
