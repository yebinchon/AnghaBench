; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_dynamic_triggers_2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_dynamic_triggers_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"INSERT INTO t1 VALUES(:iX, :iY+1)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"DELETE FROM t1 WHERE x = :iX\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%d inserts, %d deletes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @dynamic_triggers_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dynamic_triggers_2(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = call i32 @opendb(%struct.TYPE_12__* %5, %struct.TYPE_11__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %13

13:                                               ; preds = %39, %2
  %14 = call i32 @timetostop(%struct.TYPE_12__* %5)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %25, %17
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  %21 = srem i32 %20, 100
  store i32 %21, i32* %7, align 4
  %22 = call i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32*, ...) @execsql(%struct.TYPE_12__* %5, %struct.TYPE_11__* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32* %7)
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %18, label %28

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %36, %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  %32 = srem i32 %31, 100
  store i32 %32, i32* %7, align 4
  %33 = call i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32*, ...) @execsql(%struct.TYPE_12__* %5, %struct.TYPE_11__* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %29, label %39

39:                                               ; preds = %36
  br label %13

40:                                               ; preds = %13
  %41 = call i32 @closedb(%struct.TYPE_12__* %5, %struct.TYPE_11__* %6)
  %42 = call i32 @print_and_free_err(%struct.TYPE_12__* %5)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 %44)
  ret i8* %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32) #2

declare dso_local i32 @timetostop(%struct.TYPE_12__*) #2

declare dso_local i32 @execsql(%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32*, ...) #2

declare dso_local i32 @closedb(%struct.TYPE_12__*, %struct.TYPE_11__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_12__*) #2

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
