; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_convert_posix_acl_to_disk_buffer.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_convert_posix_acl_to_disk_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_VERSION = common dso_local global i32 0, align 4
@EXT4_ACL_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64*)* @convert_posix_acl_to_disk_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_posix_acl_to_disk_buffer(i8* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %10, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 1
  %22 = bitcast %struct.TYPE_5__* %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %12, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %106

27:                                               ; preds = %4
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %5, align 4
  br label %106

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @POSIX_ACL_XATTR_VERSION, align 4
  %37 = call i64 @ext2fs_cpu_to_le32(i32 %36)
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %5, align 4
  br label %106

41:                                               ; preds = %32
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @posix_acl_xattr_count(i64 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %13, align 8
  %46 = load i32, i32* @EXT4_ACL_VERSION, align 4
  %47 = call i64 @ext2fs_cpu_to_le32(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %16, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %5, align 4
  br label %106

54:                                               ; preds = %41
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  store i8* %56, i8** %15, align 8
  store i64 8, i64* %14, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %11, align 8
  br label %61

61:                                               ; preds = %100, %54
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %64 = icmp ne %struct.TYPE_6__* %62, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %61
  %66 = load i8*, i8** %15, align 8
  %67 = bitcast i8* %66 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %17, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @ext2fs_cpu_to_le16(i32 %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @ext2fs_cpu_to_le16(i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %99 [
    i32 128, label %83
    i32 132, label %83
    i32 131, label %83
    i32 130, label %83
    i32 129, label %88
    i32 133, label %88
  ]

83:                                               ; preds = %65, %65, %65, %65
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  store i8* %85, i8** %15, align 8
  %86 = load i64, i64* %14, align 8
  %87 = add i64 %86, 4
  store i64 %87, i64* %14, align 8
  br label %99

88:                                               ; preds = %65, %65
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ext2fs_cpu_to_le32(i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 24
  store i8* %96, i8** %15, align 8
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %97, 24
  store i64 %98, i64* %14, align 8
  br label %99

99:                                               ; preds = %65, %88, %83
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 1
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %12, align 8
  br label %61

103:                                              ; preds = %61
  %104 = load i64, i64* %14, align 8
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %52, %39, %30, %25
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @ext2fs_cpu_to_le32(i32) #1

declare dso_local i32 @posix_acl_xattr_count(i64) #1

declare dso_local i8* @ext2fs_cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
