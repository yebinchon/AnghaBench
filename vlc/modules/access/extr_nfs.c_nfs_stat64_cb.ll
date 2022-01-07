; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_nfs.c_nfs_stat64_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_nfs.c_nfs_stat64_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_context = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.nfs_context*, %struct.nfs_stat_64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.nfs_stat_64 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"nfs_opendir: '%s'\00", align 1
@nfs_opendir_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"nfs_opendir_async failed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"nfs_open: '%s'\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@nfs_open_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"nfs_open_async failed\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"nfs_stat64_cb: file type not handled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nfs_context*, i8*, i8*)* @nfs_stat64_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_stat64_cb(i32 %0, %struct.nfs_context* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.nfs_stat_64*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.nfs_context* %1, %struct.nfs_context** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.nfs_context*, %struct.nfs_context** %6, align 8
  %13 = call i32 @VLC_UNUSED(%struct.nfs_context* %12)
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %10, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load %struct.nfs_context*, %struct.nfs_context** %20, align 8
  %22 = load %struct.nfs_context*, %struct.nfs_context** %6, align 8
  %23 = icmp eq %struct.nfs_context* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @NFS_CHECK_STATUS(%struct.TYPE_10__* %26, i32 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %134

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.nfs_stat_64*
  store %struct.nfs_stat_64* %34, %struct.nfs_stat_64** %11, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load %struct.nfs_stat_64*, %struct.nfs_stat_64** %11, align 8
  %38 = bitcast %struct.nfs_stat_64* %36 to i8*
  %39 = bitcast %struct.nfs_stat_64* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 %39, i64 12, i1 false)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %32
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load %struct.nfs_context*, %struct.nfs_context** %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.nfs_stat_64, %struct.nfs_stat_64* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @nfs_set_uid(%struct.nfs_context* %47, i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load %struct.nfs_context*, %struct.nfs_context** %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.nfs_stat_64, %struct.nfs_stat_64* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nfs_set_gid(%struct.nfs_context* %55, i32 %59)
  br label %61

61:                                               ; preds = %44, %32
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.nfs_stat_64, %struct.nfs_stat_64* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @S_ISDIR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @msg_Dbg(%struct.TYPE_10__* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load %struct.nfs_context*, %struct.nfs_context** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @nfs_opendir_cb, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = call i64 @nfs_opendir_async(%struct.nfs_context* %78, i32 %83, i32 %84, %struct.TYPE_10__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %68
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %90 = call i32 @msg_Err(%struct.TYPE_10__* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %68
  br label %134

94:                                               ; preds = %61
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.nfs_stat_64, %struct.nfs_stat_64* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @S_ISREG(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %94
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @msg_Dbg(%struct.TYPE_10__* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load %struct.nfs_context*, %struct.nfs_context** %110, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @O_RDONLY, align 4
  %118 = load i32, i32* @nfs_open_cb, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %120 = call i64 @nfs_open_async(%struct.nfs_context* %111, i32 %116, i32 %117, i32 %118, %struct.TYPE_10__* %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %101
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %124 = call i32 @msg_Err(%struct.TYPE_10__* %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %122, %101
  br label %133

128:                                              ; preds = %94
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = call i32 @msg_Err(%struct.TYPE_10__* %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %128, %127
  br label %134

134:                                              ; preds = %31, %133, %93
  ret void
}

declare dso_local i32 @VLC_UNUSED(%struct.nfs_context*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NFS_CHECK_STATUS(%struct.TYPE_10__*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nfs_set_uid(%struct.nfs_context*, i32) #1

declare dso_local i32 @nfs_set_gid(%struct.nfs_context*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @nfs_opendir_async(%struct.nfs_context*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @nfs_open_async(%struct.nfs_context*, i32, i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
