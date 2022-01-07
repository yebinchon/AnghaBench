; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_test-networkd-conf.c_test_config_parse_duid_type.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_test-networkd-conf.c_test_config_parse_duid_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"link-layer-time\00", align 1
@DUID_TYPE_LLT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"link-layer-time:2000-01-01 00:00:00 UTC\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@DUID_TYPE_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"vendor:2000-01-01 00:00:00 UTC\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"link-layer\00", align 1
@DUID_TYPE_LL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"link-layer:2000-01-01 00:00:00 UTC\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@DUID_TYPE_UUID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"uuid:2000-01-01 00:00:00 UTC\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"foo:2000-01-01 00:00:00 UTC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_config_parse_duid_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_config_parse_duid_type() #0 {
  %1 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  %2 = load i32, i32* @DUID_TYPE_LLT, align 4
  %3 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %2, i32 0)
  %4 = load i32, i32* @DUID_TYPE_LLT, align 4
  %5 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %4, i32 993517568)
  %6 = load i32, i32* @DUID_TYPE_EN, align 4
  %7 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %6, i32 0)
  %8 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %9 = load i32, i32* @DUID_TYPE_LL, align 4
  %10 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %9, i32 0)
  %11 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0, i32 0)
  %12 = load i32, i32* @DUID_TYPE_UUID, align 4
  %13 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %12, i32 0)
  %14 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0, i32 0)
  %15 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 0, i32 0)
  %16 = call i32 @test_config_parse_duid_type_one(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @test_config_parse_duid_type_one(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
