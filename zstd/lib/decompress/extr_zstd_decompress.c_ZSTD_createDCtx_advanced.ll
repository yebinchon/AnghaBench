; ModuleID = '/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_createDCtx_advanced.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_createDCtx_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ZSTD_createDCtx_advanced(i64 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = bitcast %struct.TYPE_7__* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = xor i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %35

19:                                               ; preds = %1
  %20 = bitcast %struct.TYPE_7__* %3 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i64 @ZSTD_malloc(i32 8, i64 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %35

27:                                               ; preds = %19
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = bitcast %struct.TYPE_7__* %29 to i8*
  %31 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = call i32 @ZSTD_initDCtx_internal(%struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %2, align 8
  br label %35

35:                                               ; preds = %27, %26, %18
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %36
}

declare dso_local i64 @ZSTD_malloc(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ZSTD_initDCtx_internal(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
