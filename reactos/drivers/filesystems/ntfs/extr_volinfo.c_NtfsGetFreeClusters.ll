; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_volinfo.c_NtfsGetFreeClusters.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_volinfo.c_NtfsGetFreeClusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"NtfsGetFreeClusters(%p)\0A\00", align 1
@NTFS_FILE_BITMAP = common dso_local global i32 0, align 4
@AttributeData = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Total clusters: %I64x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Total clusters in bitmap: %I64x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Diff in size: %I64d B\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsGetFreeClusters(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = call i32* @ExAllocateFromNPagedLookasideList(i32* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %150

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = load i32, i32* @NTFS_FILE_BITMAP, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ReadFileRecord(%struct.TYPE_14__* %21, i32 %22, i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @NT_SUCCESS(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @ExFreeToNPagedLookasideList(i32* %30, i32* %31)
  store i32 0, i32* %2, align 4
  br label %150

33:                                               ; preds = %20
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @AttributeData, align 4
  %37 = call i32 @FindAttribute(%struct.TYPE_14__* %34, i32* %35, i32 %36, i8* bitcast ([1 x i32]* @.str.1 to i8*), i32 0, %struct.TYPE_13__** %6, i32* null)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @NT_SUCCESS(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @ExFreeToNPagedLookasideList(i32* %43, i32* %44)
  store i32 0, i32* %2, align 4
  br label %150

46:                                               ; preds = %33
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @AttributeDataLength(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %52, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load i32, i32* @NonPagedPool, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ROUND_UP(i32 %61, i32 %65)
  %67 = load i32, i32* @TAG_NTFS, align 4
  %68 = call i32* @ExAllocatePoolWithTag(i32 %60, i32 %66, i32 %67)
  store i32* %68, i32** %8, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %46
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = call i32 @ReleaseAttributeContext(%struct.TYPE_13__* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @ExFreeToNPagedLookasideList(i32* %75, i32* %76)
  store i32 0, i32* %2, align 4
  br label %150

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %98, %78
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = ptrtoint i32* %87 to i64
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = inttoptr i64 %91 to i32*
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ReadAttribute(%struct.TYPE_14__* %84, %struct.TYPE_13__* %85, i32 %86, i32* %92, i32 %96)
  br label %98

98:                                               ; preds = %83
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %10, align 4
  br label %79

105:                                              ; preds = %79
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = call i32 @ReleaseAttributeContext(%struct.TYPE_13__* %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = mul nsw i32 %113, 8
  %115 = call i32 @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %116, 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %117, %121
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %122, %126
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %127, %131
  %133 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = load i32*, i32** %8, align 8
  %135 = ptrtoint i32* %134 to i32
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @RtlInitializeBitMap(i32* %11, i32 %135, i32 %139)
  %141 = call i32 @RtlNumberOfClearBits(i32* %11)
  store i32 %141, i32* %9, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* @TAG_NTFS, align 4
  %144 = call i32 @ExFreePoolWithTag(i32* %142, i32 %143)
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @ExFreeToNPagedLookasideList(i32* %146, i32* %147)
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %105, %71, %41, %28, %19
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_14__*) #1

declare dso_local i32* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, i32*) #1

declare dso_local i32 @FindAttribute(%struct.TYPE_14__*, i32*, i32, i8*, i32, %struct.TYPE_13__**, i32*) #1

declare dso_local i32 @AttributeDataLength(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_13__*) #1

declare dso_local i32 @ReadAttribute(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i32, i32) #1

declare dso_local i32 @RtlNumberOfClearBits(i32*) #1

declare dso_local i32 @ExFreePoolWithTag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
