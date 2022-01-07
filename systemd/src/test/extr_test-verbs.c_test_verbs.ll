; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-verbs.c_test_verbs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-verbs.c_test_verbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@test_verbs.verbs = internal constant [9 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 130, i32 130, i32 0, i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 130, i32 1, i32 0, i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 130, i32 2, i32 129, i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 130, i32 0, i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 130, i32 130, i32 0, i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 2, i32 130, i32 0, i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 2, i32 2, i32 0, i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 3, i32 4, i32 0, i32 128 }, %struct.TYPE_3__ zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"list-images\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"terminate\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"copy-to\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"command-not-found\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"quux\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"qaax\00", align 1
@STRV_MAKE_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_verbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_verbs() #0 {
  %1 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %2 = load i32, i32* @EINVAL, align 4
  %3 = sub nsw i32 0, %2
  %4 = call i32 @test_dispatch_one(i32 %1, %struct.TYPE_3__* getelementptr inbounds ([9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* @test_verbs.verbs, i64 0, i64 0), i32 %3)
  %5 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @test_dispatch_one(i32 %5, %struct.TYPE_3__* getelementptr inbounds ([9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* @test_verbs.verbs, i64 0, i64 0), i32 0)
  %7 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32 @test_dispatch_one(i32 %7, %struct.TYPE_3__* getelementptr inbounds ([9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* @test_verbs.verbs, i64 0, i64 0), i32 %9)
  %11 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %12 = call i32 @test_dispatch_one(i32 %11, %struct.TYPE_3__* getelementptr inbounds ([9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* @test_verbs.verbs, i64 0, i64 0), i32 0)
  %13 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @test_dispatch_one(i32 %13, %struct.TYPE_3__* getelementptr inbounds ([9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* @test_verbs.verbs, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @STRV_MAKE_EMPTY, align 4
  %18 = call i32 @test_dispatch_one(i32 %17, %struct.TYPE_3__* getelementptr inbounds ([9 x %struct.TYPE_3__], [9 x %struct.TYPE_3__]* @test_verbs.verbs, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i32 @test_dispatch_one(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @STRV_MAKE(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
