; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_skein_mod.c_skein_digest.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_skein_mod.c_skein_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)* @skein_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skein_digest(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.TYPE_10__* @SKEIN_CTX(i32* %13)
  %15 = icmp ne %struct.TYPE_10__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.TYPE_10__* @SKEIN_CTX(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @CRYPTO_BITS2BYTES(i32 %24)
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = call %struct.TYPE_10__* @SKEIN_CTX(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @CRYPTO_BITS2BYTES(i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %35, i32* %5, align 4
  br label %60

36:                                               ; preds = %4
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @skein_update(i32* %37, %struct.TYPE_9__* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load i32*, i32** %6, align 8
  %46 = call %struct.TYPE_10__* @SKEIN_CTX(i32* %45)
  %47 = call i32 @bzero(%struct.TYPE_10__* %46, i32 4)
  %48 = load i32*, i32** %6, align 8
  %49 = call %struct.TYPE_10__* @SKEIN_CTX(i32* %48)
  %50 = call i32 @kmem_free(%struct.TYPE_10__* %49, i32 4)
  store i32* null, i32** %11, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %60

54:                                               ; preds = %36
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @skein_final(i32* %55, %struct.TYPE_9__* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %44, %27
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_10__* @SKEIN_CTX(i32*) #1

declare dso_local i64 @CRYPTO_BITS2BYTES(i32) #1

declare dso_local i32 @skein_update(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @skein_final(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
