; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_items_exists.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_items_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discovery_sys = type { i32 }
%struct.item = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.discovery_sys*, i8*)* @items_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @items_exists(%struct.discovery_sys* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.discovery_sys*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.item*, align 8
  store %struct.discovery_sys* %0, %struct.discovery_sys** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.discovery_sys*, %struct.discovery_sys** %4, align 8
  %11 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %10, i32 0, i32 0
  %12 = call i64 @vlc_array_count(i32* %11)
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.discovery_sys*, %struct.discovery_sys** %4, align 8
  %16 = getelementptr inbounds %struct.discovery_sys, %struct.discovery_sys* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.item* @vlc_array_item_at_index(i32* %16, i64 %17)
  store %struct.item* %18, %struct.item** %7, align 8
  %19 = load %struct.item*, %struct.item** %7, align 8
  %20 = getelementptr inbounds %struct.item, %struct.item* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strcmp(i32 %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = call i32 (...) @vlc_tick_now()
  %27 = load %struct.item*, %struct.item** %7, align 8
  %28 = getelementptr inbounds %struct.item, %struct.item* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 1, i32* %3, align 4
  br label %34

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %8

33:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local %struct.item* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @vlc_tick_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
