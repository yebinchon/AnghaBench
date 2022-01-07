; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dsm/extr_sd.c_entry_item_remove.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dsm/extr_sd.c_entry_item_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.entry_item = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @entry_item_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entry_item_remove(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.entry_item*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %44, %2
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i64 @vlc_array_count(i32* %14)
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.entry_item* @vlc_array_item_at_index(i32* %19, i64 %20)
  store %struct.entry_item* %21, %struct.entry_item** %7, align 8
  %22 = load %struct.entry_item*, %struct.entry_item** %7, align 8
  %23 = getelementptr inbounds %struct.entry_item, %struct.entry_item* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = load %struct.entry_item*, %struct.entry_item** %7, align 8
  %30 = getelementptr inbounds %struct.entry_item, %struct.entry_item* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @services_discovery_RemoveItem(%struct.TYPE_5__* %28, i32 %31)
  %33 = load %struct.entry_item*, %struct.entry_item** %7, align 8
  %34 = getelementptr inbounds %struct.entry_item, %struct.entry_item* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @input_item_Release(i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @vlc_array_remove(i32* %38, i64 %39)
  %41 = load %struct.entry_item*, %struct.entry_item** %7, align 8
  %42 = call i32 @free(%struct.entry_item* %41)
  br label %47

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %11

47:                                               ; preds = %27, %11
  ret void
}

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local %struct.entry_item* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i32 @services_discovery_RemoveItem(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @input_item_Release(i32) #1

declare dso_local i32 @vlc_array_remove(i32*, i64) #1

declare dso_local i32 @free(%struct.entry_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
