; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i32 }

@REQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, %struct.line*)* @diff_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %37 [
    i32 128, label %9
    i32 131, label %13
    i32 130, label %18
    i32 129, label %23
  ]

9:                                                ; preds = %3
  %10 = load %struct.view*, %struct.view** %5, align 8
  %11 = load %struct.line*, %struct.line** %7, align 8
  %12 = call i32 @diff_trace_origin(%struct.view* %10, %struct.line* %11)
  store i32 %12, i32* %4, align 4
  br label %42

13:                                               ; preds = %3
  %14 = load %struct.view*, %struct.view** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.line*, %struct.line** %7, align 8
  %17 = call i32 @diff_common_edit(%struct.view* %14, i32 %15, %struct.line* %16)
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.view*, %struct.view** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.line*, %struct.line** %7, align 8
  %22 = call i32 @diff_common_enter(%struct.view* %19, i32 %20, %struct.line* %21)
  store i32 %22, i32* %4, align 4
  br label %42

23:                                               ; preds = %3
  %24 = load %struct.view*, %struct.view** %5, align 8
  %25 = getelementptr inbounds %struct.view, %struct.view* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @string_rev_is_null(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.view*, %struct.view** %5, align 8
  %31 = call i32 @refresh_view(%struct.view* %30)
  br label %35

32:                                               ; preds = %23
  %33 = load %struct.view*, %struct.view** %5, align 8
  %34 = call i32 @reload_view(%struct.view* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @REQ_NONE, align 4
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %3
  %38 = load %struct.view*, %struct.view** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.line*, %struct.line** %7, align 8
  %41 = call i32 @pager_request(%struct.view* %38, i32 %39, %struct.line* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %35, %18, %13, %9
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @diff_trace_origin(%struct.view*, %struct.line*) #1

declare dso_local i32 @diff_common_edit(%struct.view*, i32, %struct.line*) #1

declare dso_local i32 @diff_common_enter(%struct.view*, i32, %struct.line*) #1

declare dso_local i32 @string_rev_is_null(i32) #1

declare dso_local i32 @refresh_view(%struct.view*) #1

declare dso_local i32 @reload_view(%struct.view*) #1

declare dso_local i32 @pager_request(%struct.view*, i32, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
