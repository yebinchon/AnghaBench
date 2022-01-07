; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_decode_params_bp.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_decode_params_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64* }

@ZIO_DATA_SALT_LEN = common dso_local global i32 0, align 4
@ZIO_DATA_IV_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zio_crypt_decode_params_bp(%struct.TYPE_9__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i32 @BP_IS_PROTECTED(%struct.TYPE_9__* %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = call i64 @BP_IS_AUTHENTICATED(%struct.TYPE_9__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @ZIO_DATA_SALT_LEN, align 4
  %18 = call i32 @bzero(i32* %16, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @ZIO_DATA_IV_LEN, align 4
  %21 = call i32 @bzero(i32* %19, i32 %20)
  br label %81

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = call i32 @BP_SHOULD_BYTESWAP(%struct.TYPE_9__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @bcopy(i64* %33, i32* %34, i32 8)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @bcopy(i64* %42, i32* %43, i32 8)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = call i32 @BP_GET_IV2(%struct.TYPE_9__* %45)
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %8, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = call i32 @bcopy(i64* %8, i32* %49, i32 8)
  br label %81

51:                                               ; preds = %22
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @BSWAP_64(i64 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @bcopy(i64* %7, i32* %61, i32 8)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @BSWAP_64(i64 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @bcopy(i64* %7, i32* %72, i32 8)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = call i32 @BP_GET_IV2(%struct.TYPE_9__* %74)
  %76 = sext i32 %75 to i64
  %77 = call i64 @BSWAP_32(i64 %76)
  store i64 %77, i64* %8, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 8
  %80 = call i32 @bcopy(i64* %8, i32* %79, i32 8)
  br label %81

81:                                               ; preds = %15, %51, %26
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_PROTECTED(%struct.TYPE_9__*) #1

declare dso_local i64 @BP_IS_AUTHENTICATED(%struct.TYPE_9__*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @BP_SHOULD_BYTESWAP(%struct.TYPE_9__*) #1

declare dso_local i32 @bcopy(i64*, i32*, i32) #1

declare dso_local i32 @BP_GET_IV2(%struct.TYPE_9__*) #1

declare dso_local i64 @BSWAP_64(i64) #1

declare dso_local i64 @BSWAP_32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
