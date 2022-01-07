; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_mmap-cache.c_context_attach_window.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_mmap-cache.c_context_attach_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32 }

@unused = common dso_local global i32 0, align 4
@by_window = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_11__*)* @context_attach_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_attach_window(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_11__* %5)
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_11__* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = icmp eq %struct.TYPE_11__* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call i32 @context_detach_window(%struct.TYPE_11__* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  %23 = load i32, i32* @unused, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = call i32 @LIST_REMOVE(i32 %23, i32 %28, %struct.TYPE_11__* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = icmp eq %struct.TYPE_11__* %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %22
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %45, align 8
  br label %46

46:                                               ; preds = %38, %22
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %15
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %52, align 8
  %53 = load i32, i32* @by_window, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = call i32 @LIST_PREPEND(i32 %53, i32 %56, %struct.TYPE_11__* %57)
  br label %59

59:                                               ; preds = %49, %14
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @context_detach_window(%struct.TYPE_11__*) #1

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @LIST_PREPEND(i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
