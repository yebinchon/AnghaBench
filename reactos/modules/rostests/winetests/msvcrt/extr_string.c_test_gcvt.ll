; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_gcvt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_gcvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"res != NULL\0A\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"res != buf\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"buf = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"err = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"buf[0] = %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gcvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gcvt() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* @errno, align 8
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %5 = call i8* @_gcvt(double 1.200000e+00, i32 -1, i8* %4)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @errno, align 8
  %11 = load i64, i64* @ERANGE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* @errno, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  store i64 0, i64* @errno, align 8
  %16 = call i8* @_gcvt(double 1.200000e+00, i32 5, i8* null)
  store i8* %16, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = icmp eq i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EINVAL, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* @errno, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %28 = call i8* @gcvt(double 1.200000e+00, i32 5, i8* %27)
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %31 = icmp eq i8* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  store i8 120, i8* %41, align 16
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %43 = call i64 @p_gcvt_s(i8* %42, i32 5, i32 1, i32 10)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @ERANGE, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %3, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %48)
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %51 = load i8, i8* %50, align 16
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = sext i8 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  store i8 120, i8* %59, align 16
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %61 = call i64 @p_gcvt_s(i8* %60, i32 4, i32 123456, i32 2)
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @ERANGE, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %3, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %66)
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %74 = load i8, i8* %73, align 16
  %75 = sext i8 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  ret void
}

declare dso_local i8* @_gcvt(double, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @gcvt(double, i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @p_gcvt_s(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
