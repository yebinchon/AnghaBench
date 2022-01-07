; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_checkHash.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_checkHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"CryptHashCertificate failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"algID %08x, propID %d: CertGetCertificateContextProperty failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"CertGetCertificateContextProperty failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unexpected hash for property %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Unexpected length of hash for property: received %d instead of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @checkHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkHash(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i32], align 16
  %12 = alloca [20 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = bitcast [20 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 80, i1 false)
  %17 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %18 = call i32 @memset(i32* %17, i32 0, i32 80)
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %20 = call i32 @memset(i32* %19, i32 0, i32 80)
  store i32 80, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %25 = call i32 @CryptHashCertificate(i32 0, i32 %21, i32 0, i32* %22, i32 %23, i32* %24, i32* %14)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 (i32, i8*, i32, ...) @ok(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @CertGetCertificateContextProperty(i32 %29, i32 %30, i32* null, i32* %15)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %32, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %40 = call i32 @CertGetCertificateContextProperty(i32 %37, i32 %38, i32* %39, i32* %14)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %45 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @memcmp(i32* %44, i32* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i32, i8*, i32, ...) @ok(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %58)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CryptHashCertificate(i32, i32, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @CertGetCertificateContextProperty(i32, i32, i32*, i32*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
