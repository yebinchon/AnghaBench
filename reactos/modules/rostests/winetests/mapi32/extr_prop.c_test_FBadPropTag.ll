; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_FBadPropTag.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_FBadPropTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROP_ID_INVALID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MV_FLAG = common dso_local global i32 0, align 4
@PROP_TYPE_MASK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"pt= %d: Expected non-zero, got 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"pt= %d: Expected zero, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FBadPropTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FBadPropTag() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %37, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @PROP_ID_INVALID, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = load i64, i64* @TRUE, align 8
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @MV_FLAG, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* @PROP_TYPE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = and i32 %10, %14
  switch i32 %15, label %18 [
    i32 128, label %16
    i32 135, label %16
    i32 138, label %16
    i32 137, label %16
    i32 133, label %16
    i32 132, label %16
    i32 140, label %16
    i32 144, label %16
    i32 139, label %16
    i32 142, label %16
    i32 134, label %16
    i32 136, label %16
    i32 131, label %16
    i32 129, label %16
    i32 130, label %16
    i32 141, label %16
    i32 143, label %16
  ]

16:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %16, %8
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @pFBadPropTag(i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i64, i64* %3, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %1, align 4
  %28 = call i32 (i32, i8*, i32, ...) @ok(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %36

29:                                               ; preds = %18
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 (i32, i8*, i32, ...) @ok(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %4

40:                                               ; preds = %4
  ret void
}

declare dso_local i32 @pFBadPropTag(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
