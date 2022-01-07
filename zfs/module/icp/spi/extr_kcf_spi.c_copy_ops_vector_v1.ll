; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/spi/extr_kcf_spi.c_copy_ops_vector_v1.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/spi/extr_kcf_spi.c_copy_ops_vector_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@co_control_ops = common dso_local global i32 0, align 4
@co_digest_ops = common dso_local global i32 0, align 4
@co_cipher_ops = common dso_local global i32 0, align 4
@co_mac_ops = common dso_local global i32 0, align 4
@co_sign_ops = common dso_local global i32 0, align 4
@co_verify_ops = common dso_local global i32 0, align 4
@co_dual_ops = common dso_local global i32 0, align 4
@co_dual_cipher_mac_ops = common dso_local global i32 0, align 4
@co_random_ops = common dso_local global i32 0, align 4
@co_session_ops = common dso_local global i32 0, align 4
@co_object_ops = common dso_local global i32 0, align 4
@co_key_ops = common dso_local global i32 0, align 4
@co_provider_ops = common dso_local global i32 0, align 4
@co_ctx_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @copy_ops_vector_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_ops_vector_v1(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @co_control_ops, align 4
  %8 = call i32 @KCF_SPI_COPY_OPS(i32* %5, i32* %6, i32 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @co_digest_ops, align 4
  %12 = call i32 @KCF_SPI_COPY_OPS(i32* %9, i32* %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @co_cipher_ops, align 4
  %16 = call i32 @KCF_SPI_COPY_OPS(i32* %13, i32* %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @co_mac_ops, align 4
  %20 = call i32 @KCF_SPI_COPY_OPS(i32* %17, i32* %18, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @co_sign_ops, align 4
  %24 = call i32 @KCF_SPI_COPY_OPS(i32* %21, i32* %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @co_verify_ops, align 4
  %28 = call i32 @KCF_SPI_COPY_OPS(i32* %25, i32* %26, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @co_dual_ops, align 4
  %32 = call i32 @KCF_SPI_COPY_OPS(i32* %29, i32* %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @co_dual_cipher_mac_ops, align 4
  %36 = call i32 @KCF_SPI_COPY_OPS(i32* %33, i32* %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @co_random_ops, align 4
  %40 = call i32 @KCF_SPI_COPY_OPS(i32* %37, i32* %38, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @co_session_ops, align 4
  %44 = call i32 @KCF_SPI_COPY_OPS(i32* %41, i32* %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @co_object_ops, align 4
  %48 = call i32 @KCF_SPI_COPY_OPS(i32* %45, i32* %46, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @co_key_ops, align 4
  %52 = call i32 @KCF_SPI_COPY_OPS(i32* %49, i32* %50, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @co_provider_ops, align 4
  %56 = call i32 @KCF_SPI_COPY_OPS(i32* %53, i32* %54, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @co_ctx_ops, align 4
  %60 = call i32 @KCF_SPI_COPY_OPS(i32* %57, i32* %58, i32 %59)
  ret void
}

declare dso_local i32 @KCF_SPI_COPY_OPS(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
