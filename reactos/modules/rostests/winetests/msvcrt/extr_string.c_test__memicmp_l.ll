; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__memicmp_l.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__memicmp_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test__memicmp_l.s1 = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@test__memicmp_l.s2 = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"aBd\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"errno is %d, expected 0xdeadbeef\0A\00", align 1
@_NLSCMPERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"errno is %d, expected EINVAL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__memicmp_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__memicmp_l() #0 {
  %1 = alloca i32, align 4
  store i32 -559038737, i32* @errno, align 4
  %2 = call i32 @p__memicmp_l(i8* null, i8* null, i32 0, i32* null)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @errno, align 4
  %10 = icmp eq i32 %9, -559038737
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  store i32 -559038737, i32* @errno, align 4
  %14 = call i32 @p__memicmp_l(i8* null, i8* null, i32 1, i32* null)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @_NLSCMPERROR, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @errno, align 4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  store i32 -559038737, i32* @errno, align 4
  %27 = load i8*, i8** @test__memicmp_l.s1, align 8
  %28 = call i32 @p__memicmp_l(i8* %27, i8* null, i32 1, i32* null)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @_NLSCMPERROR, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @errno, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  store i32 -559038737, i32* @errno, align 4
  %41 = load i8*, i8** @test__memicmp_l.s2, align 8
  %42 = call i32 @p__memicmp_l(i8* null, i8* %41, i32 1, i32* null)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @_NLSCMPERROR, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @EINVAL, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  store i32 -559038737, i32* @errno, align 4
  %55 = load i8*, i8** @test__memicmp_l.s1, align 8
  %56 = load i8*, i8** @test__memicmp_l.s2, align 8
  %57 = call i32 @p__memicmp_l(i8* %55, i8* %56, i32 2, i32* null)
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* %1, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @errno, align 4
  %65 = icmp eq i32 %64, -559038737
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  store i32 -559038737, i32* @errno, align 4
  %69 = load i8*, i8** @test__memicmp_l.s1, align 8
  %70 = load i8*, i8** @test__memicmp_l.s2, align 8
  %71 = call i32 @p__memicmp_l(i8* %69, i8* %70, i32 3, i32* null)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = icmp eq i32 %72, -1
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @errno, align 4
  %78 = icmp eq i32 %77, -559038737
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  ret void
}

declare dso_local i32 @p__memicmp_l(i8*, i8*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
