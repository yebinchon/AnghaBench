; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-path.c_test_path_makedirectory_directorymode.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-path.c_test_path_makedirectory_directorymode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"/tmp/test-path_makedirectory/\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"path-makedirectory.path\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@REMOVE_ROOT = common dso_local global i32 0, align 4
@REMOVE_PHYSICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_path_makedirectory_directorymode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_path_makedirectory_directorymode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stat, align 4
  store i32* %0, i32** %2, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = ptrtoint i32* %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @F_OK, align 4
  %11 = call i64 @access(i8* %9, i32 %10)
  %12 = icmp slt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @manager_load_startable_unit_or_warn(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* null, i32** %4)
  %17 = icmp sge i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @unit_start(i32* %20)
  %22 = icmp sge i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @F_OK, align 4
  %27 = call i64 @access(i8* %25, i32 %26)
  %28 = icmp sge i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @stat(i8* %31, %struct.stat* %5)
  %33 = icmp sge i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @S_IRWXU, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 448
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @S_IRWXG, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 32
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert_se(i32 %48)
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @S_IRWXO, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 4
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert_se(i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @unit_stop(i32* %57)
  %59 = icmp sge i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert_se(i32 %60)
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* @REMOVE_ROOT, align 4
  %64 = load i32, i32* @REMOVE_PHYSICAL, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @rm_rf(i8* %62, i32 %65)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @manager_load_startable_unit_or_warn(i32*, i8*, i32*, i32**) #1

declare dso_local i64 @unit_start(i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @unit_stop(i32*) #1

declare dso_local i32 @rm_rf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
