; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_pid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"0x7FFFFFFF\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"-100\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"0xFFFFFFFFFFFFFFFFF\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"junk\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parse_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parse_pid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @parse_pid(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert_se(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 100
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  %12 = call i32 @parse_pid(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %2)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 2147483647
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  store i32 65, i32* %2, align 4
  %21 = call i32 @parse_pid(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %2)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @ERANGE, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, 65
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  store i32 65, i32* %2, align 4
  %32 = call i32 @parse_pid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %2)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @ERANGE, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, 65
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  store i32 65, i32* %2, align 4
  %43 = call i32 @parse_pid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %2)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @ERANGE, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert_se(i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 65
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  %54 = call i32 @parse_pid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %2)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert_se(i32 %59)
  %61 = call i32 @parse_pid(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32* %2)
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert_se(i32 %66)
  ret void
}

declare dso_local i32 @parse_pid(i8*, i32*) #1

declare dso_local i32 @assert_se(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
