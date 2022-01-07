; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_walk_pool_directory.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_walk_pool_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ztest_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@spa_namespace_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ztest_walk_pool_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_walk_pool_directory(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %5 = icmp sge i32 %4, 6
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  br label %11

11:                                               ; preds = %22, %9
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @spa_next(i32* %12)
  store i32* %13, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %17 = icmp sge i32 %16, 6
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @spa_name(i32* %19)
  %21 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %15
  br label %11

23:                                               ; preds = %11
  %24 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @spa_next(i32*) #1

declare dso_local i8* @spa_name(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
