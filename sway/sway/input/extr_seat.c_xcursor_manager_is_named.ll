; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_xcursor_manager_is_named.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_xcursor_manager_is_named.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_xcursor_manager = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlr_xcursor_manager*, i8*)* @xcursor_manager_is_named to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcursor_manager_is_named(%struct.wlr_xcursor_manager* %0, i8* %1) #0 {
  %3 = alloca %struct.wlr_xcursor_manager*, align 8
  %4 = alloca i8*, align 8
  store %struct.wlr_xcursor_manager* %0, %struct.wlr_xcursor_manager** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.wlr_xcursor_manager*, %struct.wlr_xcursor_manager** %3, align 8
  %6 = getelementptr inbounds %struct.wlr_xcursor_manager, %struct.wlr_xcursor_manager* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %9, %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.wlr_xcursor_manager*, %struct.wlr_xcursor_manager** %3, align 8
  %17 = getelementptr inbounds %struct.wlr_xcursor_manager, %struct.wlr_xcursor_manager* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.wlr_xcursor_manager*, %struct.wlr_xcursor_manager** %3, align 8
  %23 = getelementptr inbounds %struct.wlr_xcursor_manager, %struct.wlr_xcursor_manager* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @strcmp(i8* %21, i64 %24)
  %26 = icmp eq i64 %25, 0
  br label %27

27:                                               ; preds = %20, %15, %12
  %28 = phi i1 [ false, %15 ], [ false, %12 ], [ %26, %20 ]
  br label %29

29:                                               ; preds = %27, %9
  %30 = phi i1 [ true, %9 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
