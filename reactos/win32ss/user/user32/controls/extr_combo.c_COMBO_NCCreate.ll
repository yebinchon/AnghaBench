; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_NCCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_NCCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@CBS_OWNERDRAWFIXED = common dso_local global i32 0, align 4
@CBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@CBS_HASSTRINGS = common dso_local global i32 0, align 4
@WS_EX_NOPARENTNOTIFY = common dso_local global i32 0, align 4
@CBF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"[%p], style = %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @COMBO_NCCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBO_NCCreate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i64 (...) @COMBO_Init()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %84

9:                                                ; preds = %2
  %10 = call i32 (...) @GetProcessHeap()
  %11 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %12 = call %struct.TYPE_5__* @HeapAlloc(i32 %10, i32 %11, i32 4)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %84

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = ptrtoint %struct.TYPE_5__* %19 to i32
  %21 = call i32 @SetWindowLongPtrW(i32 %18, i32 0, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @WS_BORDER, align 4
  %24 = load i32, i32* @WS_HSCROLL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WS_VSCROLL, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %22, %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @GWL_STYLE, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @WS_BORDER, align 4
  %36 = load i32, i32* @WS_HSCROLL, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @WS_VSCROLL, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %34, %40
  %42 = call i32 @SetWindowLongPtrW(i32 %32, i32 %33, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @GWL_EXSTYLE, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @GWL_EXSTYLE, align 4
  %47 = call i32 @GetWindowLongPtrW(i32 %45, i32 %46)
  %48 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = call i32 @SetWindowLongPtrW(i32 %43, i32 %44, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @CBS_OWNERDRAWFIXED, align 4
  %54 = load i32, i32* @CBS_OWNERDRAWVARIABLE, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %14
  %59 = load i32, i32* @CBS_HASSTRINGS, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %14
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @GWL_EXSTYLE, align 4
  %67 = call i32 @GetWindowLongPtrW(i32 %65, i32 %66)
  %68 = load i32, i32* @WS_EX_NOPARENTNOTIFY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @CBF_NOTIFY, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %64
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %78, i32 %81)
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %3, align 4
  br label %86

84:                                               ; preds = %9, %2
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %77
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @COMBO_Init(...) #1

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
