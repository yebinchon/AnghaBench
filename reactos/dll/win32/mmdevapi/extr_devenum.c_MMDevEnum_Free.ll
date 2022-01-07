; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevEnum_Free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_MMDevEnum_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMDevice_count = common dso_local global i64 0, align 8
@MMDevice_head = common dso_local global i32* null, align 8
@key_render = common dso_local global i32* null, align 8
@key_capture = common dso_local global i32* null, align 8
@MMDevEnumerator = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MMDevEnum_Free() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load i64, i64* @MMDevice_count, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load i32*, i32** @MMDevice_head, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @MMDevice_Destroy(i32 %7)
  br label %1

9:                                                ; preds = %1
  %10 = load i32*, i32** @key_render, align 8
  %11 = call i32 @RegCloseKey(i32* %10)
  %12 = load i32*, i32** @key_capture, align 8
  %13 = call i32 @RegCloseKey(i32* %12)
  store i32* null, i32** @key_capture, align 8
  store i32* null, i32** @key_render, align 8
  %14 = call i32 (...) @GetProcessHeap()
  %15 = load i32*, i32** @MMDevEnumerator, align 8
  %16 = call i32 @HeapFree(i32 %14, i32 0, i32* %15)
  store i32* null, i32** @MMDevEnumerator, align 8
  ret void
}

declare dso_local i32 @MMDevice_Destroy(i32) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
