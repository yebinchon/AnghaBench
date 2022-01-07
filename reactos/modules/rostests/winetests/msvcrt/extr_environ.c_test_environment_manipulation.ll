; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_environ.c_test_environment_manipulation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_environ.c_test_environment_manipulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"cat=\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"_putenv failed on deletion of nonexistent environment variable\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cat=dog\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed setting cat=dog\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dog\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"getenv did not return 'dog'\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"failed deleting cat\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"should not accept '=' as input\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"=dog\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"should not accept '=dog' as input\0A\00", align 1
@a_very_long_env_string = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [44 x i8] c"_putenv failed for long environment string\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"nonexistent\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"getenv should fail with nonexistent var name\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_environment_manipulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_environment_manipulation() #0 {
  %1 = call i32 @_putenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @ok(i32 %3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @_putenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i64 @strcmp(i32* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 @_putenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %18 = call i32 @_putenv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %19 = icmp eq i32 %18, -1
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %22 = call i32 @_putenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %23 = icmp eq i32 %22, -1
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %26 = load i8*, i8** @a_very_long_env_string, align 8
  %27 = call i32 @_putenv(i8* %26)
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  %31 = call i32* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @_putenv(i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
