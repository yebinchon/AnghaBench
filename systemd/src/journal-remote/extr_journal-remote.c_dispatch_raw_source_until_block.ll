; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-remote.c_dispatch_raw_source_until_block.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-remote.c_dispatch_raw_source_until_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@journal_remote_server_global = common dso_local global i32 0, align 4
@SD_EVENT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @dispatch_raw_source_until_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispatch_raw_source_until_block(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @sd_event_source_ref(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EPOLLIN, align 4
  %17 = load i32, i32* @journal_remote_server_global, align 4
  %18 = call i32 @journal_remote_handle_raw_source(i32* %11, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @SD_EVENT_OFF, align 4
  %24 = call i32 @sd_event_source_set_enabled(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @sd_event_source_unref(i32* %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @sd_event_source_ref(i32*) #1

declare dso_local i32 @journal_remote_handle_raw_source(i32*, i32, i32, i32) #1

declare dso_local i32 @sd_event_source_set_enabled(i32*, i32) #1

declare dso_local i32 @sd_event_source_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
