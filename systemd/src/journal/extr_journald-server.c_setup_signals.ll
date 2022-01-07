; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_setup_signals.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_setup_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@SIG_SETMASK = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i64 0, align 8
@SIGUSR1 = common dso_local global i64 0, align 8
@SIGUSR2 = common dso_local global i64 0, align 8
@SIGRTMIN = common dso_local global i64 0, align 8
@dispatch_sigusr1 = common dso_local global i32 0, align 4
@dispatch_sigusr2 = common dso_local global i32 0, align 4
@dispatch_sigterm = common dso_local global i32 0, align 4
@SD_EVENT_PRIORITY_NORMAL = common dso_local global i64 0, align 8
@dispatch_sigrtmin1 = common dso_local global i32 0, align 4
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
  %8 = load i64, i64* @SIGINT, align 8
  %9 = load i64, i64* @SIGTERM, align 8
  %10 = load i64, i64* @SIGUSR1, align 8
  %11 = load i64, i64* @SIGUSR2, align 8
  %12 = load i64, i64* @SIGRTMIN, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i64 @sigprocmask_many(i32 %7, i32* null, i64 %8, i64 %9, i64 %10, i64 %11, i64 %13, i32 -1)
  %15 = icmp sge i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  %23 = load i64, i64* @SIGUSR1, align 8
  %24 = load i32, i32* @dispatch_sigusr1, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = call i32 @sd_event_add_signal(i32 %20, i32* %22, i64 %23, i32 %24, %struct.TYPE_5__* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %122

31:                                               ; preds = %1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i64, i64* @SIGUSR2, align 8
  %38 = load i32, i32* @dispatch_sigusr2, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = call i32 @sd_event_add_signal(i32 %34, i32* %36, i64 %37, i32 %38, %struct.TYPE_5__* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %122

45:                                               ; preds = %31
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i64, i64* @SIGTERM, align 8
  %52 = load i32, i32* @dispatch_sigterm, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = call i32 @sd_event_add_signal(i32 %48, i32* %50, i64 %51, i32 %52, %struct.TYPE_5__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %122

59:                                               ; preds = %45
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @SD_EVENT_PRIORITY_NORMAL, align 8
  %64 = add nsw i64 %63, 20
  %65 = call i32 @sd_event_source_set_priority(i32 %62, i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %122

70:                                               ; preds = %59
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64, i64* @SIGINT, align 8
  %77 = load i32, i32* @dispatch_sigterm, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = call i32 @sd_event_add_signal(i32 %73, i32* %75, i64 %76, i32 %77, %struct.TYPE_5__* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %122

84:                                               ; preds = %70
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* @SD_EVENT_PRIORITY_NORMAL, align 8
  %89 = add nsw i64 %88, 20
  %90 = call i32 @sd_event_source_set_priority(i32 %87, i64 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %122

95:                                               ; preds = %84
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* @SIGRTMIN, align 8
  %102 = add nsw i64 %101, 1
  %103 = load i32, i32* @dispatch_sigrtmin1, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = call i32 @sd_event_add_signal(i32 %98, i32* %100, i64 %102, i32 %103, %struct.TYPE_5__* %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %122

110:                                              ; preds = %95
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* @SD_EVENT_PRIORITY_NORMAL, align 8
  %115 = add nsw i64 %114, 15
  %116 = call i32 @sd_event_source_set_priority(i32 %113, i64 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %122

121:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %119, %108, %93, %82, %68, %57, %43, %29
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sigprocmask_many(i32, i32*, i64, i64, i64, i64, i64, i32) #1

declare dso_local i32 @sd_event_add_signal(i32, i32*, i64, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @sd_event_source_set_priority(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
