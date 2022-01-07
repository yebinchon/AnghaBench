; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_tt3_stress.c_stress_thread_3.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_tt3_stress.c_stress_thread_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SELECT * FROM t1 ORDER BY a;\00", align 1
@SQLITE_LOCKED = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"read t1 %d/%d attempts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @stress_thread_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stress_thread_3(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 @opendb(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %12

12:                                               ; preds = %26, %2
  %13 = call i32 @timetostop(%struct.TYPE_13__* %5)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = call i32 @sql_script(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32, i32* @SQLITE_LOCKED, align 4
  %28 = call i32 @clear_error(%struct.TYPE_13__* %5, i32 %27)
  %29 = load i32, i32* @SQLITE_ERROR, align 4
  %30 = call i32 @clear_error(%struct.TYPE_13__* %5, i32 %29)
  br label %12

31:                                               ; preds = %12
  %32 = call i32 @closedb(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6)
  %33 = call i32 @print_and_free_err(%struct.TYPE_13__* %5)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35)
  ret i8* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @timetostop(%struct.TYPE_13__*) #2

declare dso_local i32 @sql_script(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*) #2

declare dso_local i32 @clear_error(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @closedb(%struct.TYPE_13__*, %struct.TYPE_12__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_13__*) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
