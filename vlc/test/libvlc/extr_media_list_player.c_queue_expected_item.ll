; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_queue_expected_item.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_queue_expected_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check_items_order_data = type { i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check_items_order_data*, i8*)* @queue_expected_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_expected_item(%struct.check_items_order_data* %0, i8* %1) #0 {
  %3 = alloca %struct.check_items_order_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.check_items_order_data* %0, %struct.check_items_order_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.check_items_order_data*, %struct.check_items_order_data** %3, align 8
  %6 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 16
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.check_items_order_data*, %struct.check_items_order_data** %3, align 8
  %13 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %12, i32 0, i32 1
  %14 = load i8**, i8*** %13, align 8
  %15 = load %struct.check_items_order_data*, %struct.check_items_order_data** %3, align 8
  %16 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %14, i64 %18
  store i8* %11, i8** %19, align 8
  %20 = load %struct.check_items_order_data*, %struct.check_items_order_data** %3, align 8
  %21 = getelementptr inbounds %struct.check_items_order_data, %struct.check_items_order_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
