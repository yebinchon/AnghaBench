; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_remove_task_from_db.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_remove_task_from_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"DELETE FROM CloneTasks WHERE repo_id='%s'\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"DELETE FROM CloneEncInfo WHERE repo_id='%s'\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"DELETE FROM CloneVersionInfo WHERE repo_id='%s'\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"DELETE FROM CloneTasksMoreInfo WHERE repo_id='%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @remove_task_from_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_task_from_db(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @snprintf(i8* %7, i32 256, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %14 = call i64 @sqlite_query_exec(i32 %12, i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @snprintf(i8* %18, i32 256, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %25 = call i64 @sqlite_query_exec(i32 %23, i8* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %51

28:                                               ; preds = %17
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @snprintf(i8* %29, i32 256, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %36 = call i64 @sqlite_query_exec(i32 %34, i8* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %51

39:                                               ; preds = %28
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @snprintf(i8* %40, i32 256, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %47 = call i64 @sqlite_query_exec(i32 %45, i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %51

50:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %38, %27, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @sqlite_query_exec(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
