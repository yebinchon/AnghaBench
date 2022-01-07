; ModuleID = '/home/carl/AnghaBench/redis/utils/lru/extr_lfu-simulation.c_show_entry.c'
source_filename = "/home/carl/AnghaBench/redis/utils/lru/extr_lfu-simulation.c_show_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"normal       \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"new no access\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"new accessed \00", align 1
@keyspace_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"old no access\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"%ld] <%s> frequency:%d decrtime:%d [%lu hits | age:%ld sec]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_entry(i64 %0, %struct.entry* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.entry* %1, %struct.entry** %4, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp sge i64 %6, 10
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = icmp sle i64 %9, 14
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %12

12:                                               ; preds = %11, %8, %2
  %13 = load i64, i64* %3, align 8
  %14 = icmp sge i64 %13, 15
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i64, i64* %3, align 8
  %17 = icmp sle i64 %16, 19
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %19

19:                                               ; preds = %18, %15, %12
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* @keyspace_size, align 4
  %22 = sub nsw i32 %21, 5
  %23 = sext i32 %22 to i64
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i64, i64* %3, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.entry*, %struct.entry** %4, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.entry*, %struct.entry** %4, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.entry*, %struct.entry** %4, align 8
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @time(i32* null)
  %39 = load %struct.entry*, %struct.entry** %4, align 8
  %40 = getelementptr inbounds %struct.entry, %struct.entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %27, i8* %28, i32 %31, i32 %34, i64 %37, i64 %42)
  ret void
}

declare dso_local i32 @printf(i8*, i64, i8*, i32, i32, i64, i64) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
