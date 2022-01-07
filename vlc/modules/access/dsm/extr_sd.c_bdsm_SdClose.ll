; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dsm/extr_sd.c_bdsm_SdClose.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dsm/extr_sd.c_bdsm_SdClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.entry_item* }
%struct.entry_item = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdsm_SdClose(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.entry_item*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.entry_item*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.entry_item*, %struct.entry_item** %10, align 8
  store %struct.entry_item* %11, %struct.entry_item** %4, align 8
  %12 = load %struct.entry_item*, %struct.entry_item** %4, align 8
  %13 = icmp eq %struct.entry_item* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.entry_item*, %struct.entry_item** %4, align 8
  %17 = getelementptr inbounds %struct.entry_item, %struct.entry_item* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.entry_item*, %struct.entry_item** %4, align 8
  %22 = getelementptr inbounds %struct.entry_item, %struct.entry_item* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @netbios_ns_discover_stop(i64 %23)
  %25 = load %struct.entry_item*, %struct.entry_item** %4, align 8
  %26 = getelementptr inbounds %struct.entry_item, %struct.entry_item* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @netbios_ns_destroy(i64 %27)
  br label %29

29:                                               ; preds = %20, %15
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.entry_item*, %struct.entry_item** %4, align 8
  %33 = getelementptr inbounds %struct.entry_item, %struct.entry_item* %32, i32 0, i32 0
  %34 = call i64 @vlc_array_count(i32* %33)
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.entry_item*, %struct.entry_item** %4, align 8
  %38 = getelementptr inbounds %struct.entry_item, %struct.entry_item* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call %struct.entry_item* @vlc_array_item_at_index(i32* %38, i64 %39)
  store %struct.entry_item* %40, %struct.entry_item** %6, align 8
  %41 = load %struct.entry_item*, %struct.entry_item** %6, align 8
  %42 = getelementptr inbounds %struct.entry_item, %struct.entry_item* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @input_item_Release(i32 %43)
  %45 = load %struct.entry_item*, %struct.entry_item** %6, align 8
  %46 = call i32 @free(%struct.entry_item* %45)
  br label %47

47:                                               ; preds = %36
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %30

50:                                               ; preds = %30
  %51 = load %struct.entry_item*, %struct.entry_item** %4, align 8
  %52 = getelementptr inbounds %struct.entry_item, %struct.entry_item* %51, i32 0, i32 0
  %53 = call i32 @vlc_array_clear(i32* %52)
  %54 = load %struct.entry_item*, %struct.entry_item** %4, align 8
  %55 = call i32 @free(%struct.entry_item* %54)
  br label %56

56:                                               ; preds = %50, %14
  ret void
}

declare dso_local i32 @netbios_ns_discover_stop(i64) #1

declare dso_local i32 @netbios_ns_destroy(i64) #1

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local %struct.entry_item* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i32 @input_item_Release(i32) #1

declare dso_local i32 @free(%struct.entry_item*) #1

declare dso_local i32 @vlc_array_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
