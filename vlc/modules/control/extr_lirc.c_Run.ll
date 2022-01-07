; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_lirc.c_Run.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_lirc.c_Run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pollfd = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.pollfd, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @POLLIN, align 4
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %27, %25, %1
  %19 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 -1)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EINTR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %18

26:                                               ; preds = %21
  br label %33

27:                                               ; preds = %18
  %28 = call i32 (...) @vlc_savecancel()
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = call i32 @Process(%struct.TYPE_4__* %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @vlc_restorecancel(i32 %31)
  br label %18

33:                                               ; preds = %26
  ret i8* null
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @Process(%struct.TYPE_4__*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
