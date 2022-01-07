; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-path.c_test_path_unit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-path.c_test_path_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"/tmp/test-path_unit\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"path-unit.path\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"path-mycustomunit.service\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_path_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_path_unit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = ptrtoint i32* %5 to i32
  %7 = call i32 @assert_se(i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @manager_load_startable_unit_or_warn(i32* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null, i32** %4)
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @unit_start(i32* %13)
  %15 = icmp sge i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @touch(i8* %18)
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @check_stop_unlink(i32* %23, i32* %24, i8* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @manager_load_startable_unit_or_warn(i32*, i8*, i32*, i32**) #1

declare dso_local i64 @unit_start(i32*) #1

declare dso_local i64 @touch(i8*) #1

declare dso_local i32 @check_stop_unlink(i32*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
