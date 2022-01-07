; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_permille_unbounded.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_permille_unbounded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"1001\E2\80\B0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"4000\E2\80\B0\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"2147483647\E2\80\B0\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"2147483648\E2\80\B0\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"4294967295\E2\80\B0\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"4294967296\E2\80\B0\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"101%\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"400%\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"214748364.7%\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"214748364.8%\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"429496729.5%\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"429496729.6%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parse_permille_unbounded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parse_permille_unbounded() #0 {
  %1 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %2 = icmp eq i32 %1, 1001
  %3 = zext i1 %2 to i32
  %4 = call i32 @assert_se(i32 %3)
  %5 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp eq i32 %5, 4000
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %10 = icmp eq i32 %9, 2147483647
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* @ERANGE, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* @ERANGE, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %26 = load i32, i32* @ERANGE, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %32 = icmp eq i32 %31, 1010
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert_se(i32 %33)
  %35 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %36 = icmp eq i32 %35, 4000
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %40 = icmp eq i32 %39, 2147483647
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %44 = load i32, i32* @ERANGE, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert_se(i32 %47)
  %49 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %50 = load i32, i32* @ERANGE, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert_se(i32 %53)
  %55 = call i32 @parse_permille_unbounded(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %56 = load i32, i32* @ERANGE, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert_se(i32 %59)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @parse_permille_unbounded(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
