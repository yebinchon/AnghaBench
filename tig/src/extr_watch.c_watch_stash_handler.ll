; ModuleID = '/home/carl/AnghaBench/tig/src/extr_watch.c_watch_stash_handler.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_watch.c_watch_stash_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.watch_handler = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s/refs/stash\00", align 1
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@WATCH_STASH = common dso_local global i32 0, align 4
@WATCH_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watch_handler*, i32, i32)* @watch_stash_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watch_stash_handler(%struct.watch_handler* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.watch_handler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.watch_handler* %0, %struct.watch_handler** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %9 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %8, i32 0, i32 0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 4
  %11 = call i64 @check_file_mtime(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @WATCH_STASH, align 4
  store i32 %14, i32* %4, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @WATCH_NONE, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i64 @check_file_mtime(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
