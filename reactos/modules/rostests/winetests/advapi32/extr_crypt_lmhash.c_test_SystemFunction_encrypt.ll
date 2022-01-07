; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction_encrypt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"SystemFunction%03d is not available\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"wrong error code\0A\00", align 1
@des_plaintext = common dso_local global i32* null, align 8
@des_key = common dso_local global i32* null, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@des_ciphertext = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ciphertext wrong (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i32*, i32*, i8*)*, i32)* @test_SystemFunction_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction_encrypt(i32 (i32*, i32*, i8*)* %0, i32 %1) #0 {
  %3 = alloca i32 (i32*, i32*, i8*)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [17 x i8], align 16
  %6 = alloca i32, align 4
  store i32 (i32*, i32*, i8*)* %0, i32 (i32*, i32*, i8*)** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32 (i32*, i32*, i8*)*, i32 (i32*, i32*, i8*)** %3, align 8
  %8 = icmp ne i32 (i32*, i32*, i8*)* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %40

12:                                               ; preds = %2
  %13 = load i32 (i32*, i32*, i8*)*, i32 (i32*, i32*, i8*)** %3, align 8
  %14 = call i32 %13(i32* null, i32* null, i8* null)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 17)
  %22 = load i32 (i32*, i32*, i8*)*, i32 (i32*, i32*, i8*)** %3, align 8
  %23 = load i32*, i32** @des_plaintext, align 8
  %24 = load i32*, i32** @des_key, align 8
  %25 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %26 = call i32 %22(i32* %23, i32* %24, i8* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @des_ciphertext, align 4
  %33 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %34 = call i32 @memcmp(i32 %32, i8* %33, i32 4)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @win_skip(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
