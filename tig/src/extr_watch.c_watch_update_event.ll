; ModuleID = '/home/carl/AnghaBench/tig/src/extr_watch.c_watch_update_event.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_watch.c_watch_update_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watch_handler = type { i32, i32 (%struct.watch_handler*, i32, i32)*, i32 }
%struct.TYPE_2__ = type { i64* }

@WATCH_NONE = common dso_local global i32 0, align 4
@WATCH_EVENT_AFTER_COMMAND = common dso_local global i32 0, align 4
@watch_handlers = common dso_local global %struct.watch_handler* null, align 8
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @watch_update_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watch_update_event(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.watch_handler*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @watch_no_refresh(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @WATCH_NONE, align 4
  store i32 %15, i32* %4, align 4
  br label %85

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @WATCH_EVENT_AFTER_COMMAND, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @time(i32* null)
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %73, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.watch_handler*, %struct.watch_handler** @watch_handlers, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.watch_handler* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %23
  %29 = load %struct.watch_handler*, %struct.watch_handler** @watch_handlers, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %29, i64 %31
  store %struct.watch_handler* %32, %struct.watch_handler** %10, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @WATCH_EVENT_AFTER_COMMAND, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.watch_handler*, %struct.watch_handler** %10, align 8
  %38 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.watch_handler*, %struct.watch_handler** %10, align 8
  %42 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %73

43:                                               ; preds = %28
  %44 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.watch_handler*, %struct.watch_handler** %10, align 8
  %50 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.watch_handler*, %struct.watch_handler** %10, align 8
  %57 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %55, %58
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load %struct.watch_handler*, %struct.watch_handler** %10, align 8
  %64 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %63, i32 0, i32 1
  %65 = load i32 (%struct.watch_handler*, i32, i32)*, i32 (%struct.watch_handler*, i32, i32)** %64, align 8
  %66 = load %struct.watch_handler*, %struct.watch_handler** %10, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 %65(%struct.watch_handler* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %62, %54, %47, %43
  br label %73

73:                                               ; preds = %72, %36
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %23

76:                                               ; preds = %23
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @watch_apply_changes(i32* null, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %14
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @watch_no_refresh(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.watch_handler*) #1

declare dso_local i32 @watch_apply_changes(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
