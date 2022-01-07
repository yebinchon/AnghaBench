; ModuleID = '/home/carl/AnghaBench/reactos/drivers/base/kdgdb/extr_kdpacket.c_send_kd_state_change.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/base/kdgdb/extr_kdpacket.c_send_kd_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@InException = common dso_local global i32 0, align 4
@CurrentStateChange = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Exception 0x%08x in thread p%p.%p.\0A\00", align 1
@gdb_dbg_tid = common dso_local global i32 0, align 4
@gdb_dbg_pid = common dso_local global i32 0, align 4
@GetContextManipulateHandler = common dso_local global i32 0, align 4
@KdpManipulateStateHandler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown StateChange %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @send_kd_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_kd_state_change(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load i32, i32* @TRUE, align 4
  store i32 %4, i32* @InException, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %33 [
    i32 128, label %8
    i32 129, label %8
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_10__* @CurrentStateChange to i8*), i8* align 4 %13, i64 12, i1 false)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @PsGetThreadProcessId(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @PsGetThreadId(i32 %22)
  %24 = call i32 (i8*, i32, ...) @KDDBGPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @PsGetThreadId(i32 %25)
  %27 = call i32 @handle_to_gdb_tid(i32 %26)
  store i32 %27, i32* @gdb_dbg_tid, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @PsGetThreadProcessId(i32 %28)
  %30 = call i32 @handle_to_gdb_pid(i32 %29)
  store i32 %30, i32* @gdb_dbg_pid, align 4
  %31 = call i32 (...) @gdb_send_exception()
  %32 = load i32, i32* @GetContextManipulateHandler, align 4
  store i32 %32, i32* @KdpManipulateStateHandler, align 4
  br label %39

33:                                               ; preds = %1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @KDDBGPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %38
  br label %38

39:                                               ; preds = %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @KDDBGPRINT(i8*, i32, ...) #2

declare dso_local i32 @PsGetThreadProcessId(i32) #2

declare dso_local i32 @PsGetThreadId(i32) #2

declare dso_local i32 @handle_to_gdb_tid(i32) #2

declare dso_local i32 @handle_to_gdb_pid(i32) #2

declare dso_local i32 @gdb_send_exception(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
