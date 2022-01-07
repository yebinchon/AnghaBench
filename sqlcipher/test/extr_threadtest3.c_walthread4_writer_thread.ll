; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_walthread4_writer_thread.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_walthread4_writer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"PRAGMA wal_autocheckpoint = 15;\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"REPLACE INTO t1 VALUES(:iRow, randomblob(300))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @walthread4_writer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @walthread4_writer_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__, align 4
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.TYPE_14__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  store i32 1, i32* %7, align 4
  %10 = call i32 @opendb(%struct.TYPE_14__* %5, %struct.TYPE_13__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %11 = call i32 @sql_script(%struct.TYPE_14__* %5, %struct.TYPE_13__* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %23, %2
  %13 = call i32 @timetostop(%struct.TYPE_14__* %5)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = call i32 @execsql_i64(%struct.TYPE_14__* %5, %struct.TYPE_13__* %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %16
  br label %12

24:                                               ; preds = %12
  %25 = call i32 @closedb(%struct.TYPE_14__* %5, %struct.TYPE_13__* %6)
  %26 = call i32 @print_and_free_err(%struct.TYPE_14__* %5)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @sql_script(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*) #2

declare dso_local i32 @timetostop(%struct.TYPE_14__*) #2

declare dso_local i32 @execsql_i64(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*, i32*) #2

declare dso_local i32 @closedb(%struct.TYPE_14__*, %struct.TYPE_13__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
