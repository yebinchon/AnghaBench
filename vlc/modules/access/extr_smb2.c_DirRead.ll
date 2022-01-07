; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_DirRead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_DirRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.access_sys* }
%struct.access_sys = type { i32, i32 }
%struct.smb2dirent = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vlc_readdir_helper = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@ITEM_TYPE_FILE = common dso_local global i32 0, align 4
@ITEM_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@ITEM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @DirRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DirRead(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.access_sys*, align 8
  %6 = alloca %struct.smb2dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_readdir_helper, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.access_sys*, %struct.access_sys** %11, align 8
  store %struct.access_sys* %12, %struct.access_sys** %5, align 8
  %13 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %15 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %8, %struct.TYPE_7__* %18, i32* %19)
  br label %21

21:                                               ; preds = %47, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @VLC_SUCCESS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %27 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %30 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.smb2dirent* @smb2_readdir(i32 %28, i32 %31)
  store %struct.smb2dirent* %32, %struct.smb2dirent** %6, align 8
  %33 = icmp ne %struct.smb2dirent* %32, null
  br label %34

34:                                               ; preds = %25, %21
  %35 = phi i1 [ false, %21 ], [ %33, %25 ]
  br i1 %35, label %36, label %54

36:                                               ; preds = %34
  %37 = load %struct.smb2dirent*, %struct.smb2dirent** %6, align 8
  %38 = getelementptr inbounds %struct.smb2dirent, %struct.smb2dirent* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %45 [
    i32 128, label %41
    i32 129, label %43
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* @ITEM_TYPE_FILE, align 4
  store i32 %42, i32* %9, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @ITEM_TYPE_DIRECTORY, align 4
  store i32 %44, i32* %9, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @ITEM_TYPE_UNKNOWN, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %43, %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = load %struct.smb2dirent*, %struct.smb2dirent** %6, align 8
  %50 = getelementptr inbounds %struct.smb2dirent, %struct.smb2dirent* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @AddItem(%struct.TYPE_7__* %48, %struct.vlc_readdir_helper* %8, i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %21

54:                                               ; preds = %34
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @VLC_SUCCESS, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper* %8, i32 %58)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper*, %struct.TYPE_7__*, i32*) #1

declare dso_local %struct.smb2dirent* @smb2_readdir(i32, i32) #1

declare dso_local i32 @AddItem(%struct.TYPE_7__*, %struct.vlc_readdir_helper*, i32, i32) #1

declare dso_local i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
