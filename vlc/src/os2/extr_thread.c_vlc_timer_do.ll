; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_timer_do.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_timer_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_timer = type { i32, i64, i64, i32, i32 (i32)*, i64 }

@SEM_INDEFINITE_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vlc_timer_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_timer_do(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vlc_timer*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vlc_timer*
  store %struct.vlc_timer* %6, %struct.vlc_timer** %3, align 8
  br label %7

7:                                                ; preds = %1, %45
  %8 = load %struct.vlc_timer*, %struct.vlc_timer** %3, align 8
  %9 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @SEM_INDEFINITE_WAIT, align 4
  %12 = call i32 @DosWaitEventSem(i64 %10, i32 %11)
  %13 = load %struct.vlc_timer*, %struct.vlc_timer** %3, align 8
  %14 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @DosResetEventSem(i64 %15, i32* %4)
  %17 = load %struct.vlc_timer*, %struct.vlc_timer** %3, align 8
  %18 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  br label %46

22:                                               ; preds = %7
  %23 = load %struct.vlc_timer*, %struct.vlc_timer** %3, align 8
  %24 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %23, i32 0, i32 4
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load %struct.vlc_timer*, %struct.vlc_timer** %3, align 8
  %27 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28)
  %30 = load %struct.vlc_timer*, %struct.vlc_timer** %3, align 8
  %31 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load %struct.vlc_timer*, %struct.vlc_timer** %3, align 8
  %36 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vlc_timer*, %struct.vlc_timer** %3, align 8
  %39 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.vlc_timer*, %struct.vlc_timer** %3, align 8
  %43 = getelementptr inbounds %struct.vlc_timer, %struct.vlc_timer* %42, i32 0, i32 0
  %44 = call i32 @DosAsyncTimer(i64 %37, i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %34, %22
  br label %7

46:                                               ; preds = %21
  ret void
}

declare dso_local i32 @DosWaitEventSem(i64, i32) #1

declare dso_local i32 @DosResetEventSem(i64, i32*) #1

declare dso_local i32 @DosAsyncTimer(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
