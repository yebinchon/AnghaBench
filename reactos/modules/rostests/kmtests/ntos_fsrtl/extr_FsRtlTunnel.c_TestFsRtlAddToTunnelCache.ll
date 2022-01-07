; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_fsrtl/extr_FsRtlTunnel.c_TestFsRtlAddToTunnelCache.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_fsrtl/extr_FsRtlTunnel.c_TestFsRtlAddToTunnelCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__* }

@PagedPool = common dso_local global i32 0, align 4
@BufSize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Buff in TestFsRtlAddToTunnelCache is NULL after allocated memory\0A\00", align 1
@T = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"FsRtlAddToTunnelCache function did not change anything in the memory at the address Buf.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"long name after call FsRtlAddToTunnelCache != long name befo call FsRtlAddToTunnelCache\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"short name after call FsRtlAddToTunnelCache != short name befo call FsRtlAddToTunnelCache\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestFsRtlAddToTunnelCache(i32 %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @PagedPool, align 4
  %16 = load i32, i32* @BufSize, align 4
  %17 = call %struct.TYPE_14__* @ExAllocatePool(i32 %15, i32 %16)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %14, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @PagedPool, align 4
  %23 = load i32, i32* @BufSize, align 4
  %24 = call %struct.TYPE_14__* @ExAllocatePool(i32 %22, i32 %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %13, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %26 = icmp ne %struct.TYPE_14__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = call %struct.TYPE_14__* @CopyUS(%struct.TYPE_14__* %29)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %11, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = call %struct.TYPE_14__* @CopyUS(%struct.TYPE_14__* %31)
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %12, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %34 = bitcast %struct.TYPE_14__* %33 to i8*
  %35 = load i32, i32* @BufSize, align 4
  %36 = call i32 @memset(i8* %34, i32 0, i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %38 = bitcast %struct.TYPE_14__* %37 to i8*
  %39 = load i32, i32* @BufSize, align 4
  %40 = call i32 @memset(i8* %38, i32 0, i32 %39)
  %41 = load i32, i32* @T, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BufSize, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %48 = call i32 @FsRtlAddToTunnelCache(i32 %41, i32 %42, %struct.TYPE_14__* %43, %struct.TYPE_14__* %44, i32 %45, i32 %46, %struct.TYPE_14__* %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %50 = bitcast %struct.TYPE_14__* %49 to i32*
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %52 = bitcast %struct.TYPE_14__* %51 to i32*
  %53 = load i32, i32* @BufSize, align 4
  %54 = call i32 @RtlCompareMemory(i32* %50, i32* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 4
  %58 = zext i1 %57 to i32
  %59 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i64 @RtlCompareUnicodeString(%struct.TYPE_14__* %60, %struct.TYPE_14__* %61, i32 %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i64 @RtlCompareUnicodeString(%struct.TYPE_14__* %68, %struct.TYPE_14__* %69, i32 %70)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = icmp ne %struct.TYPE_14__* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call i32 @ExFreePool(%struct.TYPE_14__* %83)
  br label %85

85:                                               ; preds = %80, %4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %87 = call i32 @ExFreePool(%struct.TYPE_14__* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = icmp ne %struct.TYPE_14__* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = call i32 @ExFreePool(%struct.TYPE_14__* %95)
  br label %97

97:                                               ; preds = %92, %85
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %99 = call i32 @ExFreePool(%struct.TYPE_14__* %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %101 = call i32 @ExFreePool(%struct.TYPE_14__* %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %103 = call i32 @ExFreePool(%struct.TYPE_14__* %102)
  ret void
}

declare dso_local %struct.TYPE_14__* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @CopyUS(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @FsRtlAddToTunnelCache(i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @RtlCompareMemory(i32*, i32*, i32) #1

declare dso_local i64 @RtlCompareUnicodeString(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
