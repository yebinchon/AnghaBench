; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp-test-aes.c_test_derivation.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp-test-aes.c_test_derivation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_derivation.key = internal constant [16 x i8] c"\E1\F9z\0D>\01\8B\E0\D6O\A3,\06\DEA9", align 16
@test_derivation.salt = internal constant [14 x i8] c"\0E\C6u\ADI\8A\FE\EB\B6\96\0B:\AB\E6", align 1
@test_derivation.good_cipher = internal constant [16 x i8] c"\C6\1Ez\93tO9\EE\10sJ\FE?\F7\A0\87", align 16
@test_derivation.good_salt = internal constant [14 x i8] c"0\CB\BC\08\86=\8C\85\D4\9D\B3J\9A\E1", align 1
@test_derivation.good_auth = internal constant [94 x i8] c"\CE\BE2\1Fo\F7qko\D4\ABI\AF%j\15m8\BA\A4\8F\0A\0A\CF<4\E25\9El\DB\CE\E0IdlC\D92z\D1uW\8E\F7\22p\98cq\C1\0C\9A6\9A\C2\F9J\8C_\BC\DD\DC%mn\91\9AH\B6\10\EF\17\C2\04\1EG@5vkhd,Y\BB\FC/4\DB`\DB\DF\B2", align 16
@test_derivation.r = internal constant [6 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [30 x i8] c"AES-CM key derivation test...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" master key:  \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" master salt: \00", align 1
@GCRY_CIPHER_AES = common dso_local global i32 0, align 4
@GCRY_CIPHER_MODE_CTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Internal PRF error\00", align 1
@SRTP_CRYPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Internal cipher derivation error\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" cipher key:  \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Test failed\00", align 1
@SRTP_SALT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Internal salt derivation error\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" cipher salt: \00", align 1
@SRTP_AUTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Internal auth key derivation error\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c" auth key:    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_derivation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_derivation() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [94 x i8], align 16
  %3 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @printhex(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_derivation.key, i64 0, i64 0), i32 16)
  %6 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @printhex(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_derivation.salt, i64 0, i64 0), i32 14)
  %8 = load i32, i32* @GCRY_CIPHER_AES, align 4
  %9 = load i32, i32* @GCRY_CIPHER_MODE_CTR, align 4
  %10 = call i64 @gcry_cipher_open(i32* %1, i32 %8, i32 %9, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = call i64 @gcry_cipher_setkey(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_derivation.key, i64 0, i64 0), i32 16)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %0
  %17 = call i32 @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @SRTP_CRYPT, align 4
  %21 = getelementptr inbounds [94 x i8], [94 x i8]* %2, i64 0, i64 0
  %22 = call i64 @do_derive(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_derivation.salt, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_derivation.r, i64 0, i64 0), i32 6, i32 %20, i8* %21, i32 16)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %28 = getelementptr inbounds [94 x i8], [94 x i8]* %2, i64 0, i64 0
  %29 = call i32 @printhex(i8* %28, i32 16)
  %30 = getelementptr inbounds [94 x i8], [94 x i8]* %2, i64 0, i64 0
  %31 = call i64 @memcmp(i8* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_derivation.good_cipher, i64 0, i64 0), i32 16)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @SRTP_SALT, align 4
  %38 = getelementptr inbounds [94 x i8], [94 x i8]* %2, i64 0, i64 0
  %39 = call i64 @do_derive(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_derivation.salt, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_derivation.r, i64 0, i64 0), i32 6, i32 %37, i8* %38, i32 14)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  %44 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %45 = getelementptr inbounds [94 x i8], [94 x i8]* %2, i64 0, i64 0
  %46 = call i32 @printhex(i8* %45, i32 14)
  %47 = getelementptr inbounds [94 x i8], [94 x i8]* %2, i64 0, i64 0
  %48 = call i64 @memcmp(i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_derivation.good_salt, i64 0, i64 0), i32 14)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @SRTP_AUTH, align 4
  %55 = getelementptr inbounds [94 x i8], [94 x i8]* %2, i64 0, i64 0
  %56 = call i64 @do_derive(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_derivation.salt, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_derivation.r, i64 0, i64 0), i32 6, i32 %54, i8* %55, i32 94)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  %61 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %62 = getelementptr inbounds [94 x i8], [94 x i8]* %2, i64 0, i64 0
  %63 = call i32 @printhex(i8* %62, i32 94)
  %64 = getelementptr inbounds [94 x i8], [94 x i8]* %2, i64 0, i64 0
  %65 = call i64 @memcmp(i8* %64, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @test_derivation.good_auth, i64 0, i64 0), i32 94)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %60
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @gcry_cipher_close(i32 %70)
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @printhex(i8*, i32) #1

declare dso_local i64 @gcry_cipher_open(i32*, i32, i32, i32) #1

declare dso_local i64 @gcry_cipher_setkey(i32, i8*, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @do_derive(i32, i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @gcry_cipher_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
