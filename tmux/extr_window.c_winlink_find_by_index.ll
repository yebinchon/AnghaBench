; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_winlink_find_by_index.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_winlink_find_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winlink = type { i32 }
%struct.winlinks = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"bad index\00", align 1
@winlinks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.winlink* @winlink_find_by_index(%struct.winlinks* %0, i32 %1) #0 {
  %3 = alloca %struct.winlinks*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.winlink, align 4
  store %struct.winlinks* %0, %struct.winlinks** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @fatalx(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.winlink, %struct.winlink* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @winlinks, align 4
  %14 = load %struct.winlinks*, %struct.winlinks** %3, align 8
  %15 = call %struct.winlink* @RB_FIND(i32 %13, %struct.winlinks* %14, %struct.winlink* %5)
  ret %struct.winlink* %15
}

declare dso_local i32 @fatalx(i8*) #1

declare dso_local %struct.winlink* @RB_FIND(i32, %struct.winlinks*, %struct.winlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
