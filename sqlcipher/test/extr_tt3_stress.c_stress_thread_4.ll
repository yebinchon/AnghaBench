; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_tt3_stress.c_stress_thread_4.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_tt3_stress.c_stress_thread_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [123 x i8] c"WITH loop(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM loop LIMIT 200) INSERT INTO t1 VALUES(randomblob(60), randomblob(60));\00", align 1
@SQLITE_LOCKED = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"wrote t1 %d/%d attempts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @stress_thread_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stress_thread_4(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @PTR2INT(i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = call i32 @opendb(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %15

15:                                               ; preds = %35, %2
  %16 = call i32 @timetostop(%struct.TYPE_13__* %5)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call i32 @closedb(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6)
  %24 = call i32 @opendb(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i32 @sql_script(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* @SQLITE_LOCKED, align 4
  %37 = call i32 @clear_error(%struct.TYPE_13__* %5, i32 %36)
  %38 = load i32, i32* @SQLITE_ERROR, align 4
  %39 = call i32 @clear_error(%struct.TYPE_13__* %5, i32 %38)
  br label %15

40:                                               ; preds = %15
  %41 = call i32 @closedb(%struct.TYPE_13__* %5, %struct.TYPE_12__* %6)
  %42 = call i32 @print_and_free_err(%struct.TYPE_13__* %5)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  ret i8* %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PTR2INT(i8*) #2

declare dso_local i32 @opendb(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @timetostop(%struct.TYPE_13__*) #2

declare dso_local i32 @closedb(%struct.TYPE_13__*, %struct.TYPE_12__*) #2

declare dso_local i32 @sql_script(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*) #2

declare dso_local i32 @clear_error(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_13__*) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
