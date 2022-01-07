; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_winlink_shuffle_up.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_winlink_shuffle_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32 }
%struct.winlink = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @winlink_shuffle_up(%struct.session* %0, %struct.winlink* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.session*, align 8
  %5 = alloca %struct.winlink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.session* %0, %struct.session** %4, align 8
  store %struct.winlink* %1, %struct.winlink** %5, align 8
  %8 = load %struct.winlink*, %struct.winlink** %5, align 8
  %9 = icmp eq %struct.winlink* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %61

11:                                               ; preds = %2
  %12 = load %struct.winlink*, %struct.winlink** %5, align 8
  %13 = getelementptr inbounds %struct.winlink, %struct.winlink* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %29, %11
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @INT_MAX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.session*, %struct.session** %4, align 8
  %23 = getelementptr inbounds %struct.session, %struct.session* %22, i32 0, i32 0
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.winlink* @winlink_find_by_index(i32* %23, i32 %24)
  %26 = icmp eq %struct.winlink* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %32

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %17

32:                                               ; preds = %27, %17
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @INT_MAX, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %61

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.session*, %struct.session** %4, align 8
  %44 = getelementptr inbounds %struct.session, %struct.session* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call %struct.winlink* @winlink_find_by_index(i32* %44, i32 %46)
  store %struct.winlink* %47, %struct.winlink** %5, align 8
  %48 = load %struct.session*, %struct.session** %4, align 8
  %49 = load %struct.winlink*, %struct.winlink** %5, align 8
  %50 = load %struct.session*, %struct.session** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @server_link_window(%struct.session* %48, %struct.winlink* %49, %struct.session* %50, i32 %51, i32 0, i32 0, i32* null)
  %53 = load %struct.session*, %struct.session** %4, align 8
  %54 = load %struct.winlink*, %struct.winlink** %5, align 8
  %55 = call i32 @server_unlink_window(%struct.session* %53, %struct.winlink* %54)
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %7, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %36, %10
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.winlink* @winlink_find_by_index(i32*, i32) #1

declare dso_local i32 @server_link_window(%struct.session*, %struct.winlink*, %struct.session*, i32, i32, i32, i32*) #1

declare dso_local i32 @server_unlink_window(%struct.session*, %struct.winlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
