; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_suspend.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_exit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BSP = common dso_local global i32 0, align 4
@resetcpu_mtx = common dso_local global i32 0, align 4
@resetcpu_cond = common dso_local global i32 0, align 4
@cpumask = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"vmexit_suspend: invalid reason %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_exit*, i32*)* @vmexit_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_suspend(%struct.vm_exit* %0, i32* %1) #0 {
  %3 = alloca %struct.vm_exit*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.vm_exit* %0, %struct.vm_exit** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.vm_exit*, %struct.vm_exit** %3, align 8
  %7 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vcpu_delete(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BSP, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = call i32 @pthread_mutex_lock(i32* @resetcpu_mtx)
  %20 = call i32 @pthread_cond_signal(i32* @resetcpu_cond)
  %21 = call i32 @pthread_mutex_unlock(i32* @resetcpu_mtx)
  %22 = call i32 @pthread_exit(i32* null)
  br label %23

23:                                               ; preds = %18, %2
  %24 = call i32 @pthread_mutex_lock(i32* @resetcpu_mtx)
  br label %25

25:                                               ; preds = %29, %23
  %26 = call i32 @CPU_EMPTY(i32* @cpumask)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @pthread_cond_wait(i32* @resetcpu_cond, i32* @resetcpu_mtx)
  br label %25

31:                                               ; preds = %25
  %32 = call i32 @pthread_mutex_unlock(i32* @resetcpu_mtx)
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %42 [
    i32 129, label %34
    i32 130, label %36
    i32 131, label %38
    i32 128, label %40
  ]

34:                                               ; preds = %31
  %35 = call i32 @exit(i32 0) #3
  unreachable

36:                                               ; preds = %31
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %31
  %39 = call i32 @exit(i32 2) #3
  unreachable

40:                                               ; preds = %31
  %41 = call i32 @exit(i32 3) #3
  unreachable

42:                                               ; preds = %31
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 @exit(i32 100) #3
  unreachable
}

declare dso_local i32 @vcpu_delete(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_exit(i32*) #1

declare dso_local i32 @CPU_EMPTY(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
