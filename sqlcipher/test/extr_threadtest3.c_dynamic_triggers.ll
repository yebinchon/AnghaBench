; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_dynamic_triggers.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_dynamic_triggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [249 x i8] c"PRAGMA page_size = 1024;PRAGMA journal_mode = WAL;CREATE TABLE t1(x, y);CREATE TABLE t2(x, y);CREATE TABLE t3(x, y);CREATE TABLE t4(x, y);CREATE TABLE t5(x, y);CREATE TABLE t6(x, y);CREATE TABLE t7(x, y);CREATE TABLE t8(x, y);CREATE TABLE t9(x, y);\00", align 1
@dynamic_triggers_2 = common dso_local global i32 0, align 4
@dynamic_triggers_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dynamic_triggers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dynamic_triggers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__, align 4
  %4 = alloca %struct.TYPE_17__, align 4
  %5 = alloca %struct.TYPE_16__, align 4
  store i32 %0, i32* %2, align 4
  %6 = bitcast %struct.TYPE_18__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = bitcast %struct.TYPE_17__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = bitcast %struct.TYPE_16__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = call i32 @opendb(%struct.TYPE_18__* %3, %struct.TYPE_17__* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  %10 = call i32 @sql_script(%struct.TYPE_18__* %3, %struct.TYPE_17__* %4, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @closedb(%struct.TYPE_18__* %3, %struct.TYPE_17__* %4)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @setstoptime(%struct.TYPE_18__* %3, i32 %12)
  %14 = call i32 @sqlite3_enable_shared_cache(i32 1)
  %15 = load i32, i32* @dynamic_triggers_2, align 4
  %16 = call i32 @launch_thread(%struct.TYPE_18__* %3, %struct.TYPE_16__* %5, i32 %15, i32 0)
  %17 = load i32, i32* @dynamic_triggers_2, align 4
  %18 = call i32 @launch_thread(%struct.TYPE_18__* %3, %struct.TYPE_16__* %5, i32 %17, i32 0)
  %19 = call i32 @sleep(i32 2)
  %20 = call i32 @sqlite3_enable_shared_cache(i32 0)
  %21 = load i32, i32* @dynamic_triggers_2, align 4
  %22 = call i32 @launch_thread(%struct.TYPE_18__* %3, %struct.TYPE_16__* %5, i32 %21, i32 0)
  %23 = load i32, i32* @dynamic_triggers_1, align 4
  %24 = call i32 @launch_thread(%struct.TYPE_18__* %3, %struct.TYPE_16__* %5, i32 %23, i32 0)
  %25 = call i32 @join_all_threads(%struct.TYPE_18__* %3, %struct.TYPE_16__* %5)
  %26 = call i32 @print_and_free_err(%struct.TYPE_18__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*, i32) #2

declare dso_local i32 @sql_script(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*) #2

declare dso_local i32 @closedb(%struct.TYPE_18__*, %struct.TYPE_17__*) #2

declare dso_local i32 @setstoptime(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @sqlite3_enable_shared_cache(i32) #2

declare dso_local i32 @launch_thread(%struct.TYPE_18__*, %struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @join_all_threads(%struct.TYPE_18__*, %struct.TYPE_16__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
