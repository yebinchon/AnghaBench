; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_update_cache.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i64, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"status-position\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_update_cache(%struct.session* %0) #0 {
  %2 = alloca %struct.session*, align 8
  store %struct.session* %0, %struct.session** %2, align 8
  %3 = load %struct.session*, %struct.session** %2, align 8
  %4 = getelementptr inbounds %struct.session, %struct.session* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @options_get_number(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.session*, %struct.session** %2, align 8
  %8 = getelementptr inbounds %struct.session, %struct.session* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load %struct.session*, %struct.session** %2, align 8
  %10 = getelementptr inbounds %struct.session, %struct.session* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.session*, %struct.session** %2, align 8
  %15 = getelementptr inbounds %struct.session, %struct.session* %14, i32 0, i32 1
  store i32 -1, i32* %15, align 8
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.session*, %struct.session** %2, align 8
  %18 = getelementptr inbounds %struct.session, %struct.session* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @options_get_number(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.session*, %struct.session** %2, align 8
  %24 = getelementptr inbounds %struct.session, %struct.session* %23, i32 0, i32 1
  store i32 0, i32* %24, align 8
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.session*, %struct.session** %2, align 8
  %27 = getelementptr inbounds %struct.session, %struct.session* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %13
  ret void
}

declare dso_local i64 @options_get_number(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
