; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_error.c_cmp_call4.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_error.c_cmp_call4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strict = common dso_local global i32 0, align 4
@ERROR_MR_MID_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"%s (%x): got %u, expected %u or %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i8*)* @cmp_call4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmp_call4(i32 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @pRtlNtStatusToDosError(i32 %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %30, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @strict, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @ERROR_MR_MID_NOT_FOUND, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ true, %18 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i1 [ false, %15 ], [ %27, %26 ]
  br label %30

30:                                               ; preds = %28, %4
  %31 = phi i1 [ true, %4 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34, i64 %35, i64 %36, i64 %37)
  ret void
}

declare dso_local i64 @pRtlNtStatusToDosError(i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
