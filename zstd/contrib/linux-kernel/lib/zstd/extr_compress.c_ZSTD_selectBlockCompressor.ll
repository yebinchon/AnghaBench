; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_selectBlockCompressor.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_selectBlockCompressor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ZSTD_selectBlockCompressor.blockCompressor = internal constant [2 x [8 x %struct.TYPE_3__]] [[8 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 135, i32 137, i32 133, i32 131, i32 130, i32 143, i32 141, i32 140 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [8 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 134, i32 136, i32 132, i32 128, i32 129, i32 142, i32 138, i32 139 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i32)* @ZSTD_selectBlockCompressor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTD_selectBlockCompressor(%struct.TYPE_3__* noalias sret %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %1, i64* %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2 x [8 x %struct.TYPE_3__]], [2 x [8 x %struct.TYPE_3__]]* @ZSTD_selectBlockCompressor.blockCompressor, i64 0, i64 %7
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds [8 x %struct.TYPE_3__], [8 x %struct.TYPE_3__]* %8, i64 0, i64 %9
  %11 = bitcast %struct.TYPE_3__* %0 to i8*
  %12 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 16 %12, i64 32, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
