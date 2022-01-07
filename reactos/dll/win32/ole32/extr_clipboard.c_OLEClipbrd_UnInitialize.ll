; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_OLEClipbrd_UnInitialize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_OLEClipbrd_UnInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }

@theOleClipboard = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@OLEClipbrd_UnInitialize.ole32W = internal constant [6 x i8] c"ole32\00", align 1
@clipbrd_wndclass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OLEClipbrd_UnInitialize() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @theOleClipboard, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  %4 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %41

7:                                                ; preds = %0
  %8 = call i32 @GetModuleHandleW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @OLEClipbrd_UnInitialize.ole32W, i64 0, i64 0))
  store i32 %8, i32* %2, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @IDataObject_AddRef(i64 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = call i32 @set_src_dataobject(%struct.TYPE_5__* %18, i32* null)
  br label %20

20:                                               ; preds = %13, %7
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @DestroyWindow(i64 %28)
  %30 = load i32, i32* @clipbrd_wndclass, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @UnregisterClassW(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @IStream_Release(i32 %36)
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %40 = call i32 @HeapFree(i32 %38, i32 0, %struct.TYPE_5__* %39)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @theOleClipboard, align 8
  br label %41

41:                                               ; preds = %33, %0
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @GetModuleHandleW(i8*) #1

declare dso_local i32 @IDataObject_AddRef(i64) #1

declare dso_local i32 @set_src_dataobject(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i32 @UnregisterClassW(i32, i32) #1

declare dso_local i32 @IStream_Release(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
