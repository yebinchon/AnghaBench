; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_lock.c__lock.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_lock.c__lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@lock_table = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@_LOCKTAB_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c": creating lock #%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_lock(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lock_table, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FALSE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load i32, i32* @_LOCKTAB_LOCK, align 4
  call void @_lock(i32 %14)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lock_table, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @msvcrt_initialize_mlock(i32 %26)
  br label %28

28:                                               ; preds = %23, %13
  %29 = load i32, i32* @_LOCKTAB_LOCK, align 4
  %30 = call i32 @_unlock(i32 %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lock_table, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @EnterCriticalSection(i32* %36)
  ret void
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @msvcrt_initialize_mlock(i32) #1

declare dso_local i32 @_unlock(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
