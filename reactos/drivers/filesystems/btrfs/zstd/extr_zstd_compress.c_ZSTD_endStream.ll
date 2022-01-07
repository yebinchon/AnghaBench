; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_endStream.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_endStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32* }

@GENERIC = common dso_local global i32 0, align 4
@ZSTD_e_end = common dso_local global i32 0, align 4
@ZSTD_BLOCKHEADERSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"ZSTD_endStream : remaining to flush : %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_endStream(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @GENERIC, align 4
  %20 = call i64 @ERROR(i32 %19)
  store i64 %20, i64* %3, align 8
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = load i32, i32* @ZSTD_e_end, align 4
  %25 = call i32 @ZSTD_compressStream_generic(%struct.TYPE_15__* %22, %struct.TYPE_13__* %23, %struct.TYPE_14__* %6, i32 %24)
  %26 = call i32 @CHECK_F(i32 %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %34

32:                                               ; preds = %21
  %33 = load i64, i64* @ZSTD_BLOCKHEADERSIZE, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i64 [ 0, %31 ], [ %33, %32 ]
  store i64 %35, i64* %7, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %48

41:                                               ; preds = %34
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, 4
  br label %48

48:                                               ; preds = %41, %40
  %49 = phi i32 [ 0, %40 ], [ %47, %41 ]
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %8, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %59, %60
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %48, %18
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ERROR(i32) #2

declare dso_local i32 @CHECK_F(i32) #2

declare dso_local i32 @ZSTD_compressStream_generic(%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
