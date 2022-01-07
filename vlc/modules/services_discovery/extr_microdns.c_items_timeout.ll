; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_items_timeout.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_items_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discovery_sys = type { i32 }
%struct.item = type { i64, i32, i32 }

@TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.discovery_sys*, i32*, i32*)* @items_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @items_timeout(%struct.discovery_sys* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.discovery_sys*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.item*, align 8
  store %struct.discovery_sys* %0, %struct.discovery_sys** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i1 [ true, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i64 (...) @vlc_tick_now()
  store i64 %19, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %64, %15
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.discovery_sys*, %struct.discovery_sys** %4, align 8
  %23 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %22, i32 0, i32 0
  %24 = call i64 @vlc_array_count(i32* %23)
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %20
  %27 = load %struct.discovery_sys*, %struct.discovery_sys** %4, align 8
  %28 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %27, i32 0, i32 0
  %29 = load i64, i64* %8, align 8
  %30 = call %struct.item* @vlc_array_item_at_index(i32* %28, i64 %29)
  store %struct.item* %30, %struct.item** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.item*, %struct.item** %9, align 8
  %33 = getelementptr inbounds %struct.item, %struct.item* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load i64, i64* @TIMEOUT, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %26
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.item*, %struct.item** %9, align 8
  %44 = getelementptr inbounds %struct.item, %struct.item* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @services_discovery_RemoveItem(i32* %42, i32 %45)
  br label %53

47:                                               ; preds = %38
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.item*, %struct.item** %9, align 8
  %50 = getelementptr inbounds %struct.item, %struct.item* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @vlc_rd_remove_item(i32* %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.discovery_sys*, %struct.discovery_sys** %4, align 8
  %55 = load %struct.item*, %struct.item** %9, align 8
  %56 = call i32 @items_release(%struct.discovery_sys* %54, %struct.item* %55)
  %57 = load %struct.discovery_sys*, %struct.discovery_sys** %4, align 8
  %58 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %57, i32 0, i32 0
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %8, align 8
  %61 = trunc i64 %59 to i32
  %62 = call i32 @vlc_array_remove(i32* %58, i32 %61)
  br label %63

63:                                               ; preds = %53, %26
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %20

67:                                               ; preds = %20
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local %struct.item* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i32 @services_discovery_RemoveItem(i32*, i32) #1

declare dso_local i32 @vlc_rd_remove_item(i32*, i32) #1

declare dso_local i32 @items_release(%struct.discovery_sys*, %struct.item*) #1

declare dso_local i32 @vlc_array_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
