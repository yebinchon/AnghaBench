; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_samba.c_DirRead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_samba.c_DirRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.vlc_readdir_helper = type { i32 }
%struct.smbc_dirent = type { i8*, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@ITEM_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@ITEM_TYPE_FILE = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@ITEM_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @DirRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DirRead(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_readdir_helper, align 4
  %8 = alloca %struct.smbc_dirent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %7, %struct.TYPE_7__* %19, i32* %20)
  br label %22

22:                                               ; preds = %80, %59, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @VLC_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.smbc_dirent* @smbc_readdir(i32 %29)
  store %struct.smbc_dirent* %30, %struct.smbc_dirent** %8, align 8
  %31 = icmp ne %struct.smbc_dirent* %30, null
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i1 [ false, %22 ], [ %31, %26 ]
  br i1 %33, label %34, label %92

34:                                               ; preds = %32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %10, align 8
  %43 = load %struct.smbc_dirent*, %struct.smbc_dirent** %8, align 8
  %44 = getelementptr inbounds %struct.smbc_dirent, %struct.smbc_dirent* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  %46 = load %struct.smbc_dirent*, %struct.smbc_dirent** %8, align 8
  %47 = getelementptr inbounds %struct.smbc_dirent, %struct.smbc_dirent* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %58 [
    i32 129, label %49
    i32 128, label %49
    i32 133, label %54
    i32 135, label %54
    i32 134, label %56
    i32 130, label %59
    i32 136, label %59
    i32 132, label %59
    i32 131, label %59
  ]

49:                                               ; preds = %34, %34
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %54

54:                                               ; preds = %34, %34, %49
  %55 = load i32, i32* @ITEM_TYPE_DIRECTORY, align 4
  store i32 %55, i32* %12, align 4
  br label %60

56:                                               ; preds = %34
  %57 = load i32, i32* @ITEM_TYPE_FILE, align 4
  store i32 %57, i32* %12, align 4
  br label %60

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %34, %34, %34, %34, %58
  br label %22

60:                                               ; preds = %56, %54
  store i8* null, i8** %13, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i8*, i8** %11, align 8
  %65 = call i8* @vlc_uri_encode(i8* %64)
  store i8* %65, i8** %13, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %68, i32* %6, align 4
  br label %92

69:                                               ; preds = %63, %60
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i8* @smb_get_uri(i32* null, i32* null, i32* null, i8* %70, i8* %71, i8* %72)
  store i8* %73, i8** %14, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %79, i32* %6, align 4
  br label %92

80:                                               ; preds = %69
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8*, i8** %14, align 8
  %84 = load %struct.smbc_dirent*, %struct.smbc_dirent** %8, align 8
  %85 = getelementptr inbounds %struct.smbc_dirent, %struct.smbc_dirent* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @ITEM_NET, align 4
  %89 = call i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper* %7, i8* %83, i32* null, i8* %86, i32 %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 @free(i8* %90)
  br label %22

92:                                               ; preds = %76, %67, %32
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @VLC_SUCCESS, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper* %7, i32 %96)
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper*, %struct.TYPE_7__*, i32*) #1

declare dso_local %struct.smbc_dirent* @smbc_readdir(i32) #1

declare dso_local i8* @vlc_uri_encode(i8*) #1

declare dso_local i8* @smb_get_uri(i32*, i32*, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper*, i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
