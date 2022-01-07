; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_stage_info_.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_stage_info_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Staged changes to %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Staged changes\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unstaged changes to %s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Unstaged changes\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Untracked file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_stage_info_(i8* %0, i64 %1, i32 %2, %struct.status* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.status*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.status* %3, %struct.status** %8, align 8
  %11 = load %struct.status*, %struct.status** %8, align 8
  %12 = icmp ne %struct.status* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.status*, %struct.status** %8, align 8
  %15 = getelementptr inbounds %struct.status, %struct.status* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i8* [ %17, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %18 ]
  store i8* %20, i8** %9, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %46 [
    i32 130, label %22
    i32 129, label %33
    i32 128, label %44
    i32 131, label %45
  ]

22:                                               ; preds = %19
  %23 = load %struct.status*, %struct.status** %8, align 8
  %24 = icmp ne %struct.status* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.status*, %struct.status** %8, align 8
  %27 = getelementptr inbounds %struct.status, %struct.status* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %32

31:                                               ; preds = %25, %22
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %32

32:                                               ; preds = %31, %30
  br label %47

33:                                               ; preds = %19
  %34 = load %struct.status*, %struct.status** %8, align 8
  %35 = icmp ne %struct.status* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.status*, %struct.status** %8, align 8
  %38 = getelementptr inbounds %struct.status, %struct.status* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %43

42:                                               ; preds = %36, %33
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %43

43:                                               ; preds = %42, %41
  br label %47

44:                                               ; preds = %19
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %47

45:                                               ; preds = %19
  br label %46

46:                                               ; preds = %19, %45
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %47

47:                                               ; preds = %46, %44, %43, %32
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @string_nformat(i8* %48, i64 %49, i32* null, i8* %50, i8* %51)
  ret i32 %52
}

declare dso_local i32 @string_nformat(i8*, i64, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
