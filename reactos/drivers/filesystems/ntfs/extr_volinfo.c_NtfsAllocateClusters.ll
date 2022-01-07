; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_volinfo.c_NtfsAllocateClusters.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_volinfo.c_NtfsAllocateClusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"NtfsAllocateClusters(%p, %lu, %lu, %p, %p)\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@NTFS_FILE_BITMAP = common dso_local global i32 0, align 4
@AttributeData = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Total clusters: %I64x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Total clusters in bitmap: %I64x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Diff in size: %I64d B\0A\00", align 1
@STATUS_DISK_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsAllocateClusters(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %21, i32 %22, i32 %23, i32* %24, i32* %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = call i32* @ExAllocateFromNPagedLookasideList(i32* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %33, i32* %6, align 4
  br label %192

34:                                               ; preds = %5
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = load i32, i32* @NTFS_FILE_BITMAP, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @ReadFileRecord(%struct.TYPE_15__* %35, i32 %36, i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @NT_SUCCESS(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @ExFreeToNPagedLookasideList(i32* %44, i32* %45)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %192

48:                                               ; preds = %34
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* @AttributeData, align 4
  %52 = call i32 @FindAttribute(%struct.TYPE_15__* %49, i32* %50, i32 %51, i8* bitcast ([1 x i32]* @.str.1 to i8*), i32 0, %struct.TYPE_14__** %14, i32* null)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @NT_SUCCESS(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @ExFreeToNPagedLookasideList(i32* %58, i32* %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %6, align 4
  br label %192

62:                                               ; preds = %48
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @AttributeDataLength(i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @min(i32 %67, i32 -1)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = mul nsw i32 %69, 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %70, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load i32, i32* @NonPagedPool, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ROUND_UP(i32 %79, i32 %83)
  %85 = load i32, i32* @TAG_NTFS, align 4
  %86 = call i32* @ExAllocatePoolWithTag(i32 %78, i32 %84, i32 %85)
  store i32* %86, i32** %16, align 8
  %87 = load i32*, i32** %16, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %62
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %91 = call i32 @ReleaseAttributeContext(%struct.TYPE_14__* %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @ExFreeToNPagedLookasideList(i32* %93, i32* %94)
  %96 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %96, i32* %6, align 4
  br label %192

97:                                               ; preds = %62
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %15, align 4
  %104 = mul nsw i32 %103, 8
  %105 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %15, align 4
  %107 = mul nsw i32 %106, 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %107, %111
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %112, %116
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %117, %121
  %123 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %126 = load i32*, i32** %16, align 8
  %127 = ptrtoint i32* %126 to i32
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @ReadAttribute(%struct.TYPE_15__* %124, %struct.TYPE_14__* %125, i32 0, i32 %127, i32 %128)
  %130 = load i32*, i32** %16, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @RtlInitializeBitMap(i32* %18, i32* %130, i32 %134)
  %136 = call i32 @RtlNumberOfClearBits(i32* %18)
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %97
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %142 = call i32 @ReleaseAttributeContext(%struct.TYPE_14__* %141)
  %143 = load i32*, i32** %16, align 8
  %144 = load i32, i32* @TAG_NTFS, align 4
  %145 = call i32 @ExFreePoolWithTag(i32* %143, i32 %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @ExFreeToNPagedLookasideList(i32* %147, i32* %148)
  %150 = load i32, i32* @STATUS_DISK_FULL, align 4
  store i32 %150, i32* %6, align 4
  br label %192

151:                                              ; preds = %97
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @RtlFindClearBitsAndSet(i32* %18, i32 %152, i32 %153)
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load i32, i32* %19, align 4
  %159 = load i32*, i32** %10, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32*, i32** %11, align 8
  store i32 %160, i32* %161, align 4
  br label %175

162:                                              ; preds = %151
  %163 = load i32, i32* %8, align 4
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @RtlFindNextForwardRunClear(i32* %18, i32 %163, i32* %164)
  %166 = load i32*, i32** %11, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %162
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @RtlFindLongestRunClear(i32* %18, i32* %171)
  %173 = load i32*, i32** %11, align 8
  store i32 %172, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %162
  br label %175

175:                                              ; preds = %174, %157
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %178 = load i32*, i32** %16, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @WriteAttribute(%struct.TYPE_15__* %176, %struct.TYPE_14__* %177, i32 0, i32* %178, i32 %179, i32* %20, i32* %180)
  store i32 %181, i32* %12, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %183 = call i32 @ReleaseAttributeContext(%struct.TYPE_14__* %182)
  %184 = load i32*, i32** %16, align 8
  %185 = load i32, i32* @TAG_NTFS, align 4
  %186 = call i32 @ExFreePoolWithTag(i32* %184, i32 %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32*, i32** %13, align 8
  %190 = call i32 @ExFreeToNPagedLookasideList(i32* %188, i32* %189)
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %175, %140, %89, %56, %42, %32
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, i32*) #1

declare dso_local i32 @FindAttribute(%struct.TYPE_15__*, i32*, i32, i8*, i32, %struct.TYPE_14__**, i32*) #1

declare dso_local i32 @AttributeDataLength(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_14__*) #1

declare dso_local i32 @ReadAttribute(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i32*, i32) #1

declare dso_local i32 @RtlNumberOfClearBits(i32*) #1

declare dso_local i32 @ExFreePoolWithTag(i32*, i32) #1

declare dso_local i32 @RtlFindClearBitsAndSet(i32*, i32, i32) #1

declare dso_local i32 @RtlFindNextForwardRunClear(i32*, i32, i32*) #1

declare dso_local i32 @RtlFindLongestRunClear(i32*, i32*) #1

declare dso_local i32 @WriteAttribute(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
