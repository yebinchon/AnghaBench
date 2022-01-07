; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_safe_atoux16.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_safe_atoux16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"  1234\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"  -1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"junk\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"123x\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"12.3\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_safe_atoux16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_safe_atoux16() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @safe_atoux16(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert_se(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 4660
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  %12 = call i32 @safe_atoux16(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %2)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 43981
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = call i32 @safe_atoux16(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %2)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 4660
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert_se(i32 %28)
  %30 = call i32 @safe_atoux16(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %2)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  %37 = call i32 @safe_atoux16(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %2)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @ERANGE, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert_se(i32 %42)
  %44 = call i32 @safe_atoux16(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %2)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @ERANGE, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert_se(i32 %49)
  %51 = call i32 @safe_atoux16(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %2)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert_se(i32 %56)
  %58 = call i32 @safe_atoux16(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %2)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert_se(i32 %63)
  %65 = call i32 @safe_atoux16(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %2)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert_se(i32 %70)
  %72 = call i32 @safe_atoux16(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i32* %2)
  store i32 %72, i32* %1, align 4
  %73 = load i32, i32* %1, align 4
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert_se(i32 %77)
  ret void
}

declare dso_local i32 @safe_atoux16(i8*, i32*) #1

declare dso_local i32 @assert_se(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
