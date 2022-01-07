; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_ckptLoadEmpty.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_ckptLoadEmpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@LSM_COMPRESSION_EMPTY = common dso_local global i32 0, align 4
@CKPT_HDR_NCKPT = common dso_local global i64 0, align 8
@CKPT_HDR_BLKSZ = common dso_local global i64 0, align 8
@CKPT_HDR_PGSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @ckptLoadEmpty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ckptLoadEmpty(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca [25 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = bitcast [25 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 0
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 10, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* @LSM_COMPRESSION_EMPTY, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 1234, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 5678, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 0
  %34 = call i32 @array_size(i32* %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i64, i64* @CKPT_HDR_NCKPT, align 8
  %40 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 %39
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* @CKPT_HDR_BLKSZ, align 8
  %45 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 %44
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* @CKPT_HDR_PGSZ, align 8
  %50 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 %49
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 0
  %52 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 0
  %53 = call i32 @array_size(i32* %52)
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 %56
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 %60
  %62 = call i32 @ckptChecksum(i32* %51, i32 %53, i32* %57, i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 0
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memcpy(i32 %65, i32* %66, i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 0
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memcpy(i32 %74, i32* %75, i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 0
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32 @memcpy(i32 %83, i32* %84, i32 %88)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @array_size(i32*) #2

declare dso_local i32 @ckptChecksum(i32*, i32, i32*, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
