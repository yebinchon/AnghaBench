; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_BrowseShare.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_BrowseShare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vlc_readdir_helper = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@DSM_SUCCESS = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@ITEM_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @BrowseShare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BrowseShare(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vlc_readdir_helper, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  %16 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @smb_share_get_list(i32 %19, i32* %7, i64* %9)
  %21 = load i64, i64* @DSM_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %11, %struct.TYPE_6__* %26, i32* %27)
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %58, %25
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @VLC_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %61

39:                                               ; preds = %37
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %12, align 8
  %42 = call i8* @smb_share_list_at(i32 %40, i64 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 36
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %58

53:                                               ; preds = %39
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* @ITEM_TYPE_DIRECTORY, align 4
  %57 = call i32 @add_item(%struct.TYPE_6__* %54, %struct.vlc_readdir_helper* %11, i8* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %53, %52
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %12, align 8
  br label %29

61:                                               ; preds = %37
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @VLC_SUCCESS, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper* %11, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @smb_share_list_destroy(i32 %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %61, %23
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @smb_share_get_list(i32, i32*, i64*) #1

declare dso_local i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper*, %struct.TYPE_6__*, i32*) #1

declare dso_local i8* @smb_share_list_at(i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @add_item(%struct.TYPE_6__*, %struct.vlc_readdir_helper*, i8*, i32) #1

declare dso_local i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper*, i32) #1

declare dso_local i32 @smb_share_list_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
