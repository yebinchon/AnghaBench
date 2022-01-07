; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-load-fragment.c_test_config_parse_capability_set.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-load-fragment.c_test_config_parse_capability_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"CapabilityBoundingSet\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CAP_NET_RAW\00", align 1
@CAP_NET_RAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"CAP_NET_ADMIN\00", align 1
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"~CAP_NET_ADMIN\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"  'CAP_NET_RAW' WAT_CAP??? CAP_NET_ADMIN CAP'_trailing_garbage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_config_parse_capability_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_config_parse_capability_set() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @config_parse_capability_set(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %2, i32* null)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp sge i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert_se(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @CAP_NET_RAW, align 4
  %10 = call i32 @make_cap(i32 %9)
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = call i32 @config_parse_capability_set(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %2, i32* null)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @CAP_NET_RAW, align 4
  %21 = call i32 @make_cap(i32 %20)
  %22 = load i32, i32* @CAP_NET_ADMIN, align 4
  %23 = call i32 @make_cap(i32 %22)
  %24 = or i32 %21, %23
  %25 = icmp eq i32 %19, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = call i32 @config_parse_capability_set(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %2, i32* null)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp sge i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @CAP_NET_RAW, align 4
  %35 = call i32 @make_cap(i32 %34)
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = call i32 @config_parse_capability_set(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32* %2, i32* null)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp sge i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert_se(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @UINT64_C(i32 0)
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert_se(i32 %47)
  %49 = call i32 @config_parse_capability_set(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* %2, i32* null)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = icmp sge i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @cap_test_all(i32 %54)
  %56 = call i32 @assert_se(i32 %55)
  store i32 0, i32* %2, align 4
  %57 = call i32 @config_parse_capability_set(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i32* %2, i32* null)
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* %1, align 4
  %59 = icmp sge i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert_se(i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @CAP_NET_RAW, align 4
  %64 = call i32 @make_cap(i32 %63)
  %65 = load i32, i32* @CAP_NET_ADMIN, align 4
  %66 = call i32 @make_cap(i32 %65)
  %67 = or i32 %64, %66
  %68 = icmp eq i32 %62, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert_se(i32 %69)
  ret void
}

declare dso_local i32 @config_parse_capability_set(i32*, i8*, i32, i8*, i32, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @make_cap(i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @cap_test_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
