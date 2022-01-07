; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_ckptTryLoad.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_ckptTryLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32*, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@CKPT_HDR_NCKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32*)* @ckptTryLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ckptTryLoad(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LSM_OK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %110

20:                                               ; preds = %4
  %21 = load i32, i32* @LSM_OK, align 4
  store i32 %21, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @lsmFsMetaPageData(i32* %22, i32* %13)
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* @CKPT_HDR_NCKPT, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = call i32 @lsmGetU32(i32* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 4
  %35 = icmp ule i64 %31, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %20
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @CKPT_HDR_NCKPT, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i64 @lsmMallocRc(i32 %43, i32 %47, i32* %10)
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %11, align 8
  br label %50

50:                                               ; preds = %40, %36, %20
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %102

53:                                               ; preds = %50
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memcpy(i32* %54, i32* %55, i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @ckptChangeEndianness(i32* %61, i32 %62)
  %64 = load i32*, i32** %11, align 8
  %65 = call i64 @ckptChecksumOk(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %53
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %15, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i32* %73, i32* %74, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i32* %82, i32* %83, i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i32* %91, i32* %92, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  store i32 1, i32* %9, align 4
  br label %101

101:                                              ; preds = %67, %53
  br label %102

102:                                              ; preds = %101, %50
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @lsmFree(i32 %105, i32* %106)
  %108 = load i32, i32* %10, align 4
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %102, %4
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local i32* @lsmFsMetaPageData(i32*, i32*) #1

declare dso_local i32 @lsmGetU32(i32*) #1

declare dso_local i64 @lsmMallocRc(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ckptChangeEndianness(i32*, i32) #1

declare dso_local i64 @ckptChecksumOk(i32*) #1

declare dso_local i32 @lsmFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
