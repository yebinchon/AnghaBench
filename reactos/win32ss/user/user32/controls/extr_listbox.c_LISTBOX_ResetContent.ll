; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_ResetContent.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_ResetContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @LISTBOX_ResetContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LISTBOX_ResetContent(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = sub nsw i64 %6, 1
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %15, %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @LISTBOX_DeleteItem(%struct.TYPE_4__* %12, i64 %13)
  br label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %3, align 8
  br label %8

18:                                               ; preds = %8
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @HeapFree(i32 %19, i32 0, i32* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 -1, i32* %33, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  ret void
}

declare dso_local i32 @LISTBOX_DeleteItem(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
