; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_FBadColumnSet.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_FBadColumnSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }

@.str = private unnamed_addr constant [34 x i8] c"(null): Expected non-zero, got 0\0A\00", align 1
@PROP_ID_INVALID = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MV_FLAG = common dso_local global i64 0, align 8
@PROP_TYPE_MASK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@PT_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"pt= %d: Expected non-zero, got 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"pt= %d: Expected zero, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FBadColumnSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FBadColumnSet() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i64 @pFBadColumnSet(%struct.TYPE_3__* null)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 1, i32* %10, align 8
  store i64 0, i64* %2, align 8
  br label %11

11:                                               ; preds = %55, %0
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @PROP_ID_INVALID, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load i64, i64* @TRUE, align 8
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @MV_FLAG, align 8
  %23 = xor i64 %22, -1
  %24 = load i64, i64* @PROP_TYPE_MASK, align 8
  %25 = and i64 %23, %24
  %26 = and i64 %21, %25
  switch i64 %26, label %29 [
    i64 128, label %27
    i64 135, label %27
    i64 138, label %27
    i64 137, label %27
    i64 133, label %27
    i64 132, label %27
    i64 139, label %27
    i64 143, label %27
    i64 141, label %27
    i64 134, label %27
    i64 136, label %27
    i64 131, label %27
    i64 129, label %27
    i64 130, label %27
    i64 140, label %27
    i64 142, label %27
  ]

27:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %27, %15
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @MV_FLAG, align 8
  %32 = load i64, i64* @PT_ERROR, align 8
  %33 = or i64 %31, %32
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %35, %29
  %38 = call i64 @pFBadColumnSet(%struct.TYPE_3__* %1)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i64, i64* %3, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %2, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  br label %54

47:                                               ; preds = %37
  %48 = load i64, i64* %3, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* %3, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %47, %41
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %2, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %2, align 8
  br label %11

58:                                               ; preds = %11
  ret void
}

declare dso_local i64 @pFBadColumnSet(%struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
