; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_CompareFileName.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_CompareFileName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompareFileName(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @RtlUpcaseUnicodeString(%struct.TYPE_15__* %13, %struct.TYPE_15__* %35, i32 %36)
  %38 = call i32 @NT_SUCCESS(i32 %37)
  %39 = call i32 @NT_VERIFY(i32 %38)
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %11, align 4
  br label %45

41:                                               ; preds = %31
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = bitcast %struct.TYPE_15__* %13 to i8*
  %44 = bitcast %struct.TYPE_15__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 12, i1 false)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @FsRtlIsNameInExpression(%struct.TYPE_15__* %13, %struct.TYPE_15__* %12, i32 %49, i32* null)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 @RtlFreeUnicodeString(%struct.TYPE_15__* %13)
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %66

57:                                               ; preds = %4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @RtlCompareUnicodeString(%struct.TYPE_15__* %58, %struct.TYPE_15__* %12, i32 %62)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %57, %55
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @NT_VERIFY(i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlUpcaseUnicodeString(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FsRtlIsNameInExpression(%struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_15__*) #1

declare dso_local i64 @RtlCompareUnicodeString(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
