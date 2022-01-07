; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_OLEClipbrd_Initialize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_OLEClipbrd_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32*, i32* }

@theOleClipboard = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@GMEM_DDESHARE = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OLEClipbrd_Initialize() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @register_clipboard_formats()
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @theOleClipboard, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %48, label %6

6:                                                ; preds = %0
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @GetProcessHeap()
  %9 = call %struct.TYPE_5__* @HeapAlloc(i32 %8, i32 0, i32 40)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %1, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  br label %48

13:                                               ; preds = %6
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* @GMEM_DDESHARE, align 4
  %23 = load i32, i32* @GMEM_MOVEABLE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @GlobalAlloc(i32 %24, i32 0)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %13
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = call i32 @HeapFree(i32 %29, i32 0, %struct.TYPE_5__* %30)
  br label %48

32:                                               ; preds = %13
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @CreateStreamOnHGlobal(i32 %33, i32 %34, i32* %36)
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @GlobalFree(i32 %41)
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %45 = call i32 @HeapFree(i32 %43, i32 0, %struct.TYPE_5__* %44)
  br label %48

46:                                               ; preds = %32
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** @theOleClipboard, align 8
  br label %48

48:                                               ; preds = %12, %28, %40, %46, %0
  ret void
}

declare dso_local i32 @register_clipboard_formats(...) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32, i32, i32*) #1

declare dso_local i32 @GlobalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
