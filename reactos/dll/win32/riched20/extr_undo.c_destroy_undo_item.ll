; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_undo.c_destroy_undo_item.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_undo.c_destroy_undo_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.undo_item = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.undo_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.undo_item*)* @destroy_undo_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_undo_item(%struct.undo_item* %0) #0 {
  %2 = alloca %struct.undo_item*, align 8
  store %struct.undo_item* %0, %struct.undo_item** %2, align 8
  %3 = load %struct.undo_item*, %struct.undo_item** %2, align 8
  %4 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %26 [
    i32 129, label %6
    i32 128, label %19
  ]

6:                                                ; preds = %1
  %7 = load %struct.undo_item*, %struct.undo_item** %2, align 8
  %8 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.undo_item*, %struct.undo_item** %10, align 8
  %12 = call i32 @heap_free(%struct.undo_item* %11)
  %13 = load %struct.undo_item*, %struct.undo_item** %2, align 8
  %14 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ME_ReleaseStyle(i32 %17)
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.undo_item*, %struct.undo_item** %2, align 8
  %21 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ME_DestroyString(i32 %24)
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %19, %6
  %28 = load %struct.undo_item*, %struct.undo_item** %2, align 8
  %29 = call i32 @heap_free(%struct.undo_item* %28)
  ret void
}

declare dso_local i32 @heap_free(%struct.undo_item*) #1

declare dso_local i32 @ME_ReleaseStyle(i32) #1

declare dso_local i32 @ME_DestroyString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
