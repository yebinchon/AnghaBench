; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_callout.c_callout_stop_safe_locked.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_callout.c_callout_stop_safe_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout = type { i32, i32 }

@callout_thread = common dso_local global i64 0, align 8
@CALLOUT_WAITING = common dso_local global i32 0, align 4
@work = common dso_local global i32 0, align 4
@callout_cnd = common dso_local global i32 0, align 4
@CALLOUT_COMPLETED = common dso_local global i32 0, align 4
@callout_mtx = common dso_local global i32 0, align 4
@CALLOUT_ACTIVE = common dso_local global i32 0, align 4
@CALLOUT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.callout*, i32)* @callout_stop_safe_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callout_stop_safe_locked(%struct.callout* %0, i32 %1) #0 {
  %3 = alloca %struct.callout*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.callout* %0, %struct.callout** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %2
  %9 = call i64 (...) @pthread_self()
  %10 = load i64, i64* @callout_thread, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = load %struct.callout*, %struct.callout** %3, align 8
  %14 = call i64 @callout_pending(%struct.callout* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load %struct.callout*, %struct.callout** %3, align 8
  %18 = call i64 @callout_active(%struct.callout* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load %struct.callout*, %struct.callout** %3, align 8
  %22 = call i32 @callout_completed(%struct.callout* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %59, label %24

24:                                               ; preds = %20, %12
  %25 = load %struct.callout*, %struct.callout** %3, align 8
  %26 = getelementptr inbounds %struct.callout, %struct.callout* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CALLOUT_WAITING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (...) @abort() #3
  unreachable

33:                                               ; preds = %24
  %34 = load i32, i32* @CALLOUT_WAITING, align 4
  %35 = load %struct.callout*, %struct.callout** %3, align 8
  %36 = getelementptr inbounds %struct.callout, %struct.callout* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  store i32 1, i32* @work, align 4
  %39 = call i32 @pthread_cond_signal(i32* @callout_cnd)
  br label %40

40:                                               ; preds = %48, %33
  %41 = load %struct.callout*, %struct.callout** %3, align 8
  %42 = getelementptr inbounds %struct.callout, %struct.callout* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CALLOUT_COMPLETED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.callout*, %struct.callout** %3, align 8
  %50 = getelementptr inbounds %struct.callout, %struct.callout* %49, i32 0, i32 1
  %51 = call i32 @pthread_cond_wait(i32* %50, i32* @callout_mtx)
  br label %40

52:                                               ; preds = %40
  %53 = load i32, i32* @CALLOUT_WAITING, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.callout*, %struct.callout** %3, align 8
  %56 = getelementptr inbounds %struct.callout, %struct.callout* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %52, %20, %16, %8, %2
  %60 = load %struct.callout*, %struct.callout** %3, align 8
  %61 = call i32 @callout_remove(%struct.callout* %60)
  %62 = load i32, i32* @CALLOUT_ACTIVE, align 4
  %63 = load i32, i32* @CALLOUT_PENDING, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CALLOUT_COMPLETED, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CALLOUT_WAITING, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.callout*, %struct.callout** %3, align 8
  %71 = getelementptr inbounds %struct.callout, %struct.callout* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @pthread_self(...) #1

declare dso_local i64 @callout_pending(%struct.callout*) #1

declare dso_local i64 @callout_active(%struct.callout*) #1

declare dso_local i32 @callout_completed(%struct.callout*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @callout_remove(%struct.callout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
