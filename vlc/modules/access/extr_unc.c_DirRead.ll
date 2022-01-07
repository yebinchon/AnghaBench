; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_unc.c_DirRead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_unc.c_DirRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.vlc_readdir_helper = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@STYPE_SPECIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"file:%s\00", align 1
@ITEM_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@ITEM_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @DirRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DirRead(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_readdir_helper, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %6, align 8
  %23 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %8, %struct.TYPE_10__* %24, i32* %25)
  store i64 0, i64* %12, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ToWide(i32 %30)
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %35, i32* %3, align 4
  br label %139

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %128, %36
  %38 = load i8*, i8** %14, align 8
  %39 = bitcast %struct.TYPE_12__** %9 to i32*
  %40 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %41 = call i64 @NetShareEnum(i8* %38, i32 1, i32* %39, i32 %40, i64* %11, i64* %13, i64* %12)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @ERROR_MORE_DATA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %117

49:                                               ; preds = %45, %37
  store i64 0, i64* %15, align 8
  br label %50

50:                                               ; preds = %113, %49
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %116

54:                                               ; preds = %50
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %56
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %16, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @STYPE_SPECIAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %113

65:                                               ; preds = %54
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @FromWide(i32 %68)
  store i8* %69, i8** %17, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %73, i32* %7, align 4
  br label %116

74:                                               ; preds = %65
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %17, align 8
  %85 = call i64 @smb_get_uri(%struct.TYPE_10__* %75, i8** %18, i32* null, i32* null, i32 %79, i32 %83, i8* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = load i8*, i8** %17, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %90, i32* %7, align 4
  br label %116

91:                                               ; preds = %74
  %92 = load i8*, i8** %18, align 8
  %93 = call i64 @asprintf(i8** %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i8*, i8** %17, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** %18, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %100, i32* %7, align 4
  br label %116

101:                                              ; preds = %91
  %102 = load i8*, i8** %18, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i8*, i8** %19, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = load i32, i32* @ITEM_TYPE_DIRECTORY, align 4
  %107 = load i32, i32* @ITEM_NET, align 4
  %108 = call i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper* %8, i8* %104, i32* null, i8* %105, i32 %106, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i8*, i8** %17, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i8*, i8** %19, align 8
  %112 = call i32 @free(i8* %111)
  br label %113

113:                                              ; preds = %101, %64
  %114 = load i64, i64* %15, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %15, align 8
  br label %50

116:                                              ; preds = %95, %87, %72, %50
  br label %117

117:                                              ; preds = %116, %45
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %119 = call i32 @NetApiBufferFree(%struct.TYPE_12__* %118)
  br label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @ERROR_MORE_DATA, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @VLC_SUCCESS, align 4
  %127 = icmp eq i32 %125, %126
  br label %128

128:                                              ; preds = %124, %120
  %129 = phi i1 [ false, %120 ], [ %127, %124 ]
  br i1 %129, label %37, label %130

130:                                              ; preds = %128
  %131 = load i8*, i8** %14, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @VLC_SUCCESS, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper* %8, i32 %136)
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %130, %34
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper*, %struct.TYPE_10__*, i32*) #1

declare dso_local i8* @ToWide(i32) #1

declare dso_local i64 @NetShareEnum(i8*, i32, i32*, i32, i64*, i64*, i64*) #1

declare dso_local i8* @FromWide(i32) #1

declare dso_local i64 @smb_get_uri(%struct.TYPE_10__*, i8**, i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper*, i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
