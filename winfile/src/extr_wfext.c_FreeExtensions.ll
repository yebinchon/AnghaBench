; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfext.c_FreeExtensions.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfext.c_FreeExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 (i32*, i32, i64)* }

@hwndFrame = common dso_local global i32 0, align 4
@IDM_EXTENSIONS = common dso_local global i32 0, align 4
@iNumExtensions = common dso_local global i64 0, align 8
@extensions = common dso_local global %struct.TYPE_2__* null, align 8
@FMEVENT_UNLOAD = common dso_local global i32 0, align 4
@MF_BYPOSITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FreeExtensions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @FreeToolbarExtensions()
  %6 = load i32, i32* @hwndFrame, align 4
  %7 = call i32 @GetMenu(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @IDM_EXTENSIONS, align 4
  %9 = call i32 @MapIDMToMenuPos(i32 %8)
  store i32 %9, i32* %4, align 4
  store i64 0, i64* %2, align 8
  br label %10

10:                                               ; preds = %33, %0
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @iNumExtensions, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @extensions, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32 (i32*, i32, i64)*, i32 (i32*, i32, i64)** %18, align 8
  %20 = load i32, i32* @FMEVENT_UNLOAD, align 4
  %21 = call i32 %19(i32* null, i32 %20, i64 0)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MF_BYPOSITION, align 4
  %25 = call i32 @DeleteMenu(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @extensions, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @FreeLibrary(i32 %31)
  br label %33

33:                                               ; preds = %14
  %34 = load i64, i64* %2, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %2, align 8
  br label %10

36:                                               ; preds = %10
  store i64 0, i64* @iNumExtensions, align 8
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @FreeToolbarExtensions(...) #1

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @MapIDMToMenuPos(i32) #1

declare dso_local i32 @DeleteMenu(i32, i32, i32) #1

declare dso_local i32 @FreeLibrary(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
