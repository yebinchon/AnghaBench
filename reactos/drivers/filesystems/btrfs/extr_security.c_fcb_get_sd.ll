; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_fcb_get_sd.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_fcb_get_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct._fcb = type { i32 }

@EA_NTACL = common dso_local global i32 0, align 4
@EA_NTACL_HASH = common dso_local global i32 0, align 4
@BTRFS_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@SEF_DACL_AUTO_INHERIT = common dso_local global i32 0, align 4
@PagedPool = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SeAssignSecurityEx returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"uid_to_sid returned %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcb_get_sd(%struct.TYPE_6__* %0, %struct._fcb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct._fcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct._fcb* %1, %struct._fcb** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EA_NTACL, align 4
  %27 = load i32, i32* @EA_NTACL_HASH, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = bitcast i32* %29 to i32**
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @get_xattr(i32 %19, i32 %22, i32 %25, i32 %26, i32 %27, i32** %30, i32* %13, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %102

35:                                               ; preds = %16, %4
  %36 = load %struct._fcb*, %struct._fcb** %6, align 8
  %37 = icmp ne %struct._fcb* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = call i32 @get_top_level_sd(%struct.TYPE_6__* %39)
  br label %102

41:                                               ; preds = %35
  %42 = call i32 @SeCaptureSubjectContext(i32* %12)
  %43 = load %struct._fcb*, %struct._fcb** %6, align 8
  %44 = getelementptr inbounds %struct._fcb, %struct._fcb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = bitcast i32* %47 to i8**
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BTRFS_TYPE_DIRECTORY, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* @SEF_DACL_AUTO_INHERIT, align 4
  %56 = call i32 (...) @IoGetFileObjectGenericMapping()
  %57 = load i32, i32* @PagedPool, align 4
  %58 = call i32 @SeAssignSecurityEx(i32 %45, i32* null, i8** %48, i32* null, i32 %54, i32 %55, i32* %12, i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @NT_SUCCESS(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %41
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %102

65:                                               ; preds = %41
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @uid_to_sid(i32 %69, i32** %10)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @NT_SUCCESS(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %102

77:                                               ; preds = %65
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @RtlSetOwnerSecurityDescriptor(i32* %79, i32* %80, i32 0)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @gid_to_sid(i32 %85, i32** %11)
  %87 = load i32*, i32** %11, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %77
  %90 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @ExFreePool(i32* %91)
  br label %102

93:                                               ; preds = %77
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @RtlSetGroupSecurityDescriptor(i32* %95, i32* %96, i32 0)
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @ExFreePool(i32* %98)
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @ExFreePool(i32* %100)
  br label %102

102:                                              ; preds = %93, %89, %74, %62, %38, %34
  ret void
}

declare dso_local i64 @get_xattr(i32, i32, i32, i32, i32, i32**, i32*, i32) #1

declare dso_local i32 @get_top_level_sd(%struct.TYPE_6__*) #1

declare dso_local i32 @SeCaptureSubjectContext(i32*) #1

declare dso_local i32 @SeAssignSecurityEx(i32, i32*, i8**, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @IoGetFileObjectGenericMapping(...) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @uid_to_sid(i32, i32**) #1

declare dso_local i32 @RtlSetOwnerSecurityDescriptor(i32*, i32*, i32) #1

declare dso_local i32 @gid_to_sid(i32, i32**) #1

declare dso_local i32 @ExFreePool(i32*) #1

declare dso_local i32 @RtlSetGroupSecurityDescriptor(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
