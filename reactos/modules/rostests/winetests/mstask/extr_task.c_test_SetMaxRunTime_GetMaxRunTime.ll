; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task.c_test_SetMaxRunTime_GetMaxRunTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task.c_test_SetMaxRunTime_GetMaxRunTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Failed to setup test_task\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to create task.  Skipping tests.\0A\00", align 1
@test_task = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to get max runtime: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Expected 259200000: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to set max runtime: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Expected 1234: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Expected 0: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Expected 1: %d\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Expected INFINITE: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetMaxRunTime_GetMaxRunTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetMaxRunTime_GetMaxRunTime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @setup_task()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 (i32, i8*, ...) @ok(i32 %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %112

11:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  %12 = load i32, i32* @test_task, align 4
  %13 = call i32 @ITask_GetMaxRunTime(i32 %12, i32* %3)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 259200000
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  store i32 0, i32* %3, align 4
  %25 = load i32, i32* @test_task, align 4
  %26 = call i32 @ITask_SetMaxRunTime(i32 %25, i32 1234)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %2, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @test_task, align 4
  %34 = call i32 @ITask_GetMaxRunTime(i32 %33, i32* %3)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 1234
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  store i32 1, i32* %3, align 4
  %46 = load i32, i32* @test_task, align 4
  %47 = call i32 @ITask_SetMaxRunTime(i32 %46, i32 0)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @test_task, align 4
  %55 = call i32 @ITask_GetMaxRunTime(i32 %54, i32* %3)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @S_OK, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %3, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  store i32 0, i32* %3, align 4
  %67 = load i32, i32* @test_task, align 4
  %68 = call i32 @ITask_SetMaxRunTime(i32 %67, i32 1)
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @S_OK, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %2, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @test_task, align 4
  %76 = call i32 @ITask_GetMaxRunTime(i32 %75, i32* %3)
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @S_OK, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %2, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %83, 1
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %3, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  store i32 0, i32* %3, align 4
  %88 = load i32, i32* @test_task, align 4
  %89 = load i32, i32* @INFINITE, align 4
  %90 = call i32 @ITask_SetMaxRunTime(i32 %88, i32 %89)
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @S_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %2, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @test_task, align 4
  %98 = call i32 @ITask_GetMaxRunTime(i32 %97, i32* %3)
  store i32 %98, i32* %2, align 4
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @S_OK, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %2, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @INFINITE, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %3, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = call i32 (...) @cleanup_task()
  br label %112

112:                                              ; preds = %11, %9
  ret void
}

declare dso_local i32 @setup_task(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ITask_GetMaxRunTime(i32, i32*) #1

declare dso_local i32 @ITask_SetMaxRunTime(i32, i32) #1

declare dso_local i32 @cleanup_task(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
