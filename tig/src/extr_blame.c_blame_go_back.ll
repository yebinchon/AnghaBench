; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blame.c_blame_go_back.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blame.c_blame_go_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.blame_history_state = type { i32, i32 }

@blame_view_history = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Already at start of history\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*)* @blame_go_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blame_go_back(%struct.view* %0) #0 {
  %2 = alloca %struct.view*, align 8
  %3 = alloca %struct.blame_history_state, align 4
  store %struct.view* %0, %struct.view** %2, align 8
  %4 = load %struct.view*, %struct.view** %2, align 8
  %5 = getelementptr inbounds %struct.view, %struct.view* %4, i32 0, i32 0
  %6 = call i32 @pop_view_history_state(i32* @blame_view_history, %struct.TYPE_4__* %5, %struct.blame_history_state* %3)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @report(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.view*, %struct.view** %2, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.blame_history_state, %struct.blame_history_state* %3, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @string_copy(i32 %15, i32 %17)
  %19 = load %struct.view*, %struct.view** %2, align 8
  %20 = getelementptr inbounds %struct.view, %struct.view* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.blame_history_state, %struct.blame_history_state* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.blame_history_state, %struct.blame_history_state* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = call i32 @string_ncopy(i32 %23, i32 %25, i32 %28)
  %30 = load %struct.view*, %struct.view** %2, align 8
  %31 = getelementptr inbounds %struct.view, %struct.view* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.view*, %struct.view** %2, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.view*, %struct.view** %2, align 8
  %39 = call i32 @reload_view(%struct.view* %38)
  br label %40

40:                                               ; preds = %10, %8
  ret void
}

declare dso_local i32 @pop_view_history_state(i32*, %struct.TYPE_4__*, %struct.blame_history_state*) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @string_copy(i32, i32) #1

declare dso_local i32 @string_ncopy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @reload_view(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
