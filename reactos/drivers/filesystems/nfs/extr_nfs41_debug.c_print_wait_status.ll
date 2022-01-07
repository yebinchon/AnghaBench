; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/nfs/extr_nfs41_debug.c_print_wait_status.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/nfs/extr_nfs41_debug.c_print_wait_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [54 x i8] c"%s Got a wakeup call, finishing %s entry=%p xid=%lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s Got a wakeup call\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s KeWaitForSingleObject returned STATUS_USER_APC\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%s KeWaitForSingleObject returned STATUS_ALERTED\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s KeWaitForSingleObject returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_wait_status(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  br label %41

16:                                               ; preds = %6
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %37 [
    i32 129, label %18
    i32 128, label %31
    i32 130, label %34
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 (i8*, i8*, ...) @DbgP(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23, i32 %24, i32 %25)
  br label %30

27:                                               ; preds = %18
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 (i8*, i8*, ...) @DbgP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %21
  br label %41

31:                                               ; preds = %16
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 (i8*, i8*, ...) @DbgP(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %41

34:                                               ; preds = %16
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 (i8*, i8*, ...) @DbgP(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  br label %41

37:                                               ; preds = %16
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i8*, i8*, ...) @DbgP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %15, %37, %34, %31, %30
  ret void
}

declare dso_local i32 @DbgP(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
