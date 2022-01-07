; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_layout.c_toggle_split_layout.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_layout.c_toggle_split_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sway_output = type { i64, i64 }

@L_HORIZ = common dso_local global i32 0, align 4
@L_VERT = common dso_local global i32 0, align 4
@L_NONE = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.sway_output*)* @toggle_split_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toggle_split_layout(i32 %0, i32 %1, %struct.sway_output* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_output*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.sway_output* %2, %struct.sway_output** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @L_HORIZ, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @L_VERT, align 4
  store i32 %12, i32* %4, align 4
  br label %51

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @L_VERT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @L_HORIZ, align 4
  store i32 %18, i32* %4, align 4
  br label %51

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @L_NONE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %19
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @L_NONE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  br label %51

35:                                               ; preds = %25
  %36 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %37 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %40 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @L_VERT, align 4
  store i32 %44, i32* %4, align 4
  br label %51

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* @L_HORIZ, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %43, %31, %23, %17, %11
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
