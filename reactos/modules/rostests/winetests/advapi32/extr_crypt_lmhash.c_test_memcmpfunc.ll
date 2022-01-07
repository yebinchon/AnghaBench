; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_memcmpfunc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_memcmpfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"function is not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"wrong error code\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i8*, i8*)*)* @test_memcmpfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memcmpfunc(i32 (i8*, i8*)* %0) #0 {
  %2 = alloca i32 (i8*, i8*)*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  store i32 (i8*, i8*)* %0, i32 (i8*, i8*)** %2, align 8
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %2, align 8
  %7 = icmp ne i32 (i8*, i8*)* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @win_skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %61

10:                                               ; preds = %1
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i32 32)
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 0, i32 32)
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 16
  store i8 1, i8* %15, align 16
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %2, align 8
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %19 = call i32 %16(i8* %17, i8* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %25 = call i32 @memset(i8* %24, i32 1, i32 32)
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %27 = call i32 @memset(i8* %26, i32 1, i32 32)
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 16
  store i8 0, i8* %28, align 16
  %29 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %2, align 8
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %32 = call i32 %29(i8* %30, i8* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %38 = call i32 @memset(i8* %37, i32 0, i32 32)
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %40 = call i32 @memset(i8* %39, i32 1, i32 32)
  %41 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %2, align 8
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %44 = call i32 %41(i8* %42, i8* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %50 = call i32 @memset(i8* %49, i32 1, i32 32)
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %52 = call i32 @memset(i8* %51, i32 0, i32 32)
  %53 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %2, align 8
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %56 = call i32 %53(i8* %54, i8* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %10, %8
  ret void
}

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
