; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_ftp.c_DirRead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_ftp.c_DirRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__, i32*, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.vlc_readdir_helper = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@ITEM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"type=dir\00", align 1
@ITEM_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"type=file\00", align 1
@ITEM_TYPE_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Empty filename in MLST list\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s://%s:%d%s%s/%s\00", align 1
@NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@IMPLICIT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"ftps\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ftpes\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ITEM_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @DirRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DirRead(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_readdir_helper, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %5, align 8
  %16 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %7, %struct.TYPE_10__* %30, i32* %31)
  br label %33

33:                                               ; preds = %141, %72, %2
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @VLC_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %146

37:                                               ; preds = %33
  %38 = load i32, i32* @ITEM_TYPE_UNKNOWN, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i8* @vlc_tls_GetLine(i32* %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %146

46:                                               ; preds = %37
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = call i64 @strstr(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @ITEM_TYPE_DIRECTORY, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @strstr(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @ITEM_TYPE_FILE, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i8*, i8** %10, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 32)
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %8, align 8
  br label %77

72:                                               ; preds = %64
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = call i32 @msg_Warn(%struct.TYPE_10__* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @free(i8* %75)
  br label %33

77:                                               ; preds = %69
  br label %80

78:                                               ; preds = %46
  %79 = load i8*, i8** %10, align 8
  store i8* %79, i8** %8, align 8
  br label %80

80:                                               ; preds = %78, %77
  %81 = load i8*, i8** %8, align 8
  %82 = call i8* @vlc_uri_encode(i8* %81)
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %141

85:                                               ; preds = %80
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NONE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %100

92:                                               ; preds = %85
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IMPLICIT, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  br label %100

100:                                              ; preds = %92, %91
  %101 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %91 ], [ %99, %92 ]
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %100
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  br label %128

127:                                              ; preds = %100
  br label %128

128:                                              ; preds = %127, %122
  %129 = phi i8* [ %126, %122 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %127 ]
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 @asprintf(i8** %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %101, i32 %105, i32 %109, i8* %116, i8* %129, i8* %130)
  %132 = icmp ne i32 %131, -1
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load i8*, i8** %11, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @ITEM_NET, align 4
  %138 = call i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper* %7, i8* %134, i32* null, i8* %135, i32 %136, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @free(i8* %139)
  br label %141

141:                                              ; preds = %133, %128, %80
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 @free(i8* %144)
  br label %33

146:                                              ; preds = %45, %33
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @VLC_SUCCESS, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper* %7, i32 %150)
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper*, %struct.TYPE_10__*, i32*) #1

declare dso_local i8* @vlc_tls_GetLine(i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @vlc_uri_encode(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper*, i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
