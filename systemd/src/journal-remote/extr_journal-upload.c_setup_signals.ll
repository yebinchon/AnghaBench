; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-upload.c_setup_signals.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-upload.c_setup_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@SIG_SETMASK = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@dispatch_sigterm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @setup_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_signals(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_5__* %5)
  %7 = load i32, i32* @SIG_SETMASK, align 4
  %8 = load i32, i32* @SIGINT, align 4
  %9 = load i32, i32* @SIGTERM, align 4
  %10 = call i64 @sigprocmask_many(i32 %7, i32* null, i32 %8, i32 %9, i32 -1)
  %11 = icmp sge i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* @SIGTERM, align 4
  %20 = load i32, i32* @dispatch_sigterm, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i32 @sd_event_add_signal(i32 %16, i32* %18, i32 %19, i32 %20, %struct.TYPE_5__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* @SIGINT, align 4
  %34 = load i32, i32* @dispatch_sigterm, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = call i32 @sd_event_add_signal(i32 %30, i32* %32, i32 %33, i32 %34, %struct.TYPE_5__* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %25
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sigprocmask_many(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sd_event_add_signal(i32, i32*, i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
