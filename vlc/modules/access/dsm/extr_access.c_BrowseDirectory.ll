; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_BrowseDirectory.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_BrowseDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.vlc_readdir_helper = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s\\*\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\\*\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@SMB_STAT_ISDIR = common dso_local global i32 0, align 4
@ITEM_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@ITEM_TYPE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @BrowseDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BrowseDirectory(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vlc_readdir_helper, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %6, align 8
  %19 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %31, i32* %3, align 4
  br label %108

32:                                               ; preds = %24
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32* @smb_find(i32 %35, i32 %38, i8* %39)
  store i32* %40, i32** %7, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @free(i8* %41)
  br label %51

43:                                               ; preds = %2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32* @smb_find(i32 %46, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %50, i32** %7, align 8
  br label %51

51:                                               ; preds = %43, %32
  %52 = load i32*, i32** %7, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %55, i32* %3, align 4
  br label %108

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %13, %struct.TYPE_6__* %57, i32* %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @smb_stat_list_count(i32* %60)
  store i64 %61, i64* %11, align 8
  store i64 0, i64* %14, align 8
  br label %62

62:                                               ; preds = %96, %56
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @VLC_SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i1 [ false, %62 ], [ %69, %66 ]
  br i1 %71, label %72, label %99

72:                                               ; preds = %70
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* %14, align 8
  %75 = call i32* @smb_stat_list_at(i32* %73, i64 %74)
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %96

79:                                               ; preds = %72
  %80 = load i32*, i32** %8, align 8
  %81 = call i8* @smb_stat_name(i32* %80)
  store i8* %81, i8** %10, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* @SMB_STAT_ISDIR, align 4
  %84 = call i64 @smb_stat_get(i32* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @ITEM_TYPE_DIRECTORY, align 4
  br label %90

88:                                               ; preds = %79
  %89 = load i32, i32* @ITEM_TYPE_FILE, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %15, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @add_item(%struct.TYPE_6__* %92, %struct.vlc_readdir_helper* %13, i8* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %90, %78
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %14, align 8
  br label %62

99:                                               ; preds = %70
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @VLC_SUCCESS, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper* %13, i32 %103)
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @smb_stat_list_destroy(i32* %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %99, %54, %30
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @asprintf(i8**, i8*, i32*) #1

declare dso_local i32* @smb_find(i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @smb_stat_list_count(i32*) #1

declare dso_local i32* @smb_stat_list_at(i32*, i64) #1

declare dso_local i8* @smb_stat_name(i32*) #1

declare dso_local i64 @smb_stat_get(i32*, i32) #1

declare dso_local i32 @add_item(%struct.TYPE_6__*, %struct.vlc_readdir_helper*, i8*, i32) #1

declare dso_local i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper*, i32) #1

declare dso_local i32 @smb_stat_list_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
