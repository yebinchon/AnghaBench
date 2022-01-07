; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_unc.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_unc.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_18__ = type { i8*, i32, i32 }
%struct.stat = type { i64, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"smb-domain\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"smb-user\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"smb-pwd\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@SMB_LOGIN_DIALOG_TITLE = common dso_local global i32 0, align 4
@SMB_LOGIN_DIALOG_TEXT = common dso_local global i32 0, align 4
@DirRead = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i32 0, align 4
@Read = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@Seek = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %4, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @vlc_UrlParseFixup(%struct.TYPE_17__* %5, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = call i32 @vlc_UrlClean(%struct.TYPE_17__* %5)
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %2, align 4
  br label %154

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i8* @vlc_uri_decode_duplicate(i32* %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = call i32 @vlc_UrlClean(%struct.TYPE_17__* %5)
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %2, align 4
  br label %154

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %25
  %40 = call i32 @vlc_credential_init(%struct.TYPE_18__* %6, %struct.TYPE_17__* %5)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = call i8* @var_InheritString(%struct.TYPE_19__* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = call i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, i8*, i8*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_18__* %6, %struct.TYPE_19__* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  br label %47

47:                                               ; preds = %92, %39
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @smb_get_uri(%struct.TYPE_19__* %48, i8** %8, i32 %50, i32 %52, i32 %54, i8* %55, i32* null)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = call i32 @vlc_credential_clean(%struct.TYPE_18__* %6)
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @free(i8* %62)
  %64 = call i32 @vlc_UrlClean(%struct.TYPE_17__* %5)
  %65 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %65, i32* %2, align 4
  br label %154

66:                                               ; preds = %47
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @stat(i8* %67, %struct.stat* %13)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @S_ISDIR(i32 %72)
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %11, align 8
  br label %93

78:                                               ; preds = %66
  store i32 1, i32* %12, align 4
  store i64 0, i64* %11, align 8
  %79 = load i64, i64* @errno, align 8
  %80 = load i64, i64* @EACCES, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %93

83:                                               ; preds = %78
  store i64 0, i64* @errno, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = load i32, i32* @SMB_LOGIN_DIALOG_TITLE, align 4
  %86 = load i32, i32* @SMB_LOGIN_DIALOG_TEXT, align 4
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, i8*, i8*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_18__* %6, %struct.TYPE_19__* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  br label %93

92:                                               ; preds = %83
  br label %47

93:                                               ; preds = %91, %82, %70
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = call i32 @vlc_credential_store(%struct.TYPE_18__* %6, %struct.TYPE_19__* %94)
  %96 = call i32 @vlc_credential_clean(%struct.TYPE_18__* %6)
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call %struct.TYPE_20__* @vlc_obj_calloc(i32* %101, i32 1, i32 32)
  store %struct.TYPE_20__* %102, %struct.TYPE_20__** %14, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %104 = icmp eq %struct.TYPE_20__* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %93
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @free(i8* %109)
  %111 = call i32 @vlc_UrlClean(%struct.TYPE_17__* %5)
  %112 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %112, i32* %2, align 4
  br label %154

113:                                              ; preds = %93
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 4
  store %struct.TYPE_20__* %114, %struct.TYPE_20__** %116, align 8
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = bitcast %struct.TYPE_17__* %121 to i8*
  %123 = bitcast %struct.TYPE_17__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 16, i1 false)
  %124 = load i32, i32* @DirRead, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  store i32 -1, i32* %10, align 4
  br label %144

130:                                              ; preds = %113
  %131 = load i32, i32* @Read, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @Control, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @Seek, align 4
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = load i32, i32* @O_RDONLY, align 4
  %142 = call i32 @open(i8* %140, i32 %141, i32 0)
  store i32 %142, i32* %10, align 4
  %143 = call i32 @vlc_UrlClean(%struct.TYPE_17__* %5)
  br label %144

144:                                              ; preds = %130, %119
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 @free(i8* %145)
  %147 = load i64, i64* %11, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %144, %108, %58, %35, %22
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i64 @vlc_UrlParseFixup(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_17__*) #1

declare dso_local i8* @vlc_uri_decode_duplicate(i32*) #1

declare dso_local i32 @vlc_credential_init(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @vlc_credential_get(%struct.TYPE_18__*, %struct.TYPE_19__*, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @smb_get_uri(%struct.TYPE_19__*, i8**, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @vlc_credential_clean(%struct.TYPE_18__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @vlc_credential_store(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @vlc_obj_calloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @open(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
