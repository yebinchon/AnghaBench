; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_dispatch_list.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_dispatch_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_node = type { %struct.timer_node* }
%struct.timer_event = type { i32, i32 }
%struct.skynet_message = type { i64, i32*, i32, i64 }

@PTYPE_RESPONSE = common dso_local global i64 0, align 8
@MESSAGE_TYPE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_node*)* @dispatch_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_list(%struct.timer_node* %0) #0 {
  %2 = alloca %struct.timer_node*, align 8
  %3 = alloca %struct.timer_event*, align 8
  %4 = alloca %struct.skynet_message, align 8
  %5 = alloca %struct.timer_node*, align 8
  store %struct.timer_node* %0, %struct.timer_node** %2, align 8
  br label %6

6:                                                ; preds = %30, %1
  %7 = load %struct.timer_node*, %struct.timer_node** %2, align 8
  %8 = getelementptr inbounds %struct.timer_node, %struct.timer_node* %7, i64 1
  %9 = bitcast %struct.timer_node* %8 to %struct.timer_event*
  store %struct.timer_event* %9, %struct.timer_event** %3, align 8
  %10 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %4, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.timer_event*, %struct.timer_event** %3, align 8
  %12 = getelementptr inbounds %struct.timer_event, %struct.timer_event* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %4, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %4, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load i64, i64* @PTYPE_RESPONSE, align 8
  %17 = load i64, i64* @MESSAGE_TYPE_SHIFT, align 8
  %18 = shl i64 %16, %17
  %19 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %4, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load %struct.timer_event*, %struct.timer_event** %3, align 8
  %21 = getelementptr inbounds %struct.timer_event, %struct.timer_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @skynet_context_push(i32 %22, %struct.skynet_message* %4)
  %24 = load %struct.timer_node*, %struct.timer_node** %2, align 8
  store %struct.timer_node* %24, %struct.timer_node** %5, align 8
  %25 = load %struct.timer_node*, %struct.timer_node** %2, align 8
  %26 = getelementptr inbounds %struct.timer_node, %struct.timer_node* %25, i32 0, i32 0
  %27 = load %struct.timer_node*, %struct.timer_node** %26, align 8
  store %struct.timer_node* %27, %struct.timer_node** %2, align 8
  %28 = load %struct.timer_node*, %struct.timer_node** %5, align 8
  %29 = call i32 @skynet_free(%struct.timer_node* %28)
  br label %30

30:                                               ; preds = %6
  %31 = load %struct.timer_node*, %struct.timer_node** %2, align 8
  %32 = icmp ne %struct.timer_node* %31, null
  br i1 %32, label %6, label %33

33:                                               ; preds = %30
  ret void
}

declare dso_local i32 @skynet_context_push(i32, %struct.skynet_message*) #1

declare dso_local i32 @skynet_free(%struct.timer_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
