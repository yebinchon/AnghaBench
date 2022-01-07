; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_create_windowed_editor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_create_windowed_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@ES_WANTRETURN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, i32)* @create_windowed_editor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_windowed_editor(i32 %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32* @ME_CreateTextHost(i32 %10, %struct.TYPE_7__* %11, i32 %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.TYPE_6__* @ME_MakeEditor(i32* %19, i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %9, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @ITextHost_Release(i32* %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @GWL_EXSTYLE, align 4
  %31 = call i32 @GetWindowLongW(i32 %29, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @GWL_STYLE, align 4
  %36 = call i32 @GetWindowLongW(i32 %34, i32 %35)
  %37 = load i32, i32* @ES_WANTRETURN, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = ptrtoint %struct.TYPE_6__* %52 to i32
  %54 = call i32 @SetWindowLongPtrW(i32 %51, i32 0, i32 %53)
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %28, %24, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @ME_CreateTextHost(i32, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_6__* @ME_MakeEditor(i32*, i32) #1

declare dso_local i32 @ITextHost_Release(i32*) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
