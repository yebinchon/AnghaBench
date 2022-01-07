; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-conf-parser.c_test_config_parse_int.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-conf-parser.c_test_config_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-1024\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"99999999999999999999999999999999999999999999999999999999\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"-99999999999999999999999999999999999999999999999999999999\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"1G\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_config_parse_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_config_parse_int() #0 {
  %1 = call i32 @test_config_parse_int_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1024)
  %2 = call i32 @test_config_parse_int_one(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1024)
  %3 = call i32 @test_config_parse_int_one(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %4 = call i32 @test_config_parse_int_one(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %5 = call i32 @test_config_parse_int_one(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %6 = call i32 @test_config_parse_int_one(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  %7 = call i32 @test_config_parse_int_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  ret void
}

declare dso_local i32 @test_config_parse_int_one(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
