; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_nfs.c_nfs_mount_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_nfs.c_nfs_mount_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_context = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__*, %struct.nfs_context*, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i8* }

@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"trying to mount '%s' again by adding a '/'\00", align 1
@nfs_stat64_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"nfs_stat64_async failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nfs_context*, i8*, i8*)* @nfs_mount_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_mount_cb(i32 %0, %struct.nfs_context* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  store i32 %0, i32* %5, align 4
  store %struct.nfs_context* %1, %struct.nfs_context** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.nfs_context*, %struct.nfs_context** %6, align 8
  %13 = call i32 @VLC_UNUSED(%struct.nfs_context* %12)
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %9, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %10, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load %struct.nfs_context*, %struct.nfs_context** %20, align 8
  %22 = load %struct.nfs_context*, %struct.nfs_context** %6, align 8
  %23 = icmp eq %struct.nfs_context* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @EACCES, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %81

36:                                               ; preds = %31
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @vlc_UrlParseFixup(%struct.TYPE_13__* %11, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %68, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %68, label %63

63:                                               ; preds = %51
  %64 = call i32* @NfsGetUrl(%struct.TYPE_13__* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  store i32* %64, i32** %66, align 8
  %67 = icmp eq i32* %64, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63, %51, %44, %36
  %69 = call i32 @vlc_UrlClean(%struct.TYPE_13__* %11)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @NFS_CHECK_STATUS(%struct.TYPE_14__* %70, i32 %71, i8* %72)
  br label %106

74:                                               ; preds = %63
  %75 = call i32 @vlc_UrlClean(%struct.TYPE_13__* %11)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @msg_Warn(%struct.TYPE_14__* %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %106

81:                                               ; preds = %31, %4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @NFS_CHECK_STATUS(%struct.TYPE_14__* %82, i32 %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %106

88:                                               ; preds = %81
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load %struct.nfs_context*, %struct.nfs_context** %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @nfs_stat64_cb, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = call i64 @nfs_stat64_async(%struct.nfs_context* %91, i32 %96, i32 %97, %struct.TYPE_14__* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %103 = call i32 @msg_Err(%struct.TYPE_14__* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %68, %74, %87, %101, %88
  ret void
}

declare dso_local i32 @VLC_UNUSED(%struct.nfs_context*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_UrlParseFixup(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @NfsGetUrl(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_13__*) #1

declare dso_local i64 @NFS_CHECK_STATUS(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i64 @nfs_stat64_async(%struct.nfs_context*, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
