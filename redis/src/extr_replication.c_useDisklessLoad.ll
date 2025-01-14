; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_useDisklessLoad.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_useDisklessLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REPL_DISKLESS_LOAD_SWAPDB = common dso_local global i64 0, align 8
@REPL_DISKLESS_LOAD_WHEN_DB_EMPTY = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Skipping diskless-load because there are modules that don't handle read errors.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @useDisklessLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @useDisklessLoad() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %3 = load i64, i64* @REPL_DISKLESS_LOAD_SWAPDB, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %14, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %7 = load i64, i64* @REPL_DISKLESS_LOAD_WHEN_DB_EMPTY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = call i64 (...) @dbTotalServerKeyCount()
  %11 = icmp eq i64 %10, 0
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i1 [ false, %5 ], [ %11, %9 ]
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i1 [ true, %0 ], [ %13, %12 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = call i32 (...) @moduleAllDatatypesHandleErrors()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @LL_WARNING, align 4
  %24 = call i32 @serverLog(i32 %23, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %22, %19, %14
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i64 @dbTotalServerKeyCount(...) #1

declare dso_local i32 @moduleAllDatatypesHandleErrors(...) #1

declare dso_local i32 @serverLog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
