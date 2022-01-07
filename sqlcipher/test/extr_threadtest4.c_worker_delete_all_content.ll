; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest4.c_worker_delete_all_content.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest4.c_worker_delete_all_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DELETE FROM t1 WHERE tid=%d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"DELETE FROM t2 WHERE tid=%d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"DELETE FROM t3 WHERE tid=%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @worker_delete_all_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @worker_delete_all_content(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pthread_mutex_lock(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 (%struct.TYPE_4__*, i8*, ...) @run_sql(%struct.TYPE_4__* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.TYPE_4__*, i8*, ...) @run_sql(%struct.TYPE_4__* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.TYPE_4__*, i8*, ...) @run_sql(%struct.TYPE_4__* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.TYPE_4__*, i8*, ...) @run_sql(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = call i32 (%struct.TYPE_4__*, i8*, ...) @run_sql(%struct.TYPE_4__* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pthread_mutex_unlock(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %91

39:                                               ; preds = %2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pthread_mutex_lock(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.TYPE_4__*, i8*, ...) @run_sql(%struct.TYPE_4__* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pthread_mutex_unlock(i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pthread_mutex_lock(i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.TYPE_4__*, i8*, ...) @run_sql(%struct.TYPE_4__* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pthread_mutex_unlock(i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pthread_mutex_lock(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (%struct.TYPE_4__*, i8*, ...) @run_sql(%struct.TYPE_4__* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pthread_mutex_unlock(i32 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %39, %7
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32) #1

declare dso_local i32 @run_sql(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
