; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-exec-util.c_test_exec_command_flags_from_strv.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-exec-util.c_test_exec_command_flags_from_strv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"no-env-expand\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no-setuid\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ignore-failure\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"nonexistent-option\00", align 1
@EXEC_COMMAND_NO_ENV_EXPAND = common dso_local global i32 0, align 4
@EXEC_COMMAND_NO_SETUID = common dso_local global i32 0, align 4
@EXEC_COMMAND_IGNORE_FAILURE = common dso_local global i32 0, align 4
@EXEC_COMMAND_AMBIENT_MAGIC = common dso_local global i32 0, align 4
@EXEC_COMMAND_FULLY_PRIVILEGED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_exec_command_flags_from_strv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_exec_command_flags_from_strv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i8** (i8*, i8*, i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8** %5, i8*** %2, align 8
  %6 = call i8** (i8*, i8*, i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8** %6, i8*** %3, align 8
  %7 = load i8**, i8*** %2, align 8
  %8 = call i32 @exec_command_flags_from_strv(i8** %7, i32* %1)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @EXEC_COMMAND_NO_ENV_EXPAND, align 4
  %15 = call i32 @FLAGS_SET(i32 %13, i32 %14)
  %16 = call i32 @assert_se(i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @EXEC_COMMAND_NO_SETUID, align 4
  %19 = call i32 @FLAGS_SET(i32 %17, i32 %18)
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @EXEC_COMMAND_IGNORE_FAILURE, align 4
  %23 = call i32 @FLAGS_SET(i32 %21, i32 %22)
  %24 = call i32 @assert_se(i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @EXEC_COMMAND_AMBIENT_MAGIC, align 4
  %27 = call i32 @FLAGS_SET(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @EXEC_COMMAND_FULLY_PRIVILEGED, align 4
  %34 = call i32 @FLAGS_SET(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = load i8**, i8*** %3, align 8
  %40 = call i32 @exec_command_flags_from_strv(i8** %39, i32* %1)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  ret void
}

declare dso_local i8** @STRV_MAKE(i8*, i8*, i8*, ...) #1

declare dso_local i32 @exec_command_flags_from_strv(i8**, i32*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @FLAGS_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
