; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_misc.c_test__set_errno.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_misc.c_test__set_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Expected _set_errno to return 0, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected errno to be EINVAL, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Expected errno to be -1, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Expected errno to be 0xdeadbeef, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__set_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__set_errno() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EBADF, align 4
  store i32 %2, i32* @errno, align 4
  %3 = load i32, i32* @EINVAL, align 4
  %4 = call i32 @p_set_errno(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @errno, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EBADF, align 4
  store i32 %16, i32* @errno, align 4
  %17 = call i32 @p_set_errno(i32 -1)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @errno, align 4
  %24 = icmp eq i32 %23, -1
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EBADF, align 4
  store i32 %28, i32* @errno, align 4
  %29 = call i32 @p_set_errno(i32 -559038737)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @errno, align 4
  %36 = icmp eq i32 %35, -559038737
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local i32 @p_set_errno(i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
