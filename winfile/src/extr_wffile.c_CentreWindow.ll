; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wffile.c_CentreWindow.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wffile.c_CentreWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GWL_STYLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CentreWindow(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @GetWindowRect(i32* %12, %struct.TYPE_3__* %4)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %20, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @GWL_STYLE, align 4
  %26 = call i32 @GetWindowLongPtr(i32* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @WS_CHILD, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = call i32* (...) @GetDesktopWindow()
  store i32* %32, i32** %6, align 8
  br label %41

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = call i32* @GetParent(i32* %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32* (...) @GetDesktopWindow()
  store i32* %39, i32** %6, align 8
  br label %40

40:                                               ; preds = %38, %33
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @GetWindowRect(i32* %42, %struct.TYPE_3__* %5)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %45, %47
  store i32 %48, i32* %9, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %50, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sdiv i32 %56, 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sdiv i32 %61, 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SWP_NOSIZE, align 4
  %70 = load i32, i32* @SWP_NOZORDER, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @SetWindowPos(i32* %64, i32* null, i32 %66, i32 %68, i32 0, i32 0, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @SetForegroundWindow(i32* %73)
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @GetWindowRect(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @GetWindowLongPtr(i32*, i32) #1

declare dso_local i32* @GetDesktopWindow(...) #1

declare dso_local i32* @GetParent(i32*) #1

declare dso_local i32 @SetWindowPos(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SetForegroundWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
