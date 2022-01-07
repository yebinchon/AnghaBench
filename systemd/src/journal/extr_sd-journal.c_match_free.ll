; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_match_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_match_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }

@matches = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @match_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_free(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_8__* %3)
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  call void @match_free(%struct.TYPE_8__* %13)
  br label %5

14:                                               ; preds = %5
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* @matches, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = call i32 @LIST_REMOVE(i32 %20, i32 %25, %struct.TYPE_8__* %26)
  br label %28

28:                                               ; preds = %19, %14
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call i32 @free(%struct.TYPE_8__* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = call i32 @free(%struct.TYPE_8__* %33)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
