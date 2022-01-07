; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_signal.c_test___pxcptinfoptrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_signal.c_test___pxcptinfoptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"ret == NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"*ret != NULL\0A\00", align 1
@test_value = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@sighandler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to raise SIGSEGV\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"*ret = %p\0A\00", align 1
@SIGABRT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to raise SIGBREAK\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"test_value = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test___pxcptinfoptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test___pxcptinfoptrs() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  %3 = call i8** (...) @__pxcptinfoptrs()
  store i8** %3, i8*** %1, align 8
  %4 = load i8**, i8*** %1, align 8
  %5 = icmp ne i8** %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 (i32, i8*, ...) @ok(i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = load i8**, i8*** %1, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* @test_value, align 4
  %13 = load i8**, i8*** %1, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %13, align 8
  %14 = load i32, i32* @SIGSEGV, align 4
  %15 = load i32, i32* @sighandler, align 4
  %16 = call i32 @signal(i32 %14, i32 %15)
  %17 = load i32, i32* @SIGSEGV, align 4
  %18 = call i32 @raise(i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i8**, i8*** %1, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, inttoptr (i64 3735928559 to i8*)
  %26 = zext i1 %25 to i32
  %27 = load i8**, i8*** %1, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @SIGABRT, align 4
  %31 = load i32, i32* @sighandler, align 4
  %32 = call i32 @signal(i32 %30, i32 %31)
  %33 = load i32, i32* @SIGABRT, align 4
  %34 = call i32 @raise(i32 %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i8**, i8*** %1, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, inttoptr (i64 3735928559 to i8*)
  %42 = zext i1 %41 to i32
  %43 = load i8**, i8*** %1, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @test_value, align 4
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* @test_value, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  ret void
}

declare dso_local i8** @__pxcptinfoptrs(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
