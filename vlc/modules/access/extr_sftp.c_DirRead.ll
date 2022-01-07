; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_sftp.c_DirRead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_sftp.c_DirRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.vlc_readdir_helper = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@LIBSSH2_ERROR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"skipped too long file name\00", align 1
@LIBSSH2_ERROR_EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"directory read failed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ITEM_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@ITEM_TYPE_FILE = common dso_local global i32 0, align 4
@ITEM_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @DirRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DirRead(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.vlc_readdir_helper, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %6, align 8
  %19 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %19, i32* %8, align 4
  store i64 1024, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %25, i32* %3, align 4
  br label %109

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %12, %struct.TYPE_9__* %27, i32* %28)
  br label %30

30:                                               ; preds = %91, %58, %51, %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @VLC_SUCCESS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @libssh2_sftp_readdir(i32 %37, i8* %38, i64 %39, %struct.TYPE_11__* %7)
  store i32 %40, i32* %9, align 4
  %41 = icmp ne i32 0, %40
  br label %42

42:                                               ; preds = %34, %30
  %43 = phi i1 [ false, %30 ], [ %41, %34 ]
  br i1 %43, label %44, label %100

44:                                               ; preds = %42
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @LIBSSH2_ERROR_BUFFER_TOO_SMALL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = call i32 @msg_Dbg(%struct.TYPE_9__* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %30

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @LIBSSH2_ERROR_EAGAIN, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %30

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = call i32 @msg_Err(%struct.TYPE_9__* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %100

62:                                               ; preds = %44
  %63 = load i8*, i8** %11, align 8
  %64 = call i8* @vlc_uri_encode(i8* %63)
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %68, i32* %8, align 4
  br label %100

69:                                               ; preds = %62
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %72, i8* %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %79, i32* %8, align 4
  br label %100

80:                                               ; preds = %69
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 @free(i8* %81)
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @LIBSSH2_SFTP_S_ISDIR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @ITEM_TYPE_DIRECTORY, align 4
  br label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @ITEM_TYPE_FILE, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %15, align 4
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @ITEM_NET, align 4
  %97 = call i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper* %12, i8* %93, i32* null, i8* %94, i32 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @free(i8* %98)
  br label %30

100:                                              ; preds = %76, %67, %59, %42
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @VLC_SUCCESS, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper* %12, i32 %104)
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %100, %24
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @libssh2_sftp_readdir(i32, i8*, i64, %struct.TYPE_11__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*) #1

declare dso_local i8* @vlc_uri_encode(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @LIBSSH2_SFTP_S_ISDIR(i32) #1

declare dso_local i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper*, i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
