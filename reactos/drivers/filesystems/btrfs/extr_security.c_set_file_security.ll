; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_set_file_security.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_set_file_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_28__*, %struct.TYPE_26__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32, %struct.TYPE_24__, %struct.TYPE_19__*, %struct.TYPE_21__, i32*, i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %p, %p, %x)\0A\00", align 1
@STATUS_MEDIA_WRITE_PROTECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"could not find parent fcb for stream\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@PagedPool = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"SeSetSecurityDescriptorInfo returned %08x\0A\00", align 1
@FILE_NOTIFY_CHANGE_SECURITY = common dso_local global i32 0, align 4
@FILE_ACTION_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_18__*, i32*, i32*, i32)* @set_file_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_file_security(%struct.TYPE_27__* %0, %struct.TYPE_18__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %13, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  store %struct.TYPE_28__* %24, %struct.TYPE_28__** %14, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %26 = icmp ne %struct.TYPE_28__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  br label %32

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi %struct.TYPE_25__* [ %30, %27 ], [ null, %31 ]
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %15, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_27__* %34, %struct.TYPE_18__* %35, i32* %36, i32 %38)
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @STATUS_MEDIA_WRITE_PROTECTED, align 4
  store i32 %45, i32* %6, align 4
  br label %171

46:                                               ; preds = %32
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %53 = icmp ne %struct.TYPE_25__* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = icmp ne %struct.TYPE_20__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %63, align 8
  store %struct.TYPE_26__* %64, %struct.TYPE_26__** %13, align 8
  br label %68

65:                                               ; preds = %54, %51
  %66 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %67, i32* %6, align 4
  br label %171

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %71 = icmp ne %struct.TYPE_26__* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %74 = icmp ne %struct.TYPE_28__* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %76, i32* %6, align 4
  br label %171

77:                                               ; preds = %72
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ExAcquireResourceExclusiveLite(i32 %81, i32 1)
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i64 @is_subvol_readonly(%struct.TYPE_19__* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %90, i32* %12, align 4
  br label %164

91:                                               ; preds = %77
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %16, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 6
  %99 = bitcast i32** %98 to i8**
  %100 = load i32, i32* @PagedPool, align 4
  %101 = call i32 (...) @IoGetFileObjectGenericMapping()
  %102 = call i32 @SeSetSecurityDescriptorInfo(i32* null, i32* %95, i32* %96, i8** %99, i32 %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @NT_SUCCESS(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %12, align 4
  %108 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %164

109:                                              ; preds = %91
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @ExFreePool(i32* %110)
  %112 = call i32 @KeQuerySystemTime(i32* %17)
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @win_time_to_unix(i32 %113, i8** %18)
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %109
  %127 = load i8*, i8** %18, align 8
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  store i8* %127, i8** %130, align 8
  br label %131

131:                                              ; preds = %126, %109
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 2
  store i32 1, i32* %142, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 1
  store i32 %146, i32* %151, align 8
  %152 = load i8*, i8** %18, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  store i8* %152, i8** %157, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %159 = call i32 @mark_fcb_dirty(%struct.TYPE_26__* %158)
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %161 = load i32, i32* @FILE_NOTIFY_CHANGE_SECURITY, align 4
  %162 = load i32, i32* @FILE_ACTION_MODIFIED, align 4
  %163 = call i32 @queue_notification_fcb(%struct.TYPE_25__* %160, i32 %161, i32 %162, i32* null)
  br label %164

164:                                              ; preds = %131, %106, %89
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ExReleaseResourceLite(i32 %168)
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %164, %75, %65, %44
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_27__*, %struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32, i32) #1

declare dso_local i64 @is_subvol_readonly(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @SeSetSecurityDescriptorInfo(i32*, i32*, i32*, i8**, i32, i32) #1

declare dso_local i32 @IoGetFileObjectGenericMapping(...) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePool(i32*) #1

declare dso_local i32 @KeQuerySystemTime(i32*) #1

declare dso_local i32 @win_time_to_unix(i32, i8**) #1

declare dso_local i32 @mark_fcb_dirty(%struct.TYPE_26__*) #1

declare dso_local i32 @queue_notification_fcb(%struct.TYPE_25__*, i32, i32, i32*) #1

declare dso_local i32 @ExReleaseResourceLite(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
