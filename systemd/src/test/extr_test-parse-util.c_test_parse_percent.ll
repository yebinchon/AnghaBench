; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_percent.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"0%\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"55%\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"100%\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"-7%\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"107%\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%%\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%1\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"1%%\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"3.2%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parse_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parse_percent() #0 {
  %1 = call i32 @parse_percent(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @EINVAL, align 4
  %3 = sub nsw i32 0, %2
  %4 = icmp eq i32 %1, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert_se(i32 %5)
  %7 = call i32 @parse_percent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = icmp eq i32 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = call i32 @parse_percent(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = call i32 @parse_percent(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = call i32 @parse_percent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = call i32 @parse_percent(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  %37 = call i32 @parse_percent(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert_se(i32 %39)
  %41 = call i32 @parse_percent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %42 = icmp eq i32 %41, 55
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert_se(i32 %43)
  %45 = call i32 @parse_percent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %46 = icmp eq i32 %45, 100
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert_se(i32 %47)
  %49 = call i32 @parse_percent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %50 = load i32, i32* @ERANGE, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert_se(i32 %53)
  %55 = call i32 @parse_percent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %56 = load i32, i32* @ERANGE, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert_se(i32 %59)
  %61 = call i32 @parse_percent(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert_se(i32 %65)
  %67 = call i32 @parse_percent(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert_se(i32 %71)
  %73 = call i32 @parse_percent(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert_se(i32 %77)
  %79 = call i32 @parse_percent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert_se(i32 %83)
  %85 = call i32 @parse_percent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert_se(i32 %89)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @parse_percent(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
