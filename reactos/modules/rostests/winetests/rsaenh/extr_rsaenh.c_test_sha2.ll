; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_sha2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_sha2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_sha2.sha256hash = internal constant [32 x i8] c"\10\FC<Q\A1R\E9\0E[\901\9B`\1D\92\CC\F3r\90\EFS\C3_\F9%\07h}\8A\91\1A\08", align 16
@test_sha2.sha384hash = internal constant [48 x i8] c"\98\D3?\89\0B#3Da2Z|\A3\03\89\B5\11\D7A\C8Tk\12\0C@\15\B6*\03C\E5d\7F\10\1E\AEG\A99\05o@`\94\D6\AD\80U", align 16
@test_sha2.sha512hash = internal constant [64 x i8] c"7\86\0E}%\D9\F9\84>=\C7\13\95sB\04\FD\13\AD#9\162_\99><\EE?\116\F9\C9f\08p\CCI\D8\E0}\A1Wbq\A6\C9\A4$`\FC\DE\9D\B2\F1\D2\C2\FB-\BF\B7\F4\81\D4", align 16
@hProv = common dso_local global i32 0, align 4
@CALG_SHA_256 = common dso_local global i32 0, align 4
@NTE_BAD_ALGID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"SHA-256/384/512 hashes are not supported before Windows XP SP3\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@HP_HASHSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%08x, hashlen: %d\0A\00", align 1
@HP_HASHVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Wrong SHA-256 hash!\0A\00", align 1
@CALG_SHA_384 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Wrong SHA-384 hash!\0A\00", align 1
@CALG_SHA_512 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Wrong SHA-512 hash!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_sha2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sha2() #0 {
  %1 = alloca [2048 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %17, %0
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 2048
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 %15
  store i8 %13, i8* %16, align 1
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %8

20:                                               ; preds = %8
  %21 = call i32 @SetLastError(i32 -559038737)
  %22 = load i32, i32* @hProv, align 4
  %23 = load i32, i32* @CALG_SHA_256, align 4
  %24 = call i32 @CryptCreateHash(i32 %22, i32 %23, i32 0, i32 0, i32* %3)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @NTE_BAD_ALGID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @win_skip(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %174

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %2, align 4
  %35 = call i64 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %33
  store i32 4, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @HP_HASHSIZE, align 4
  %42 = call i32 @CryptGetHashParam(i32 %40, i32 %41, i32* %5, i32* %6, i32 0)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 32
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i1 [ false, %39 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 (...) @GetLastError()
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %51, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 0
  %56 = call i32 @CryptHashData(i32 %54, i8* %55, i32 2048, i32 0)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  store i32 32, i32* %6, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @HP_HASHVAL, align 4
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %63 = call i32 @CryptGetHashParam(i32 %60, i32 %61, i32* %62, i32* %6, i32 0)
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* %2, align 4
  %65 = call i64 (...) @GetLastError()
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %68 = call i32 @memcmp(i32* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_sha2.sha256hash, i64 0, i64 0), i32 32)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @CryptDestroyHash(i32 %73)
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i64 (...) @GetLastError()
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %48, %33
  %79 = load i32, i32* @hProv, align 4
  %80 = load i32, i32* @CALG_SHA_384, align 4
  %81 = call i32 @CryptCreateHash(i32 %79, i32 %80, i32 0, i32 0, i32* %3)
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  %83 = call i64 (...) @GetLastError()
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* %2, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %126

87:                                               ; preds = %78
  store i32 4, i32* %6, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @HP_HASHSIZE, align 4
  %90 = call i32 @CryptGetHashParam(i32 %88, i32 %89, i32* %5, i32* %6, i32 0)
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* %2, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 48
  br label %96

96:                                               ; preds = %93, %87
  %97 = phi i1 [ false, %87 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  %99 = call i64 (...) @GetLastError()
  %100 = load i32, i32* %5, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %99, i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 0
  %104 = call i32 @CryptHashData(i32 %102, i8* %103, i32 2048, i32 0)
  store i32 %104, i32* %2, align 4
  %105 = load i32, i32* %2, align 4
  %106 = call i64 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %106)
  store i32 48, i32* %6, align 4
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @HP_HASHVAL, align 4
  %110 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %111 = call i32 @CryptGetHashParam(i32 %108, i32 %109, i32* %110, i32* %6, i32 0)
  store i32 %111, i32* %2, align 4
  %112 = load i32, i32* %2, align 4
  %113 = call i64 (...) @GetLastError()
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %113)
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %116 = call i32 @memcmp(i32* %115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @test_sha2.sha384hash, i64 0, i64 0), i32 48)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @CryptDestroyHash(i32 %121)
  store i32 %122, i32* %2, align 4
  %123 = load i32, i32* %2, align 4
  %124 = call i64 (...) @GetLastError()
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %96, %78
  %127 = load i32, i32* @hProv, align 4
  %128 = load i32, i32* @CALG_SHA_512, align 4
  %129 = call i32 @CryptCreateHash(i32 %127, i32 %128, i32 0, i32 0, i32* %3)
  store i32 %129, i32* %2, align 4
  %130 = load i32, i32* %2, align 4
  %131 = call i64 (...) @GetLastError()
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %131)
  %133 = load i32, i32* %2, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %174

135:                                              ; preds = %126
  store i32 4, i32* %6, align 4
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @HP_HASHSIZE, align 4
  %138 = call i32 @CryptGetHashParam(i32 %136, i32 %137, i32* %5, i32* %6, i32 0)
  store i32 %138, i32* %2, align 4
  %139 = load i32, i32* %2, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* %5, align 4
  %143 = icmp eq i32 %142, 64
  br label %144

144:                                              ; preds = %141, %135
  %145 = phi i1 [ false, %135 ], [ %143, %141 ]
  %146 = zext i1 %145 to i32
  %147 = call i64 (...) @GetLastError()
  %148 = load i32, i32* %5, align 4
  %149 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %147, i32 %148)
  %150 = load i32, i32* %3, align 4
  %151 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 0
  %152 = call i32 @CryptHashData(i32 %150, i8* %151, i32 2048, i32 0)
  store i32 %152, i32* %2, align 4
  %153 = load i32, i32* %2, align 4
  %154 = call i64 (...) @GetLastError()
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %154)
  store i32 64, i32* %6, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @HP_HASHVAL, align 4
  %158 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %159 = call i32 @CryptGetHashParam(i32 %156, i32 %157, i32* %158, i32* %6, i32 0)
  store i32 %159, i32* %2, align 4
  %160 = load i32, i32* %2, align 4
  %161 = call i64 (...) @GetLastError()
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %161)
  %163 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %164 = call i32 @memcmp(i32* %163, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @test_sha2.sha512hash, i64 0, i64 0), i32 64)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @CryptDestroyHash(i32 %169)
  store i32 %170, i32* %2, align 4
  %171 = load i32, i32* %2, align 4
  %172 = call i64 (...) @GetLastError()
  %173 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %172)
  br label %174

174:                                              ; preds = %31, %144, %126
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CryptCreateHash(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @CryptGetHashParam(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @CryptHashData(i32, i8*, i32, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @CryptDestroyHash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
