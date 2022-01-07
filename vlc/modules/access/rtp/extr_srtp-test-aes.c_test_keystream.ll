; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp-test-aes.c_test_keystream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp-test-aes.c_test_keystream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_keystream.key = internal constant [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", align 16
@.str = private unnamed_addr constant [26 x i8] c"AES-CM key stream test...\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Not enough memory for test\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c" session key: \00", align 1
@GCRY_CIPHER_AES = common dso_local global i32 0, align 4
@GCRY_CIPHER_MODE_CTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Cipher initialization error\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Cipher key error\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Encryption failure\00", align 1
@test_keystream.good_start = internal constant [48 x i8] c"\E0>\AD\095\C9^\80\E1f\B1m\D9+N\B4\D25\13\16+\02\D0\F7*C\A2\FEJ_\97\ABA\E9[;\B0\A2\E8\DDGy\01\E4\FC\A8\94\C0", align 16
@test_keystream.good_end = internal constant [48 x i8] c"\EC\8C\DFs\98`|\B0\F2\D2\16u\EA\9E\A1\E46+|<gsQc\18\A0w\D7\FCPs\AEj,\C3xx\897O\BE\B4\C8\1B\17\BAlD", align 16
@.str.6 = private unnamed_addr constant [15 x i8] c" key stream:  \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" ... cont'd : \00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Key stream test failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_keystream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_keystream() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %5 = call i32 @htonl(i32 -252579085)
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  %7 = call i32 @htonl(i32 -185207049)
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = call i32 @htonl(i32 -117835013)
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = call i32 @htonl(i32 -50528256)
  store i32 %11, i32* %10, align 4
  %12 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = call i8* @calloc(i32 65282, i32 16)
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %67

19:                                               ; preds = %0
  %20 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @printhex(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_keystream.key, i64 0, i64 0), i32 16)
  %22 = load i32, i32* @GCRY_CIPHER_AES, align 4
  %23 = load i32, i32* @GCRY_CIPHER_MODE_CTR, align 4
  %24 = call i64 @gcry_cipher_open(i32* %3, i32 %22, i32 %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @gcry_cipher_setkey(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_keystream.key, i64 0, i64 0), i32 16)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %3, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %37 = load i8*, i8** %2, align 8
  %38 = call i64 @rtp_crypt(i32 %35, i32 0, i32 0, i32 0, i32* %36, i8* %37, i32 1044512)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @gcry_cipher_close(i32 %43)
  %45 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @printhex(i8* %46, i32 48)
  %48 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %49 = load i8*, i8** %2, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1044512
  %51 = getelementptr inbounds i8, i8* %50, i64 -48
  %52 = call i32 @printhex(i8* %51, i32 48)
  %53 = load i8*, i8** %2, align 8
  %54 = call i64 @memcmp(i8* %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @test_keystream.good_start, i64 0, i64 0), i32 48)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %42
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1044512
  %59 = getelementptr inbounds i8, i8* %58, i64 -48
  %60 = call i64 @memcmp(i8* %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @test_keystream.good_end, i64 0, i64 0), i32 48)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %42
  %63 = call i32 @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %64, %16
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @printhex(i8*, i32) #1

declare dso_local i64 @gcry_cipher_open(i32*, i32, i32, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @gcry_cipher_setkey(i32, i8*, i32) #1

declare dso_local i64 @rtp_crypt(i32, i32, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @gcry_cipher_close(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
