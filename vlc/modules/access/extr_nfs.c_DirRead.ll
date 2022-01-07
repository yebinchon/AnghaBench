; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_nfs.c_DirRead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_nfs.c_DirRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.nfsdirent = type { i32, i32 }
%struct.vlc_readdir_helper = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@ITEM_TYPE_FILE = common dso_local global i32 0, align 4
@ITEM_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@ITEM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@ITEM_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @DirRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DirRead(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.nfsdirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_readdir_helper, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %5, align 8
  %15 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %8, %struct.TYPE_5__* %20, i32* %21)
  br label %23

23:                                               ; preds = %68, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @VLC_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.nfsdirent* @nfs_readdir(i32 %30, i32 %33)
  store %struct.nfsdirent* %34, %struct.nfsdirent** %6, align 8
  %35 = icmp ne %struct.nfsdirent* %34, null
  br label %36

36:                                               ; preds = %27, %23
  %37 = phi i1 [ false, %23 ], [ %35, %27 ]
  br i1 %37, label %38, label %78

38:                                               ; preds = %36
  %39 = load %struct.nfsdirent*, %struct.nfsdirent** %6, align 8
  %40 = getelementptr inbounds %struct.nfsdirent, %struct.nfsdirent* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @vlc_uri_encode(i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %46, i32* %7, align 4
  br label %78

47:                                               ; preds = %38
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %9, align 8
  %51 = call i8* @NfsGetUrl(i32* %49, i8* %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %10, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %57, i32* %7, align 4
  br label %78

58:                                               ; preds = %47
  %59 = load %struct.nfsdirent*, %struct.nfsdirent** %6, align 8
  %60 = getelementptr inbounds %struct.nfsdirent, %struct.nfsdirent* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %66 [
    i32 128, label %62
    i32 129, label %64
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @ITEM_TYPE_FILE, align 4
  store i32 %63, i32* %11, align 4
  br label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @ITEM_TYPE_DIRECTORY, align 4
  store i32 %65, i32* %11, align 4
  br label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @ITEM_TYPE_UNKNOWN, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %64, %62
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.nfsdirent*, %struct.nfsdirent** %6, align 8
  %71 = getelementptr inbounds %struct.nfsdirent, %struct.nfsdirent* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @ITEM_NET, align 4
  %75 = call i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper* %8, i8* %69, i32* null, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @free(i8* %76)
  br label %23

78:                                               ; preds = %56, %45, %36
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @VLC_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper* %8, i32 %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper*, %struct.TYPE_5__*, i32*) #1

declare dso_local %struct.nfsdirent* @nfs_readdir(i32, i32) #1

declare dso_local i8* @vlc_uri_encode(i32) #1

declare dso_local i8* @NfsGetUrl(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
