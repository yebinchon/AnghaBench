; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_grep_refs.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_grep_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.view_column = type { i32 }
%struct.ref = type { i32, %struct.ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.view_column*, %struct.ref*)* @grep_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_refs(%struct.view* %0, %struct.view_column* %1, %struct.ref* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.view_column*, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.view_column* %1, %struct.view_column** %6, align 8
  store %struct.ref* %2, %struct.ref** %7, align 8
  br label %9

9:                                                ; preds = %23, %3
  %10 = load %struct.ref*, %struct.ref** %7, align 8
  %11 = icmp ne %struct.ref* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load %struct.view*, %struct.view** %5, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ref*, %struct.ref** %7, align 8
  %17 = getelementptr inbounds %struct.ref, %struct.ref* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @regexec(i32 %15, i32 %18, i32 1, i32* %8, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %28

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.ref*, %struct.ref** %7, align 8
  %25 = getelementptr inbounds %struct.ref, %struct.ref* %24, i32 0, i32 1
  %26 = load %struct.ref*, %struct.ref** %25, align 8
  store %struct.ref* %26, %struct.ref** %7, align 8
  br label %9

27:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @regexec(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
