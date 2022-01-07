; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_setup_signals.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_setup_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.sigaction = type { i32, i32 }

@SA_NOCLDSTOP = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4
@SIGPWR = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i64 0, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@SFD_NONBLOCK = common dso_local global i32 0, align 4
@SFD_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@manager_dispatch_signal_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"manager-signal\00", align 1
@SD_EVENT_PRIORITY_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @manager_setup_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_setup_signals(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.sigaction, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  %8 = load i32, i32* @SA_NOCLDSTOP, align 4
  %9 = load i32, i32* @SA_RESTART, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  %12 = load i32, i32* @SIG_DFL, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i32 @assert(%struct.TYPE_7__* %13)
  %15 = load i32, i32* @SIGCHLD, align 4
  %16 = call i64 @sigaction(i32 %15, %struct.sigaction* %4, i32* null)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = call i64 @sigemptyset(i32* %5)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32, i32* @SIGCHLD, align 4
  %25 = load i32, i32* @SIGTERM, align 4
  %26 = load i32, i32* @SIGHUP, align 4
  %27 = load i32, i32* @SIGUSR1, align 4
  %28 = load i32, i32* @SIGUSR2, align 4
  %29 = load i32, i32* @SIGINT, align 4
  %30 = load i32, i32* @SIGWINCH, align 4
  %31 = load i32, i32* @SIGPWR, align 4
  %32 = load i64, i64* @SIGRTMIN, align 8
  %33 = add nsw i64 %32, 0
  %34 = load i64, i64* @SIGRTMIN, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i64, i64* @SIGRTMIN, align 8
  %37 = add nsw i64 %36, 2
  %38 = load i64, i64* @SIGRTMIN, align 8
  %39 = add nsw i64 %38, 3
  %40 = load i64, i64* @SIGRTMIN, align 8
  %41 = add nsw i64 %40, 4
  %42 = load i64, i64* @SIGRTMIN, align 8
  %43 = add nsw i64 %42, 5
  %44 = load i64, i64* @SIGRTMIN, align 8
  %45 = add nsw i64 %44, 6
  %46 = load i64, i64* @SIGRTMIN, align 8
  %47 = add nsw i64 %46, 13
  %48 = load i64, i64* @SIGRTMIN, align 8
  %49 = add nsw i64 %48, 14
  %50 = load i64, i64* @SIGRTMIN, align 8
  %51 = add nsw i64 %50, 15
  %52 = load i64, i64* @SIGRTMIN, align 8
  %53 = add nsw i64 %52, 16
  %54 = load i64, i64* @SIGRTMIN, align 8
  %55 = add nsw i64 %54, 20
  %56 = load i64, i64* @SIGRTMIN, align 8
  %57 = add nsw i64 %56, 21
  %58 = load i64, i64* @SIGRTMIN, align 8
  %59 = add nsw i64 %58, 22
  %60 = load i64, i64* @SIGRTMIN, align 8
  %61 = add nsw i64 %60, 23
  %62 = load i64, i64* @SIGRTMIN, align 8
  %63 = add nsw i64 %62, 24
  %64 = load i64, i64* @SIGRTMIN, align 8
  %65 = add nsw i64 %64, 26
  %66 = call i32 @RTSIG_IF_AVAILABLE(i64 %65)
  %67 = load i64, i64* @SIGRTMIN, align 8
  %68 = add nsw i64 %67, 27
  %69 = call i32 @RTSIG_IF_AVAILABLE(i64 %68)
  %70 = load i64, i64* @SIGRTMIN, align 8
  %71 = add nsw i64 %70, 28
  %72 = call i32 @RTSIG_IF_AVAILABLE(i64 %71)
  %73 = load i64, i64* @SIGRTMIN, align 8
  %74 = add nsw i64 %73, 29
  %75 = call i32 @RTSIG_IF_AVAILABLE(i64 %74)
  %76 = call i32 @sigset_add_many(i32* %5, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i64 %33, i64 %35, i64 %37, i64 %39, i64 %41, i64 %43, i64 %45, i64 %47, i64 %49, i64 %51, i64 %53, i64 %55, i64 %57, i64 %59, i64 %61, i64 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 -1)
  %77 = load i32, i32* @SIG_SETMASK, align 4
  %78 = call i64 @sigprocmask(i32 %77, i32* %5, i32* null)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert_se(i32 %80)
  %82 = load i32, i32* @SFD_NONBLOCK, align 4
  %83 = load i32, i32* @SFD_CLOEXEC, align 4
  %84 = or i32 %82, %83
  %85 = call i64 @signalfd(i32 -1, i32* %5, i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %1
  %93 = load i32, i32* @errno, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %135

95:                                               ; preds = %1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @EPOLLIN, align 4
  %105 = load i32, i32* @manager_dispatch_signal_fd, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = call i32 @sd_event_add_io(i32 %98, i32* %100, i64 %103, i32 %104, i32 %105, %struct.TYPE_7__* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %95
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %135

112:                                              ; preds = %95
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @sd_event_source_set_description(i32 %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* @SD_EVENT_PRIORITY_NORMAL, align 8
  %121 = sub nsw i64 %120, 6
  %122 = call i32 @sd_event_source_set_priority(i32 %119, i64 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %135

127:                                              ; preds = %112
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = call i64 @MANAGER_IS_SYSTEM(%struct.TYPE_7__* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = call i32 @enable_special_signals(%struct.TYPE_7__* %132)
  store i32 %133, i32* %2, align 4
  br label %135

134:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %131, %125, %110, %92
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i32 @sigset_add_many(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RTSIG_IF_AVAILABLE(i64) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i64 @signalfd(i32, i32*, i32) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i64, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sd_event_source_set_description(i32, i8*) #1

declare dso_local i32 @sd_event_source_set_priority(i32, i64) #1

declare dso_local i64 @MANAGER_IS_SYSTEM(%struct.TYPE_7__*) #1

declare dso_local i32 @enable_special_signals(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
