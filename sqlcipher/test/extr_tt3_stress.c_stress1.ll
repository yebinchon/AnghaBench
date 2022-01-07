; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_tt3_stress.c_stress1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_tt3_stress.c_stress1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@stress_thread_1 = common dso_local global i32 0, align 4
@stress_thread_2 = common dso_local global i32 0, align 4
@stress_thread_3 = common dso_local global i32 0, align 4
@stress_thread_4 = common dso_local global i32 0, align 4
@stress_thread_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @stress1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stress1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %2, align 4
  %5 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @setstoptime(%struct.TYPE_10__* %3, i32 %7)
  %9 = call i32 @sqlite3_enable_shared_cache(i32 1)
  %10 = load i32, i32* @stress_thread_1, align 4
  %11 = call i32 @launch_thread(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4, i32 %10, i8* null)
  %12 = load i32, i32* @stress_thread_1, align 4
  %13 = call i32 @launch_thread(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4, i32 %12, i8* null)
  %14 = load i32, i32* @stress_thread_2, align 4
  %15 = call i32 @launch_thread(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4, i32 %14, i8* null)
  %16 = load i32, i32* @stress_thread_2, align 4
  %17 = call i32 @launch_thread(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4, i32 %16, i8* null)
  %18 = load i32, i32* @stress_thread_3, align 4
  %19 = call i32 @launch_thread(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4, i32 %18, i8* null)
  %20 = load i32, i32* @stress_thread_3, align 4
  %21 = call i32 @launch_thread(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4, i32 %20, i8* null)
  %22 = load i32, i32* @stress_thread_4, align 4
  %23 = call i32 @launch_thread(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4, i32 %22, i8* null)
  %24 = load i32, i32* @stress_thread_4, align 4
  %25 = call i32 @launch_thread(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4, i32 %24, i8* null)
  %26 = load i32, i32* @stress_thread_5, align 4
  %27 = call i32 @launch_thread(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4, i32 %26, i8* null)
  %28 = load i32, i32* @stress_thread_5, align 4
  %29 = call i32 @launch_thread(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4, i32 %28, i8* inttoptr (i64 1 to i8*))
  %30 = call i32 @join_all_threads(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4)
  %31 = call i32 @sqlite3_enable_shared_cache(i32 0)
  %32 = call i32 @print_and_free_err(%struct.TYPE_10__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @setstoptime(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @sqlite3_enable_shared_cache(i32) #2

declare dso_local i32 @launch_thread(%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i8*) #2

declare dso_local i32 @join_all_threads(%struct.TYPE_10__*, %struct.TYPE_9__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
