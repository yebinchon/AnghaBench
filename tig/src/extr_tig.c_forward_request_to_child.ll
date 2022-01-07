; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tig.c_forward_request_to_child.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tig.c_forward_request_to_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @forward_request_to_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forward_request_to_child(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @displayed_views()
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = load %struct.view*, %struct.view** %3, align 8
  %9 = call i64 @view_is_displayed(%struct.view* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.view*, %struct.view** %3, align 8
  %13 = getelementptr inbounds %struct.view, %struct.view* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.view*, %struct.view** %3, align 8
  %16 = getelementptr inbounds %struct.view, %struct.view* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcmp(i32 %14, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %11, %7, %2
  %24 = phi i1 [ false, %7 ], [ false, %2 ], [ %22, %11 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i32 @displayed_views(...) #1

declare dso_local i64 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
