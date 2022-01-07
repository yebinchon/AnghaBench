; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_common_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64 }

@CRYPTO_KEY_RAW = common dso_local global i64 0, align 8
@CRYPTO_KEY_TYPE_INCONSISTENT = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.TYPE_6__*, i32, i32, i32)* @aes_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_common_init(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CRYPTO_KEY_RAW, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @CRYPTO_KEY_TYPE_INCONSISTENT, align 4
  store i32 %23, i32* %7, align 4
  br label %54

24:                                               ; preds = %6
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @crypto_kmflag(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @aes_check_mech_param(i32* %27, i32** %14, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %7, align 4
  br label %54

34:                                               ; preds = %24
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @aes_common_init_ctx(i32* %35, i32 %36, i32* %37, %struct.TYPE_6__* %38, i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @crypto_free_mode_ctx(i32* %46)
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %7, align 4
  br label %54

49:                                               ; preds = %34
  %50 = load i32*, i32** %14, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %45, %32, %22
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @crypto_kmflag(i32) #1

declare dso_local i32 @aes_check_mech_param(i32*, i32**, i32) #1

declare dso_local i32 @aes_common_init_ctx(i32*, i32, i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @crypto_free_mode_ctx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
