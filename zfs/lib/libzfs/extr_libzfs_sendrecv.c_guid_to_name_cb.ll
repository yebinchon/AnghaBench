; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_guid_to_name_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_guid_to_name_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i64, i32, i32* }

@ZFS_PROP_GUID = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*)* @guid_to_name_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guid_to_name_cb(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @strrchr(i32 %18, i8 signext 47)
  store i8* %19, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @strcmp(i8* %23, i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = call i32 @zfs_close(%struct.TYPE_14__* %30)
  store i32 0, i32* %3, align 4
  br label %81

32:                                               ; preds = %21, %15, %2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = load i32, i32* @ZFS_PROP_GUID, align 4
  %35 = call i64 @zfs_prop_get_int(%struct.TYPE_14__* %33, i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %32
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = call i64 @redact_snaps_match(%struct.TYPE_14__* %46, %struct.TYPE_15__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45, %40
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcpy(i32 %53, i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = call i32 @zfs_close(%struct.TYPE_14__* %58)
  %60 = load i32, i32* @EEXIST, align 4
  store i32 %60, i32* %3, align 4
  br label %81

61:                                               ; preds = %45, %32
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = call i32 @zfs_iter_children(%struct.TYPE_14__* %62, i32 (%struct.TYPE_14__*, i8*)* @guid_to_name_cb, %struct.TYPE_15__* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @EEXIST, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = call i32 @zfs_iter_bookmarks(%struct.TYPE_14__* %74, i32 (%struct.TYPE_14__*, i8*)* @guid_to_name_cb, %struct.TYPE_15__* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %68, %61
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = call i32 @zfs_close(%struct.TYPE_14__* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %50, %29
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_14__*) #1

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @redact_snaps_match(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @zfs_iter_children(%struct.TYPE_14__*, i32 (%struct.TYPE_14__*, i8*)*, %struct.TYPE_15__*) #1

declare dso_local i32 @zfs_iter_bookmarks(%struct.TYPE_14__*, i32 (%struct.TYPE_14__*, i8*)*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
