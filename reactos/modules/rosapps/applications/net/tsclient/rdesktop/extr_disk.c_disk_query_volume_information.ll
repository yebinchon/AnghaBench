; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_query_volume_information.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_query_volume_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.fileinfo* }
%struct.fileinfo = type { i32 }
%struct.STATFS_T = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"statfs\00", align 1
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@FS_CASE_SENSITIVE = common dso_local global i32 0, align 4
@FS_CASE_IS_PRESERVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"IRP Query Volume Information class: 0x%x\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_query_volume_information(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.STATFS_T, align 4
  %11 = alloca %struct.fileinfo*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca { i64, i32 }, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %16, i64 %17
  store %struct.fileinfo* %18, %struct.fileinfo** %11, align 8
  %19 = load %struct.fileinfo*, %struct.fileinfo** %11, align 8
  %20 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @STATFS_FN(i32 %21, %struct.STATFS_T* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %26, i32* %5, align 4
  br label %125

27:                                               ; preds = %4
  %28 = load %struct.fileinfo*, %struct.fileinfo** %11, align 8
  %29 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_7__* @FsVolumeInfo(i32 %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %12, align 8
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %119 [
    i32 128, label %33
    i32 129, label %64
    i32 136, label %84
    i32 132, label %118
    i32 134, label %118
    i32 135, label %118
    i32 133, label %118
    i32 130, label %118
    i32 131, label %118
  ]

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @out_uint32_le(i32 %34, i32 0)
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @out_uint32_le(i32 %36, i32 0)
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @out_uint32_le(i32 %38, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlen(i32 %46)
  %48 = mul nsw i32 2, %47
  %49 = call i32 @out_uint32_le(i32 %43, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @out_uint8(i32 %50, i32 0)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strlen(i32 %59)
  %61 = mul nsw i32 2, %60
  %62 = sub nsw i32 %61, 2
  %63 = call i32 @rdp_out_unistr(%struct.TYPE_6__* %52, i32 %53, i32 %56, i32 %62)
  br label %123

64:                                               ; preds = %27
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds %struct.STATFS_T, %struct.STATFS_T* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @out_uint32_le(i32 %65, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @out_uint32_le(i32 %69, i32 0)
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds %struct.STATFS_T, %struct.STATFS_T* %10, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @out_uint32_le(i32 %71, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @out_uint32_le(i32 %75, i32 0)
  %77 = load i32, i32* %9, align 4
  %78 = getelementptr inbounds %struct.STATFS_T, %struct.STATFS_T* %10, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 512
  %81 = call i32 @out_uint32_le(i32 %77, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @out_uint32_le(i32 %82, i32 512)
  br label %123

84:                                               ; preds = %27
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @FS_CASE_SENSITIVE, align 4
  %87 = load i32, i32* @FS_CASE_IS_PRESERVED, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @out_uint32_le(i32 %85, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = bitcast { i64, i32 }* %13 to i8*
  %92 = bitcast %struct.STATFS_T* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 12, i1 false)
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %94 = load i64, i64* %93, align 4
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @F_NAMELEN(i64 %94, i32 %96)
  %98 = call i32 @out_uint32_le(i32 %90, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @strlen(i32 %102)
  %104 = mul nsw i32 2, %103
  %105 = call i32 @out_uint32_le(i32 %99, i32 %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @strlen(i32 %113)
  %115 = mul nsw i32 2, %114
  %116 = sub nsw i32 %115, 2
  %117 = call i32 @rdp_out_unistr(%struct.TYPE_6__* %106, i32 %107, i32 %110, i32 %116)
  br label %123

118:                                              ; preds = %27, %27, %27, %27, %27, %27
  br label %119

119:                                              ; preds = %27, %118
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @unimpl(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %122, i32* %5, align 4
  br label %125

123:                                              ; preds = %84, %64, %33
  %124 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %119, %24
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i64 @STATFS_FN(i32, %struct.STATFS_T*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local %struct.TYPE_7__* @FsVolumeInfo(i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @out_uint8(i32, i32) #1

declare dso_local i32 @rdp_out_unistr(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @F_NAMELEN(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
