; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_add_node.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer = type { i64, i32**, i32* }
%struct.timer_node = type { i64 }

@TIME_NEAR_MASK = common dso_local global i64 0, align 8
@TIME_NEAR = common dso_local global i64 0, align 8
@TIME_LEVEL_SHIFT = common dso_local global i64 0, align 8
@TIME_NEAR_SHIFT = common dso_local global i32 0, align 4
@TIME_LEVEL_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer*, %struct.timer_node*)* @add_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_node(%struct.timer* %0, %struct.timer_node* %1) #0 {
  %3 = alloca %struct.timer*, align 8
  %4 = alloca %struct.timer_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.timer* %0, %struct.timer** %3, align 8
  store %struct.timer_node* %1, %struct.timer_node** %4, align 8
  %9 = load %struct.timer_node*, %struct.timer_node** %4, align 8
  %10 = getelementptr inbounds %struct.timer_node, %struct.timer_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.timer*, %struct.timer** %3, align 8
  %13 = getelementptr inbounds %struct.timer, %struct.timer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @TIME_NEAR_MASK, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @TIME_NEAR_MASK, align 8
  %20 = or i64 %18, %19
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.timer*, %struct.timer** %3, align 8
  %24 = getelementptr inbounds %struct.timer, %struct.timer* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @TIME_NEAR_MASK, align 8
  %28 = and i64 %26, %27
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load %struct.timer_node*, %struct.timer_node** %4, align 8
  %31 = call i32 @link(i32* %29, %struct.timer_node* %30)
  br label %79

32:                                               ; preds = %2
  %33 = load i64, i64* @TIME_NEAR, align 8
  %34 = load i64, i64* @TIME_LEVEL_SHIFT, align 8
  %35 = shl i64 %33, %34
  store i64 %35, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %54, %32
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %41, 1
  %43 = or i64 %40, %42
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %45, 1
  %47 = or i64 %44, %46
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %57

50:                                               ; preds = %39
  %51 = load i64, i64* @TIME_LEVEL_SHIFT, align 8
  %52 = load i64, i64* %8, align 8
  %53 = shl i64 %52, %51
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %36

57:                                               ; preds = %49, %36
  %58 = load %struct.timer*, %struct.timer** %3, align 8
  %59 = getelementptr inbounds %struct.timer, %struct.timer* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* @TIME_NEAR_SHIFT, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @TIME_LEVEL_SHIFT, align 8
  %71 = mul i64 %69, %70
  %72 = add i64 %67, %71
  %73 = lshr i64 %65, %72
  %74 = load i64, i64* @TIME_LEVEL_MASK, align 8
  %75 = and i64 %73, %74
  %76 = getelementptr inbounds i32, i32* %64, i64 %75
  %77 = load %struct.timer_node*, %struct.timer_node** %4, align 8
  %78 = call i32 @link(i32* %76, %struct.timer_node* %77)
  br label %79

79:                                               ; preds = %57, %22
  ret void
}

declare dso_local i32 @link(i32*, %struct.timer_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
