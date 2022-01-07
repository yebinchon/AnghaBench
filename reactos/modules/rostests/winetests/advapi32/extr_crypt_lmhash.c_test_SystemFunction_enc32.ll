; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction_enc32.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction_enc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"SystemFunction%03d is not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@des_plaintext = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"wrong error code (%d)\0A\00", align 1
@des_ciphertext32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ciphertext wrong (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i32, i8*, i8*)*, i32)* @test_SystemFunction_enc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction_enc32(i32 (i32, i8*, i8*)* %0, i32 %1) #0 {
  %3 = alloca i32 (i32, i8*, i8*)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i8], align 1
  %6 = alloca [17 x i8], align 16
  %7 = alloca i32, align 4
  store i32 (i32, i8*, i8*)* %0, i32 (i32, i8*, i8*)** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %3, align 8
  %9 = icmp ne i32 (i32, i8*, i8*)* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %37

13:                                               ; preds = %2
  %14 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 17)
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %17 = call i32 @memcpy(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %18 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %3, align 8
  %19 = load i32, i32* @des_plaintext, align 4
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 0
  %22 = call i32 %18(i32 %19, i8* %20, i8* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 0
  %30 = load i32, i32* @des_ciphertext32, align 4
  %31 = call i32 @memcmp(i8* %29, i32 %30, i32 4)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @win_skip(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
