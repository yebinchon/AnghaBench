; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_FetcherThread.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_FetcherThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetcher_thread = type { i32, i32, i32, i32, i32 (i32, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @FetcherThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FetcherThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fetcher_thread*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.fetcher_thread*
  store %struct.fetcher_thread* %5, %struct.fetcher_thread** %3, align 8
  %6 = load %struct.fetcher_thread*, %struct.fetcher_thread** %3, align 8
  %7 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %6, i32 0, i32 5
  %8 = call i32 @vlc_interrupt_set(i32* %7)
  %9 = load %struct.fetcher_thread*, %struct.fetcher_thread** %3, align 8
  %10 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %9, i32 0, i32 4
  %11 = load i32 (i32, i32)*, i32 (i32, i32)** %10, align 8
  %12 = load %struct.fetcher_thread*, %struct.fetcher_thread** %3, align 8
  %13 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fetcher_thread*, %struct.fetcher_thread** %3, align 8
  %16 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 %11(i32 %14, i32 %17)
  %19 = load %struct.fetcher_thread*, %struct.fetcher_thread** %3, align 8
  %20 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %19, i32 0, i32 1
  %21 = call i32 @atomic_store(i32* %20, i32 0)
  %22 = load %struct.fetcher_thread*, %struct.fetcher_thread** %3, align 8
  %23 = getelementptr inbounds %struct.fetcher_thread, %struct.fetcher_thread* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @background_worker_RequestProbe(i32 %24)
  ret i8* null
}

declare dso_local i32 @vlc_interrupt_set(i32*) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @background_worker_RequestProbe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
