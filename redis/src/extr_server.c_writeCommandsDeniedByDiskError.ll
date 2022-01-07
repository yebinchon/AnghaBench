; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_writeCommandsDeniedByDiskError.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_writeCommandsDeniedByDiskError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@C_ERR = common dso_local global i64 0, align 8
@DISK_ERROR_TYPE_RDB = common dso_local global i32 0, align 4
@AOF_OFF = common dso_local global i64 0, align 8
@DISK_ERROR_TYPE_AOF = common dso_local global i32 0, align 4
@DISK_ERROR_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writeCommandsDeniedByDiskError() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %9 = load i64, i64* @C_ERR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @DISK_ERROR_TYPE_RDB, align 4
  store i32 %12, i32* %1, align 4
  br label %25

13:                                               ; preds = %7, %4, %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %15 = load i64, i64* @AOF_OFF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %19 = load i64, i64* @C_ERR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @DISK_ERROR_TYPE_AOF, align 4
  store i32 %22, i32* %1, align 4
  br label %25

23:                                               ; preds = %17, %13
  %24 = load i32, i32* @DISK_ERROR_TYPE_NONE, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %21, %11
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
