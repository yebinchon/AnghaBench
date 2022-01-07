; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_crunch_lzx.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_crunch_lzx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcFile = type { %struct.TYPE_4__, %struct.TYPE_6__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.chmcLzxInfo = type { i32, %struct.TYPE_6__*, %struct.chmcFile*, i64, i64, i64, i32, i32, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"window size must be between 15 and 21 inclusive\0A\00", align 1
@CHMC_EINVAL = common dso_local global i32 0, align 4
@_lzx_get_bytes = common dso_local global i32 0, align 4
@_lzx_put_bytes = common dso_local global i32 0, align 4
@_lzx_mark_frame = common dso_local global i32 0, align 4
@CHMC_NOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chmc_crunch_lzx(%struct.chmcFile* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chmcFile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.chmcLzxInfo, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.chmcFile* %0, %struct.chmcFile** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 16, i32* %12, align 4
  %13 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %14 = call i32 @assert(%struct.chmcFile* %13)
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 15
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %12, align 4
  %19 = icmp sgt i32 %18, 21
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @CHMC_EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %85

24:                                               ; preds = %17
  %25 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %26 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 2
  store %struct.chmcFile* %25, %struct.chmcFile** %26, align 8
  %27 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %28 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 1
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %34, align 8
  %35 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 7
  store i32 %39, i32* %40, align 4
  %41 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %42 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 6
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 2
  %51 = load %struct.chmcFile*, %struct.chmcFile** %50, align 8
  %52 = call i32 @chmc_compressed_add_mark(%struct.chmcFile* %51, i32 0)
  %53 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %6, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %12, align 4
  %60 = shl i32 1, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @_lzx_get_bytes, align 4
  %63 = load i32, i32* @_lzx_put_bytes, align 4
  %64 = load i32, i32* @_lzx_mark_frame, align 4
  %65 = call i32 @lzx_init(i32** %7, i32 %61, i32 %62, %struct.chmcLzxInfo* %6, i32 (%struct.chmcLzxInfo*)* @_lzx_at_eof, i32 %63, %struct.chmcLzxInfo* %6, i32 %64, %struct.chmcLzxInfo* %6)
  br label %66

66:                                               ; preds = %76, %24
  %67 = call i32 @_lzx_at_eof(%struct.chmcLzxInfo* %6)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @lzx_reset(i32* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @lzx_compress_block(i32* %77, i32 %78, i32 %79)
  br label %66

81:                                               ; preds = %66
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @lzx_finish(i32* %82, i32* %11)
  %84 = load i32, i32* @CHMC_NOERR, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @assert(%struct.chmcFile*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @chmc_compressed_add_mark(%struct.chmcFile*, i32) #1

declare dso_local i32 @lzx_init(i32**, i32, i32, %struct.chmcLzxInfo*, i32 (%struct.chmcLzxInfo*)*, i32, %struct.chmcLzxInfo*, i32, %struct.chmcLzxInfo*) #1

declare dso_local i32 @_lzx_at_eof(%struct.chmcLzxInfo*) #1

declare dso_local i32 @lzx_reset(i32*) #1

declare dso_local i32 @lzx_compress_block(i32*, i32, i32) #1

declare dso_local i32 @lzx_finish(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
