; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__memicmp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__memicmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test__memicmp.s1 = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@test__memicmp.s2 = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"aBd\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@p__memicmp_l = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@_NLSCMPERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"errno is %d, expected EINVAL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__memicmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__memicmp() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @p__memicmp(i8* null, i8* null, i32 0)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = load i8*, i8** @test__memicmp.s1, align 8
  %10 = load i8*, i8** @test__memicmp.s2, align 8
  %11 = call i32 @p__memicmp(i8* %9, i8* %10, i32 2)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load i8*, i8** @test__memicmp.s1, align 8
  %19 = load i8*, i8** @test__memicmp.s2, align 8
  %20 = call i32 @p__memicmp(i8* %18, i8* %19, i32 3)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp eq i32 %21, -1
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @p__memicmp_l, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %0
  br label %71

29:                                               ; preds = %0
  store i32 -559038737, i32* @errno, align 4
  %30 = call i32 @p__memicmp(i8* null, i8* null, i32 1)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @_NLSCMPERROR, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @errno, align 4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  store i32 -559038737, i32* @errno, align 4
  %43 = load i8*, i8** @test__memicmp.s1, align 8
  %44 = call i32 @p__memicmp(i8* %43, i8* null, i32 1)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @_NLSCMPERROR, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @errno, align 4
  %52 = load i32, i32* @EINVAL, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  store i32 -559038737, i32* @errno, align 4
  %57 = load i8*, i8** @test__memicmp.s2, align 8
  %58 = call i32 @p__memicmp(i8* null, i8* %57, i32 1)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @_NLSCMPERROR, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* @EINVAL, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @p__memicmp(i8*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
