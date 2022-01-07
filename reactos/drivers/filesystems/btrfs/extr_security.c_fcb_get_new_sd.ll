; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_fcb_get_new_sd.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_fcb_get_new_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }

@BTRFS_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@SEF_SACL_AUTO_INHERIT = common dso_local global i32 0, align 4
@PagedPool = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SeAssignSecurityEx returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"RtlGetOwnerSecurityDescriptor returned %08x\0A\00", align 1
@UID_NOBODY = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcb_get_new_sd(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i32* [ %18, %13 ], [ null, %19 ]
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = bitcast i32* %26 to i8**
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BTRFS_TYPE_DIRECTORY, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @SEF_SACL_AUTO_INHERIT, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = call i32 (...) @IoGetFileObjectGenericMapping()
  %38 = load i32, i32* @PagedPool, align 4
  %39 = call i32 @SeAssignSecurityEx(i32* %21, i32 %24, i8** %27, i32* null, i32 %33, i32 %34, i32* %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @NT_SUCCESS(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %20
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %83

47:                                               ; preds = %20
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @RtlGetOwnerSecurityDescriptor(i32 %50, i32* %9, i32* %10)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @NT_SUCCESS(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @UID_NOBODY, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  br label %68

62:                                               ; preds = %47
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @sid_to_uid(i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = icmp ne %struct.TYPE_11__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  br label %77

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi %struct.TYPE_14__* [ %75, %72 ], [ null, %76 ]
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = call i32 @find_gid(%struct.TYPE_12__* %69, %struct.TYPE_14__* %78, i32* %80)
  %82 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %43
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @SeAssignSecurityEx(i32*, i32, i8**, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @IoGetFileObjectGenericMapping(...) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @RtlGetOwnerSecurityDescriptor(i32, i32*, i32*) #1

declare dso_local i32 @sid_to_uid(i32) #1

declare dso_local i32 @find_gid(%struct.TYPE_12__*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
