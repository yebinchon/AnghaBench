; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_create.c_NtfsMoonWalkID.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_create.c_NtfsMoonWalkID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NtfsMoonWalkID(%p, %I64x, %p)\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@NRH_FILE_TYPE = common dso_local global i64 0, align 8
@FRH_IN_USE = common dso_local global i32 0, align 4
@STATUS_OBJECT_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"$FILE_NAME attribute not found for %I64x\0A\00", align 1
@NTFS_MFT_MASK = common dso_local global i32 0, align 4
@NTFS_FILE_ROOT = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32, %struct.TYPE_18__*)* @NtfsMoonWalkID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsMoonWalkID(%struct.TYPE_21__* %0, i32 %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %13, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = call i32 @DPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %21, i32 %22, %struct.TYPE_18__* %23)
  %25 = mul nuw i64 4, %16
  %26 = trunc i64 %25 to i32
  %27 = call i32 @RtlZeroMemory(i32* %18, i32 %26)
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = call %struct.TYPE_19__* @ExAllocateFromNPagedLookasideList(i32* %29)
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %9, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %32 = icmp eq %struct.TYPE_19__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %173

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %118, %35
  %37 = load i64, i64* @TRUE, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %119

39:                                               ; preds = %36
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %43 = call i32 @ReadFileRecord(%struct.TYPE_21__* %40, i32 %41, %struct.TYPE_19__* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @NT_SUCCESS(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %119

48:                                               ; preds = %39
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NRH_FILE_TYPE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FRH_IN_USE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* @STATUS_OBJECT_PATH_NOT_FOUND, align 4
  store i32 %64, i32* %8, align 4
  br label %119

65:                                               ; preds = %48
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %68 = call %struct.TYPE_20__* @GetBestFileNameFromRecord(%struct.TYPE_21__* %66, %struct.TYPE_19__* %67)
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %10, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %70 = icmp eq %struct.TYPE_20__* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @STATUS_OBJECT_PATH_NOT_FOUND, align 4
  store i32 %74, i32* %8, align 4
  br label %119

75:                                               ; preds = %65
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @MAX_PATH, align 4
  %83 = icmp slt i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %18, i64 %87
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i32 @RtlCopyMemory(i32* %88, i32* %91, i32 %97)
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @MAX_PATH, align 4
  %103 = icmp slt i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @ASSERT(i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %18, i64 %107
  store i32 92, i32* %108, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @NTFS_MFT_MASK, align 4
  %113 = and i32 %111, %112
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @NTFS_FILE_ROOT, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %75
  br label %119

118:                                              ; preds = %75
  br label %36

119:                                              ; preds = %117, %71, %63, %47, %36
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %123 = call i32 @ExFreeToNPagedLookasideList(i32* %121, %struct.TYPE_19__* %122)
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @NT_SUCCESS(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %173

129:                                              ; preds = %119
  %130 = load i32, i32* @MAX_PATH, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @MAX_PATH, align 4
  %140 = load i32, i32* %13, align 4
  %141 = sub nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @NonPagedPool, align 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @TAG_NTFS, align 4
  %152 = call i32* @ExAllocatePoolWithTag(i32 %147, i32 %150, i32 %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  store i32* %152, i32** %154, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %129
  %160 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %160, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %173

161:                                              ; preds = %129
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %18, i64 %166
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @RtlCopyMemory(i32* %164, i32* %167, i32 %170)
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %173

173:                                              ; preds = %161, %159, %127, %33
  %174 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_21__*, i32, %struct.TYPE_18__*) #2

declare dso_local i32 @RtlZeroMemory(i32*, i32) #2

declare dso_local %struct.TYPE_19__* @ExAllocateFromNPagedLookasideList(i32*) #2

declare dso_local i32 @ReadFileRecord(%struct.TYPE_21__*, i32, %struct.TYPE_19__*) #2

declare dso_local i32 @NT_SUCCESS(i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local %struct.TYPE_20__* @GetBestFileNameFromRecord(%struct.TYPE_21__*, %struct.TYPE_19__*) #2

declare dso_local i32 @DPRINT1(i8*, i32) #2

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #2

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_19__*) #2

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
