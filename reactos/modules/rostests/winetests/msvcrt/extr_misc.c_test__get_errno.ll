; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_misc.c_test__get_errno.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_misc.c_test__get_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Expected _get_errno to return EINVAL, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Expected errno to be EBADF, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Expected _get_errno to return 0, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Expected output variable to be EBADF, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__get_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__get_errno() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @EBADF, align 4
  store i32 %3, i32* @errno, align 4
  %4 = call i32 @p_get_errno(i32* null)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @errno, align 4
  %12 = load i32, i32* @EBADF, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EBADF, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -559038737, i32* %2, align 4
  %18 = call i32 @p_get_errno(i32* %2)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @EBADF, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  ret void
}

declare dso_local i32 @p_get_errno(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
