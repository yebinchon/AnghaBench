; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.callout }
%struct.callout = type { i32 }
%struct.vhpet_callout_arg = type { i32, %struct.vhpet* }

@.str = private unnamed_addr constant [15 x i8] c"hpet t%d fired\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"vhpet(%p) callout with counter disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vhpet_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhpet_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vhpet*, align 8
  %7 = alloca %struct.callout*, align 8
  %8 = alloca %struct.vhpet_callout_arg*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.vhpet_callout_arg*
  store %struct.vhpet_callout_arg* %10, %struct.vhpet_callout_arg** %8, align 8
  %11 = load %struct.vhpet_callout_arg*, %struct.vhpet_callout_arg** %8, align 8
  %12 = getelementptr inbounds %struct.vhpet_callout_arg, %struct.vhpet_callout_arg* %11, i32 0, i32 1
  %13 = load %struct.vhpet*, %struct.vhpet** %12, align 8
  store %struct.vhpet* %13, %struct.vhpet** %6, align 8
  %14 = load %struct.vhpet_callout_arg*, %struct.vhpet_callout_arg** %8, align 8
  %15 = getelementptr inbounds %struct.vhpet_callout_arg, %struct.vhpet_callout_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = load %struct.vhpet*, %struct.vhpet** %6, align 8
  %18 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.callout* %23, %struct.callout** %7, align 8
  %24 = load %struct.vhpet*, %struct.vhpet** %6, align 8
  %25 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @VM_CTR1(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.vhpet*, %struct.vhpet** %6, align 8
  %30 = call i32 @VHPET_LOCK(%struct.vhpet* %29)
  %31 = load %struct.callout*, %struct.callout** %7, align 8
  %32 = call i64 @callout_pending(%struct.callout* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %61

35:                                               ; preds = %1
  %36 = load %struct.callout*, %struct.callout** %7, align 8
  %37 = call i32 @callout_active(%struct.callout* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %61

40:                                               ; preds = %35
  %41 = load %struct.callout*, %struct.callout** %7, align 8
  %42 = call i32 @callout_deactivate(%struct.callout* %41)
  %43 = load %struct.vhpet*, %struct.vhpet** %6, align 8
  %44 = call i32 @vhpet_counter_enabled(%struct.vhpet* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load %struct.vhpet*, %struct.vhpet** %6, align 8
  %48 = bitcast %struct.vhpet* %47 to i8*
  %49 = call i32 @xhyve_abort(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.vhpet*, %struct.vhpet** %6, align 8
  %52 = call i32 @vhpet_counter(%struct.vhpet* %51, i32* %5)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.vhpet*, %struct.vhpet** %6, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @vhpet_start_timer(%struct.vhpet* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.vhpet*, %struct.vhpet** %6, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @vhpet_timer_interrupt(%struct.vhpet* %58, i32 %59)
  br label %61

61:                                               ; preds = %50, %39, %34
  %62 = load %struct.vhpet*, %struct.vhpet** %6, align 8
  %63 = call i32 @VHPET_UNLOCK(%struct.vhpet* %62)
  ret void
}

declare dso_local i32 @VM_CTR1(i32, i8*, i32) #1

declare dso_local i32 @VHPET_LOCK(%struct.vhpet*) #1

declare dso_local i64 @callout_pending(%struct.callout*) #1

declare dso_local i32 @callout_active(%struct.callout*) #1

declare dso_local i32 @callout_deactivate(%struct.callout*) #1

declare dso_local i32 @vhpet_counter_enabled(%struct.vhpet*) #1

declare dso_local i32 @xhyve_abort(i8*, i8*) #1

declare dso_local i32 @vhpet_counter(%struct.vhpet*, i32*) #1

declare dso_local i32 @vhpet_start_timer(%struct.vhpet*, i32, i32, i32) #1

declare dso_local i32 @vhpet_timer_interrupt(%struct.vhpet*, i32) #1

declare dso_local i32 @VHPET_UNLOCK(%struct.vhpet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
