; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_create.c_NtfsCreateDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_create.c_NtfsCreateDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_28__ = type { i64, i64, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NtfsCreateFileRecord(%p, %p, %s, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"ERROR: Unable to allocate memory for file record!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@FRH_DIRECTORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"ERROR: Failed to create empty B-Tree!\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"ERROR: Unable to create empty index root!\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i32] [i32 36, i32 73, i32 51, i32 48, i32 0], align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"ERROR: Failed to add index root to new file record!\0A\00", align 1
@TAG_NTFS = common dso_local global i32 0, align 4
@NTFS_FILE_ROOT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"New File Reference: 0x%016I64x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsCreateDirectory(%struct.TYPE_29__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_29__* %21, i32 %22, i8* %26, i8* %30)
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %33 = call %struct.TYPE_28__* @NtfsCreateEmptyFileRecord(%struct.TYPE_29__* %32)
  store %struct.TYPE_28__* %33, %struct.TYPE_28__** %11, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %35 = icmp ne %struct.TYPE_28__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %38, i32* %5, align 4
  br label %188

39:                                               ; preds = %4
  %40 = load i32, i32* @FRH_DIRECTORY, align 4
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %46 = ptrtoint %struct.TYPE_28__* %45 to i64
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = inttoptr i64 %50 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %51, %struct.TYPE_27__** %12, align 8
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %54 = call i32 @AddStandardInformation(%struct.TYPE_28__* %52, %struct.TYPE_27__* %53)
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %56 = ptrtoint %struct.TYPE_27__* %55 to i64
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = inttoptr i64 %60 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %61, %struct.TYPE_27__** %12, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @AddFileName(%struct.TYPE_28__* %62, %struct.TYPE_27__* %63, %struct.TYPE_29__* %64, i32 %65, i32 %66, i64* %14)
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %69 = ptrtoint %struct.TYPE_27__* %68 to i64
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %69, %73
  store i64 %74, i64* %13, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %76 = ptrtoint %struct.TYPE_27__* %75 to i64
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = inttoptr i64 %80 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %81, %struct.TYPE_27__** %12, align 8
  %82 = call i32 @CreateEmptyBTree(i32* %16)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @NT_SUCCESS(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %39
  %87 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %91 = call i32 @ExFreeToNPagedLookasideList(i32* %89, %struct.TYPE_28__* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %188

93:                                               ; preds = %39
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %99 = ptrtoint %struct.TYPE_27__* %98 to i64
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %101 = ptrtoint %struct.TYPE_28__* %100 to i64
  %102 = sub nsw i64 %99, %101
  %103 = sub nsw i64 %97, %102
  %104 = sub i64 %103, 16
  store i64 %104, i64* %18, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load i64, i64* %18, align 8
  %108 = call i32 @CreateIndexRootFromBTree(%struct.TYPE_29__* %105, i32 %106, i64 %107, i32* %17, i64* %19)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i64 @NT_SUCCESS(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %93
  %113 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @DestroyBTree(i32 %114)
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %119 = call i32 @ExFreeToNPagedLookasideList(i32* %117, %struct.TYPE_28__* %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %5, align 4
  br label %188

121:                                              ; preds = %93
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @DestroyBTree(i32 %122)
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i64, i64* %19, align 8
  %129 = call i32 @AddIndexRoot(%struct.TYPE_29__* %124, %struct.TYPE_28__* %125, %struct.TYPE_27__* %126, i32 %127, i64 %128, i8* bitcast ([5 x i32]* @.str.6 to i8*), i32 4)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i64 @NT_SUCCESS(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %121
  %134 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @TAG_NTFS, align 4
  %137 = call i32 @ExFreePoolWithTag(i32 %135, i32 %136)
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %141 = call i32 @ExFreeToNPagedLookasideList(i32* %139, %struct.TYPE_28__* %140)
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %5, align 4
  br label %188

143:                                              ; preds = %121
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %146 = call i32 @NtfsDumpFileRecord(%struct.TYPE_29__* %144, %struct.TYPE_28__* %145)
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @AddNewMftEntry(%struct.TYPE_28__* %147, %struct.TYPE_29__* %148, i64* %15, i32 %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i64 @NT_SUCCESS(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %143
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* @NTFS_FILE_ROOT, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* @NTFS_FILE_ROOT, align 8
  %161 = shl i64 %160, 48
  %162 = add nsw i64 %159, %161
  store i64 %162, i64* %15, align 8
  br label %170

163:                                              ; preds = %154
  %164 = load i64, i64* %15, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = shl i64 %167, 48
  %169 = add nsw i64 %164, %168
  store i64 %169, i64* %15, align 8
  br label %170

170:                                              ; preds = %163, %158
  %171 = load i64, i64* %15, align 8
  %172 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %171)
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %174 = load i64, i64* %14, align 8
  %175 = load i64, i64* %15, align 8
  %176 = load i64, i64* %13, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @NtfsAddFilenameToDirectory(%struct.TYPE_29__* %173, i64 %174, i64 %175, i64 %176, i32 %177)
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %170, %143
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* @TAG_NTFS, align 4
  %182 = call i32 @ExFreePoolWithTag(i32 %180, i32 %181)
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %186 = call i32 @ExFreeToNPagedLookasideList(i32* %184, %struct.TYPE_28__* %185)
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %179, %133, %112, %86, %36
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_29__*, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_28__* @NtfsCreateEmptyFileRecord(%struct.TYPE_29__*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @AddStandardInformation(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @AddFileName(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_29__*, i32, i32, i64*) #1

declare dso_local i32 @CreateEmptyBTree(i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @CreateIndexRootFromBTree(%struct.TYPE_29__*, i32, i64, i32*, i64*) #1

declare dso_local i32 @DestroyBTree(i32) #1

declare dso_local i32 @AddIndexRoot(%struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_27__*, i32, i64, i8*, i32) #1

declare dso_local i32 @ExFreePoolWithTag(i32, i32) #1

declare dso_local i32 @NtfsDumpFileRecord(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @AddNewMftEntry(%struct.TYPE_28__*, %struct.TYPE_29__*, i64*, i32) #1

declare dso_local i32 @NtfsAddFilenameToDirectory(%struct.TYPE_29__*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
