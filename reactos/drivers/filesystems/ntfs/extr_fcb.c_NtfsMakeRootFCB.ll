; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsMakeRootFCB.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsMakeRootFCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32, i32, %struct.TYPE_31__, i64, %struct.TYPE_36__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_36__ = type { i32*, i64, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32, i32 }

@NTFS_FILE_ROOT = common dso_local global i32 0, align 4
@NTFS_FILE_NAME_WIN32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@FILENAME_ATTRIBUTE = common dso_local global i32 0, align 4
@NameLength = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_33__* @NtfsMakeRootFCB(%struct.TYPE_32__* %0) #0 {
  %2 = alloca %struct.TYPE_33__*, align 8
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %7 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %9 = call %struct.TYPE_34__* @ExAllocateFromNPagedLookasideList(i32* %8)
  store %struct.TYPE_34__* %9, %struct.TYPE_34__** %5, align 8
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %11 = icmp eq %struct.TYPE_34__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %2, align 8
  br label %117

13:                                               ; preds = %1
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %15 = load i32, i32* @NTFS_FILE_ROOT, align 4
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %17 = call i32 @ReadFileRecord(%struct.TYPE_32__* %14, i32 %15, %struct.TYPE_34__* %16)
  %18 = call i32 @NT_SUCCESS(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %24 = call i32 @ExFreeToNPagedLookasideList(i32* %22, %struct.TYPE_34__* %23)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %2, align 8
  br label %117

25:                                               ; preds = %13
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %28 = load i32, i32* @NTFS_FILE_NAME_WIN32, align 4
  %29 = call %struct.TYPE_35__* @GetFileNameFromRecord(%struct.TYPE_32__* %26, %struct.TYPE_34__* %27, i32 %28)
  store %struct.TYPE_35__* %29, %struct.TYPE_35__** %6, align 8
  %30 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %31 = icmp ne %struct.TYPE_35__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %36 = call i32 @ExFreeToNPagedLookasideList(i32* %34, %struct.TYPE_34__* %35)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %2, align 8
  br label %117

37:                                               ; preds = %25
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %39 = call %struct.TYPE_33__* @NtfsCreateFCB(i8* bitcast ([2 x i32]* @.str to i8*), i32* null, %struct.TYPE_32__* %38)
  store %struct.TYPE_33__* %39, %struct.TYPE_33__** %4, align 8
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %41 = icmp ne %struct.TYPE_33__* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %46 = call i32 @ExFreeToNPagedLookasideList(i32* %44, %struct.TYPE_34__* %45)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %2, align 8
  br label %117

47:                                               ; preds = %37
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %51 = load i32, i32* @FILENAME_ATTRIBUTE, align 4
  %52 = load i32, i32* @NameLength, align 4
  %53 = call i32 @FIELD_OFFSET(i32 %51, i32 %52)
  %54 = call i32 @memcpy(%struct.TYPE_36__* %49, %struct.TYPE_35__* %50, i32 %53)
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @UNICODE_NULL, align 4
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %64, i32* %69, align 4
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @NTFS_FILE_ROOT, align 4
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %105 = call i32 @NtfsFCBInitializeCache(%struct.TYPE_32__* %103, %struct.TYPE_33__* %104)
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %108 = call i32 @NtfsAddFCBToTable(%struct.TYPE_32__* %106, %struct.TYPE_33__* %107)
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %110 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %111 = call i32 @NtfsGrabFCB(%struct.TYPE_32__* %109, %struct.TYPE_33__* %110)
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %115 = call i32 @ExFreeToNPagedLookasideList(i32* %113, %struct.TYPE_34__* %114)
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_33__* %116, %struct.TYPE_33__** %2, align 8
  br label %117

117:                                              ; preds = %47, %42, %32, %20, %12
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  ret %struct.TYPE_33__* %118
}

declare dso_local %struct.TYPE_34__* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_32__*, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_35__* @GetFileNameFromRecord(%struct.TYPE_32__*, %struct.TYPE_34__*, i32) #1

declare dso_local %struct.TYPE_33__* @NtfsCreateFCB(i8*, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_36__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @NtfsFCBInitializeCache(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @NtfsAddFCBToTable(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @NtfsGrabFCB(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
