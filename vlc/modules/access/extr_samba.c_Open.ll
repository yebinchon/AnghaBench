; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_samba.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_samba.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_17__ = type { i8*, i32, i32 }
%struct.stat = type { i64, i32 }

@smb_auth = common dso_local global i32 0, align 4
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
@.str.3 = private unnamed_addr constant [19 x i8] c"cannot open %s: %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %4, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %9, align 8
  %17 = load i32, i32* @smb_auth, align 4
  %18 = call i64 @smbc_init(i32 %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %2, align 4
  br label %183

22:                                               ; preds = %1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @vlc_UrlParseFixup(%struct.TYPE_16__* %5, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = call i32 @vlc_UrlClean(%struct.TYPE_16__* %5)
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %2, align 4
  br label %183

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i8* @vlc_uri_decode_duplicate(i32* %37)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 @vlc_UrlClean(%struct.TYPE_16__* %5)
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %43, i32* %2, align 4
  br label %183

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %31
  %46 = call i32 @vlc_credential_init(%struct.TYPE_17__* %6, %struct.TYPE_16__* %5)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = call i8* @var_InheritString(%struct.TYPE_18__* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = call i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i8*, i8*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_17__* %6, %struct.TYPE_18__* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  br label %53

53:                                               ; preds = %100, %45
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @smb_get_uri(i8* %55, i32 %57, i32 %59, i32 %61, i8* %62, i32* null)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %53
  %67 = call i32 @vlc_credential_clean(%struct.TYPE_17__* %6)
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @free(i8* %70)
  %72 = call i32 @vlc_UrlClean(%struct.TYPE_16__* %5)
  %73 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %73, i32* %2, align 4
  br label %183

74:                                               ; preds = %53
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @smbc_stat(i8* %75, %struct.stat* %13)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @S_ISDIR(i32 %80)
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %11, align 8
  br label %101

86:                                               ; preds = %74
  store i32 1, i32* %12, align 4
  store i64 0, i64* %11, align 8
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @EACCES, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %101

91:                                               ; preds = %86
  store i64 0, i64* @errno, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = load i32, i32* @SMB_LOGIN_DIALOG_TITLE, align 4
  %94 = load i32, i32* @SMB_LOGIN_DIALOG_TEXT, align 4
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i8*, i8*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_17__* %6, %struct.TYPE_18__* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %101

100:                                              ; preds = %91
  br label %53

101:                                              ; preds = %99, %90, %78
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %103 = call i32 @vlc_credential_store(%struct.TYPE_17__* %6, %struct.TYPE_18__* %102)
  %104 = call i32 @vlc_credential_clean(%struct.TYPE_17__* %6)
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i32*, i32** %3, align 8
  %110 = call %struct.TYPE_19__* @vlc_obj_calloc(i32* %109, i32 1, i32 32)
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %14, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %112 = icmp eq %struct.TYPE_19__* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %101
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @free(i8* %117)
  %119 = call i32 @vlc_UrlClean(%struct.TYPE_16__* %5)
  %120 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %120, i32* %2, align 4
  br label %183

121:                                              ; preds = %101
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 5
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %124, align 8
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %121
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  %130 = bitcast %struct.TYPE_16__* %129 to i8*
  %131 = bitcast %struct.TYPE_16__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 16, i1 false)
  %132 = load i32, i32* @DirRead, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @smbc_opendir(i8* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %127
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 2
  %145 = call i32 @vlc_UrlClean(%struct.TYPE_16__* %144)
  br label %146

146:                                              ; preds = %142, %127
  br label %161

147:                                              ; preds = %121
  %148 = load i32, i32* @Read, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @Control, align 4
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* @Seek, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load i8*, i8** %8, align 8
  %158 = load i32, i32* @O_RDONLY, align 4
  %159 = call i32 @smbc_open(i8* %157, i32 %158, i32 0)
  store i32 %159, i32* %10, align 4
  %160 = call i32 @vlc_UrlClean(%struct.TYPE_16__* %5)
  br label %161

161:                                              ; preds = %147, %146
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @free(i8* %162)
  %164 = load i32, i32* %10, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load i32*, i32** %3, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* @errno, align 8
  %172 = call i32 @vlc_strerror_c(i64 %171)
  %173 = call i32 @msg_Err(i32* %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %170, i32 %172)
  %174 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %174, i32* %2, align 4
  br label %183

175:                                              ; preds = %161
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %175, %166, %116, %66, %41, %28, %20
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i64 @smbc_init(i32, i32) #1

declare dso_local i64 @vlc_UrlParseFixup(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_16__*) #1

declare dso_local i8* @vlc_uri_decode_duplicate(i32*) #1

declare dso_local i32 @vlc_credential_init(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @vlc_credential_get(%struct.TYPE_17__*, %struct.TYPE_18__*, i8*, i8*, i32, i32, ...) #1

declare dso_local i8* @smb_get_uri(i8*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @vlc_credential_clean(%struct.TYPE_17__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @smbc_stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @vlc_credential_store(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @vlc_obj_calloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @smbc_opendir(i8*) #1

declare dso_local i32 @smbc_open(i8*, i32, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
