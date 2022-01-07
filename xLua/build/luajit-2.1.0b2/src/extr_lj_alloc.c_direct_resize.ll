; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_alloc.c_direct_resize.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_alloc.c_direct_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }

@SIZE_T_SIZE = common dso_local global i64 0, align 8
@DEFAULT_GRANULARITY = common dso_local global i32 0, align 4
@IS_DIRECT_BIT = common dso_local global i64 0, align 8
@DIRECT_FOOT_PAD = common dso_local global i64 0, align 8
@SIX_SIZE_T_SIZES = common dso_local global i64 0, align 8
@CHUNK_ALIGN_MASK = common dso_local global i64 0, align 8
@CALL_MREMAP_MV = common dso_local global i32 0, align 4
@CMFAIL = common dso_local global i8* null, align 8
@CINUSE_BIT = common dso_local global i64 0, align 8
@FENCEPOST_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, i64)* @direct_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @direct_resize(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i64 @chunksize(%struct.TYPE_7__* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @is_small(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %95

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SIZE_T_SIZE, align 8
  %23 = add i64 %21, %22
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %26, %27
  %29 = load i32, i32* @DEFAULT_GRANULARITY, align 4
  %30 = ashr i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = icmp ule i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %3, align 8
  br label %95

35:                                               ; preds = %25, %19
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IS_DIRECT_BIT, align 8
  %40 = xor i64 %39, -1
  %41 = and i64 %38, %40
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %42, %43
  %45 = load i64, i64* @DIRECT_FOOT_PAD, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @SIX_SIZE_T_SIZES, align 8
  %49 = add i64 %47, %48
  %50 = load i64, i64* @CHUNK_ALIGN_MASK, align 8
  %51 = add i64 %49, %50
  %52 = call i64 @mmap_align(i64 %51)
  store i64 %52, i64* %9, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = bitcast %struct.TYPE_7__* %53 to i8*
  %55 = load i64, i64* %7, align 8
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* @CALL_MREMAP_MV, align 4
  %61 = call i64 @CALL_MREMAP(i8* %57, i64 %58, i64 %59, i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** @CMFAIL, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %35
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = bitcast i8* %69 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %11, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %71, %72
  %74 = load i64, i64* @DIRECT_FOOT_PAD, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @CINUSE_BIT, align 8
  %78 = or i64 %76, %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @FENCEPOST_HEAD, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call %struct.TYPE_8__* @chunk_plus_offset(%struct.TYPE_7__* %82, i64 %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @SIZE_T_SIZE, align 8
  %89 = add i64 %87, %88
  %90 = call %struct.TYPE_8__* @chunk_plus_offset(%struct.TYPE_7__* %86, i64 %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %3, align 8
  br label %95

93:                                               ; preds = %35
  br label %94

94:                                               ; preds = %93
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %95

95:                                               ; preds = %94, %66, %33, %18
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %96
}

declare dso_local i64 @chunksize(%struct.TYPE_7__*) #1

declare dso_local i64 @is_small(i64) #1

declare dso_local i64 @mmap_align(i64) #1

declare dso_local i64 @CALL_MREMAP(i8*, i64, i64, i32) #1

declare dso_local %struct.TYPE_8__* @chunk_plus_offset(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
