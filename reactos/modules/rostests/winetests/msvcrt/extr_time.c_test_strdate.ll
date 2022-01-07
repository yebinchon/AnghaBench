; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_strdate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_strdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Wrong return value\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Wrong length: returned %d, should be 8\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%02d/%02d/%02d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Wrong format: count = %d, should be 3\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"err = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"date[0] != '\\0'\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"date[1] != 'x'\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"err = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_strdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_strdate() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %10 = call i8* @_strdate(i8* %9)
  store i8* %10, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %13 = icmp eq i8* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 8
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %3, i32* %4, i32* %5)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 3
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  store i32 0, i32* @errno, align 4
  %30 = call i32 @p_strdate_s(i8* null, i32 1)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @errno, align 4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  store i8 120, i8* %43, align 16
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 1
  store i8 120, i8* %44, align 1
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %46 = call i32 @p_strdate_s(i8* %45, i32 8)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ERANGE, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @errno, align 4
  %54 = load i32, i32* @ERANGE, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %60 = load i8, i8* %59, align 16
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 120
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %72 = call i32 @p_strdate_s(i8* %71, i32 9)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %76)
  ret void
}

declare dso_local i8* @_strdate(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @p_strdate_s(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
