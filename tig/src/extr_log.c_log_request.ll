; ModuleID = '/home/carl/AnghaBench/tig/src/extr_log.c_log_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_log.c_log_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.view = type { i32 }
%struct.line = type { i32 }

@REQ_NONE = common dso_local global i32 0, align 4
@display = common dso_local global %struct.TYPE_2__** null, align 8
@OPEN_SPLIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, %struct.line*)* @log_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %36 [
    i32 128, label %9
    i32 129, label %14
  ]

9:                                                ; preds = %3
  %10 = call i32 @load_refs(i32 1)
  %11 = load %struct.view*, %struct.view** %5, align 8
  %12 = call i32 @refresh_view(%struct.view* %11)
  %13 = load i32, i32* @REQ_NONE, align 4
  store i32 %13, i32* %4, align 4
  br label %38

14:                                               ; preds = %3
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @display, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @display, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.view*, %struct.view** %5, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcmp(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19, %14
  %31 = load %struct.view*, %struct.view** %5, align 8
  %32 = load i32, i32* @OPEN_SPLIT, align 4
  %33 = call i32 @open_diff_view(%struct.view* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %19
  %35 = load i32, i32* @REQ_NONE, align 4
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %34, %9
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @load_refs(i32) #1

declare dso_local i32 @refresh_view(%struct.view*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @open_diff_view(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
