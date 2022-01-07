; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_dirctrl.c_notify_change_directory.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_dirctrl.c_notify_change_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_21__, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_26__*, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { i64, i64, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__*, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"IRP_MN_NOTIFY_CHANGE_DIRECTORY\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ccb was NULL\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"no fileref\0A\00", align 1
@UserMode = common dso_local global i64 0, align 8
@FILE_LIST_DIRECTORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"insufficient privileges\0A\00", align 1
@STATUS_ACCESS_DENIED = common dso_local global i64 0, align 8
@BTRFS_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"FileObject %p\0A\00", align 1
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"fileref_get_filename returned %08x\0A\00", align 1
@SL_WATCH_TREE = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_25__*, %struct.TYPE_27__*)* @notify_change_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @notify_change_directory(%struct.TYPE_25__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %14 = call %struct.TYPE_28__* @IoGetCurrentIrpStackLocation(%struct.TYPE_27__* %13)
  store %struct.TYPE_28__* %14, %struct.TYPE_28__** %6, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %8, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %9, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %25 = icmp ne %struct.TYPE_26__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32* [ %29, %26 ], [ null, %30 ]
  store i32* %32, i32** %10, align 8
  %33 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %35 = icmp ne %struct.TYPE_26__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %38, i64* %3, align 8
  br label %174

39:                                               ; preds = %31
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %44, i64* %3, align 8
  br label %174

45:                                               ; preds = %39
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @UserMode, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FILE_LIST_DIRECTORY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i64, i64* @STATUS_ACCESS_DENIED, align 8
  store i64 %60, i64* %3, align 8
  br label %174

61:                                               ; preds = %51, %45
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = call i32 @ExAcquireResourceSharedLite(i32* %65, i32 1)
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ExAcquireResourceExclusiveLite(i32* %70, i32 1)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BTRFS_TYPE_DIRECTORY, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %78, i64* %11, align 8
  br label %162

79:                                               ; preds = %61
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_18__* %80)
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %137

87:                                               ; preds = %79
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  %97 = call i64 @fileref_get_filename(i32* %94, %struct.TYPE_19__* %96, i32* null, i64* %12)
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %87
  %102 = load i32, i32* @PagedPool, align 4
  %103 = load i64, i64* %12, align 8
  %104 = load i32, i32* @ALLOC_TAG, align 4
  %105 = call i32 @ExAllocatePoolWithTag(i32 %102, i64 %103, i32 %104)
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %101
  %115 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %116, i64* %11, align 8
  br label %162

117:                                              ; preds = %101
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  store i64 %118, i64* %121, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 1
  %125 = call i64 @fileref_get_filename(i32* %122, %struct.TYPE_19__* %124, i32* null, i64* %12)
  store i64 %125, i64* %11, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @NT_SUCCESS(i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %117
  %130 = load i64, i64* %11, align 8
  %131 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %130)
  br label %162

132:                                              ; preds = %117
  br label %136

133:                                              ; preds = %87
  %134 = load i64, i64* %11, align 8
  %135 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %134)
  br label %162

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136, %79
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %144, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 1
  %148 = ptrtoint %struct.TYPE_19__* %147 to i32
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SL_WATCH_TREE, align 4
  %153 = and i32 %151, %152
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %160 = call i32 @FsRtlNotifyFilterChangeDirectory(i32 %140, i32* %142, %struct.TYPE_26__* %145, i32 %148, i32 %153, i32 0, i32 %158, %struct.TYPE_27__* %159, i32* null, i32* null, i32* null)
  %161 = load i64, i64* @STATUS_PENDING, align 8
  store i64 %161, i64* %11, align 8
  br label %162

162:                                              ; preds = %137, %133, %129, %114, %77
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @ExReleaseResourceLite(i32* %166)
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = call i32 @ExReleaseResourceLite(i32* %171)
  %173 = load i64, i64* %11, align 8
  store i64 %173, i64* %3, align 8
  br label %174

174:                                              ; preds = %162, %58, %42, %36
  %175 = load i64, i64* %3, align 8
  ret i64 %175
}

declare dso_local %struct.TYPE_28__* @IoGetCurrentIrpStackLocation(%struct.TYPE_27__*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i64 @fileref_get_filename(i32*, %struct.TYPE_19__*, i32*, i64*) #1

declare dso_local i32 @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @FsRtlNotifyFilterChangeDirectory(i32, i32*, %struct.TYPE_26__*, i32, i32, i32, i32, %struct.TYPE_27__*, i32*, i32*, i32*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
