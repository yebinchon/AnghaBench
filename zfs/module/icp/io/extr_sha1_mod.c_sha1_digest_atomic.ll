; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_digest_atomic.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_digest_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@SHA1_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@SHA1_DIGEST_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32)* @sha1_digest_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_digest_atomic(i32 %0, i32 %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3, %struct.TYPE_11__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SHA1_MECH_INFO_TYPE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %23, i32* %7, align 4
  br label %92

24:                                               ; preds = %6
  %25 = call i32 @SHA1Init(i32* %15)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %47 [
    i32 129, label %29
    i32 128, label %44
  ]

29:                                               ; preds = %24
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @SHA1Update(i32* %15, i32* %39, i64 %42)
  br label %49

44:                                               ; preds = %24
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = call i32 @sha1_digest_update_uio(i32* %15, %struct.TYPE_11__* %45)
  store i32 %46, i32* %14, align 4
  br label %49

47:                                               ; preds = %24
  %48 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %47, %44, %29
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %7, align 4
  br label %92

57:                                               ; preds = %49
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %77 [
    i32 129, label %61
    i32 128, label %73
  ]

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  %72 = call i32 @SHA1Final(i8* %71, i32* %15)
  br label %79

73:                                               ; preds = %57
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = load i64, i64* @SHA1_DIGEST_LENGTH, align 8
  %76 = call i32 @sha1_digest_final_uio(i32* %15, %struct.TYPE_11__* %74, i64 %75, i32* null)
  store i32 %76, i32* %14, align 4
  br label %79

77:                                               ; preds = %57
  %78 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %77, %73, %61
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i64, i64* @SHA1_DIGEST_LENGTH, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %90

87:                                               ; preds = %79
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %53, %22
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i32 @SHA1Update(i32*, i32*, i64) #1

declare dso_local i32 @sha1_digest_update_uio(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @SHA1Final(i8*, i32*) #1

declare dso_local i32 @sha1_digest_final_uio(i32*, %struct.TYPE_11__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
