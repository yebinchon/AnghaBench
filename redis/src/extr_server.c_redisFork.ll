; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_redisFork.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_redisFork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, double }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisFork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i64 (...) @ustime()
  store i64 %4, i64* %3, align 8
  %5 = call i32 (...) @fork()
  store i32 %5, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @closeListeningSockets(i32 0)
  %9 = call i32 (...) @setupChildSignalHandlers()
  br label %30

10:                                               ; preds = %0
  %11 = call i64 (...) @ustime()
  %12 = load i64, i64* %3, align 8
  %13 = sub nsw i64 %11, %12
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %14 = call i64 (...) @zmalloc_used_memory()
  %15 = sitofp i64 %14 to double
  %16 = fmul double %15, 1.000000e+06
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %16, %18
  %20 = fdiv double %19, 0x41D0000000000000
  store double %20, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %22 = sdiv i64 %21, 1000
  %23 = trunc i64 %22 to i32
  %24 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %32

28:                                               ; preds = %10
  %29 = call i32 (...) @updateDictResizePolicy()
  br label %30

30:                                               ; preds = %28, %7
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i64 @ustime(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @closeListeningSockets(i32) #1

declare dso_local i32 @setupChildSignalHandlers(...) #1

declare dso_local i64 @zmalloc_used_memory(...) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i32) #1

declare dso_local i32 @updateDictResizePolicy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
