; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mmap_libaio/extr_mmap_libaio.c_do_sync_io.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mmap_libaio/extr_mmap_libaio.c_do_sync_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.iocb = type { i32 }
%struct.io_event = type { i32 }

@__const.do_sync_io.ts = private unnamed_addr constant %struct.timespec { i32 30, i32 0 }, align 4
@io_ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"io_submit failed\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"io_getevents failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iocb*)* @do_sync_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sync_io(%struct.iocb* %0) #0 {
  %2 = alloca %struct.iocb*, align 8
  %3 = alloca %struct.io_event, align 4
  %4 = alloca [1 x %struct.iocb*], align 8
  %5 = alloca %struct.timespec, align 4
  store %struct.iocb* %0, %struct.iocb** %2, align 8
  %6 = getelementptr inbounds [1 x %struct.iocb*], [1 x %struct.iocb*]* %4, i64 0, i64 0
  %7 = load %struct.iocb*, %struct.iocb** %2, align 8
  store %struct.iocb* %7, %struct.iocb** %6, align 8
  %8 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.timespec* @__const.do_sync_io.ts to i8*), i64 8, i1 false)
  %9 = load i32, i32* @io_ctx, align 4
  %10 = getelementptr inbounds [1 x %struct.iocb*], [1 x %struct.iocb*]* %4, i64 0, i64 0
  %11 = call i32 @io_submit(i32 %9, i32 1, %struct.iocb** %10)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* @io_ctx, align 4
  %17 = call i32 @io_getevents(i32 %16, i32 0, i32 1, %struct.io_event* %3, %struct.timespec* %5)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @io_submit(i32, i32, %struct.iocb**) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @io_getevents(i32, i32, i32, %struct.io_event*, %struct.timespec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
