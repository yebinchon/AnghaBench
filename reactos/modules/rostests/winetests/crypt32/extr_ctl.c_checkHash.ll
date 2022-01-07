; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_ctl.c_checkHash.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_ctl.c_checkHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"CryptHashCertificate failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"CertGetCTLContextProperty failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unexpected hash for property %d\0A\00", align 1
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = bitcast [20 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 80, i1 false)
  %16 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 0, i32 80)
  %18 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %19 = call i32 @memset(i32* %18, i32 0, i32 80)
  store i32 80, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %24 = call i32 @CryptHashCertificate(i32 0, i32 %20, i32 0, i32* %21, i32 %22, i32* %23, i32* %14)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %31 = call i32 @CertGetCTLContextProperty(i32 %28, i32 %29, i32* %30, i32* %14)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %5
  %38 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %39 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @memcmp(i32* %38, i32* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %37, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CryptHashCertificate(i32, i32, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @CertGetCTLContextProperty(i32, i32, i32*, i32*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
