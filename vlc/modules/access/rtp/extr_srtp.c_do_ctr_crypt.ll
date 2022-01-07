; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp.c_do_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp.c_do_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i64)* @do_ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ctr_crypt(i32 %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca [16 x i32], align 16
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 16, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call { i64, i32 } @div(i64 %13, i64 16)
  %15 = bitcast %struct.TYPE_3__* %11 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %17 = extractvalue { i64, i32 } %14, 0
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %19 = extractvalue { i64, i32 } %14, 1
  store i32 %19, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @gcry_cipher_setctr(i32 %20, i8* %21, i64 16)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %28, 16
  %30 = call i64 @gcry_cipher_encrypt(i32 %25, i32* %26, i64 %29, i32* null, i64 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %4
  store i32 -1, i32* %5, align 4
  br label %72

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %39, 16
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 %40
  store i32* %42, i32** %8, align 8
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i32* %43, i32* %44, i32 %46)
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = sub i64 16, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memset(i32* %52, i32 0, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %61 = load i32*, i32** %8, align 8
  %62 = call i64 @gcry_cipher_encrypt(i32 %59, i32* %60, i64 16, i32* %61, i64 16)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %72

65:                                               ; preds = %37
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memcpy(i32* %66, i32* %67, i32 %69)
  br label %71

71:                                               ; preds = %65, %33
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %64, %32
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local { i64, i32 } @div(i64, i64) #1

declare dso_local i64 @gcry_cipher_setctr(i32, i8*, i64) #1

declare dso_local i64 @gcry_cipher_encrypt(i32, i32*, i64, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
