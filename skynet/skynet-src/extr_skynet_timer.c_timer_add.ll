; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_timer_add.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_timer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer = type { i64 }
%struct.timer_node = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer*, i8*, i64, i32)* @timer_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_add(%struct.timer* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.timer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timer_node*, align 8
  store %struct.timer* %0, %struct.timer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = add i64 8, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @skynet_malloc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.timer_node*
  store %struct.timer_node* %14, %struct.timer_node** %9, align 8
  %15 = load %struct.timer_node*, %struct.timer_node** %9, align 8
  %16 = getelementptr inbounds %struct.timer_node, %struct.timer_node* %15, i64 1
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @memcpy(%struct.timer_node* %16, i8* %17, i64 %18)
  %20 = load %struct.timer*, %struct.timer** %5, align 8
  %21 = call i32 @SPIN_LOCK(%struct.timer* %20)
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.timer*, %struct.timer** %5, align 8
  %25 = getelementptr inbounds %struct.timer, %struct.timer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.timer_node*, %struct.timer_node** %9, align 8
  %29 = getelementptr inbounds %struct.timer_node, %struct.timer_node* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.timer*, %struct.timer** %5, align 8
  %31 = load %struct.timer_node*, %struct.timer_node** %9, align 8
  %32 = call i32 @add_node(%struct.timer* %30, %struct.timer_node* %31)
  %33 = load %struct.timer*, %struct.timer** %5, align 8
  %34 = call i32 @SPIN_UNLOCK(%struct.timer* %33)
  ret void
}

declare dso_local i64 @skynet_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.timer_node*, i8*, i64) #1

declare dso_local i32 @SPIN_LOCK(%struct.timer*) #1

declare dso_local i32 @add_node(%struct.timer*, %struct.timer_node*) #1

declare dso_local i32 @SPIN_UNLOCK(%struct.timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
