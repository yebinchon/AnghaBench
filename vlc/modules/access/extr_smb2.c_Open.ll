; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8*, i32*, i32, i32, i32, %struct.access_sys* }
%struct.access_sys = type { i32, %struct.TYPE_22__, i32*, i32*, i32*, i32* }
%struct.TYPE_22__ = type { i8*, i8*, i32 }
%struct.smb2_url = type { i32, i32 }
%struct.TYPE_23__ = type { i8*, i64 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"smb2_init_context failed\00", align 1
@SMB2_NEGOTIATE_SIGNING_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"smb2_parse_url failed\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"smb-domain\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"smb-user\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"smb-pwd\00", align 1
@SMB_LOGIN_DIALOG_TITLE = common dso_local global i32 0, align 4
@SMB_LOGIN_DIALOG_TEXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"SMB2 operation failed\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GET_FROM_DIALOG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"smb-dialog-failed\00", align 1
@VLC_VAR_VOID = common dso_local global i32 0, align 4
@FileRead = common dso_local global i32 0, align 4
@FileSeek = common dso_local global i32* null, align 8
@FileControl = common dso_local global i8* null, align 8
@DirRead = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i8* null, align 8
@ShareEnum = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VLC_ETIMEOUT = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.access_sys*, align 8
  %6 = alloca %struct.smb2_url*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.access_sys* @vlc_obj_calloc(i32* %16, i32 1, i32 64)
  store %struct.access_sys* %17, %struct.access_sys** %5, align 8
  store %struct.smb2_url* null, %struct.smb2_url** %6, align 8
  store i8* null, i8** %7, align 8
  %18 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %19 = icmp eq %struct.access_sys* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %24, i32* %2, align 4
  br label %294

25:                                               ; preds = %1
  %26 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 5
  store %struct.access_sys* %26, %struct.access_sys** %28, align 8
  %29 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %30 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %29, i32 0, i32 1
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @vlc_UrlParseFixup(%struct.TYPE_22__* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %37, i32* %2, align 4
  br label %294

38:                                               ; preds = %25
  %39 = call i32* (...) @smb2_init_context()
  %40 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %41 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %43 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = call i32 @msg_Err(%struct.TYPE_24__* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %255

49:                                               ; preds = %38
  %50 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %51 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @SMB2_NEGOTIATE_SIGNING_ENABLED, align 4
  %54 = call i32 @smb2_set_security_mode(i32* %52, i32 %53)
  %55 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %56 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %62 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %49
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %66 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %67 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %71 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @vlc_smb2_resolve(%struct.TYPE_24__* %65, i8* %69, i32 %73)
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %64
  %78 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %79 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %78, i32 0, i32 1
  %80 = bitcast %struct.TYPE_22__* %10 to i8*
  %81 = bitcast %struct.TYPE_22__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 24, i1 false)
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  store i8* %82, i8** %83, align 8
  %84 = call i8* @vlc_uri_compose(%struct.TYPE_22__* %10)
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @free(i8* %85)
  br label %91

87:                                               ; preds = %64
  %88 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %89 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %88, i32 0, i32 1
  %90 = call i8* @vlc_uri_compose(%struct.TYPE_22__* %89)
  store i8* %90, i8** %9, align 8
  br label %91

91:                                               ; preds = %87, %77
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @vlc_uri_decode(i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @free(i8* %96)
  br label %255

98:                                               ; preds = %91
  %99 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %100 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call %struct.smb2_url* @smb2_parse_url(i32* %101, i8* %102)
  store %struct.smb2_url* %103, %struct.smb2_url** %6, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %107 = icmp ne %struct.smb2_url* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %98
  %109 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %110 = getelementptr inbounds %struct.smb2_url, %struct.smb2_url* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %115 = getelementptr inbounds %struct.smb2_url, %struct.smb2_url* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113, %108, %98
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %120 = call i32 @msg_Err(%struct.TYPE_24__* %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %255

121:                                              ; preds = %113
  store i32 -1, i32* %11, align 4
  %122 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %123 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %122, i32 0, i32 1
  %124 = call i32 @vlc_credential_init(%struct.TYPE_23__* %12, %struct.TYPE_22__* %123)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %126 = call i8* @var_InheritString(%struct.TYPE_24__* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %126, i8** %7, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  store i8* %127, i8** %128, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %130 = call i64 (%struct.TYPE_23__*, %struct.TYPE_24__*, i8*, i8*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_23__* %12, %struct.TYPE_24__* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %132 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %133 = call i32 @vlc_smb2_open_share(%struct.TYPE_24__* %131, %struct.smb2_url* %132, %struct.TYPE_23__* %12)
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %159, %121
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %157

137:                                              ; preds = %134
  %138 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %139 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %144 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @VLC_SMB2_STATUS_DENIED(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %142, %137
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %150 = load i32, i32* @SMB_LOGIN_DIALOG_TITLE, align 4
  %151 = load i32, i32* @SMB_LOGIN_DIALOG_TEXT, align 4
  %152 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %153 = getelementptr inbounds %struct.smb2_url, %struct.smb2_url* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 (%struct.TYPE_23__*, %struct.TYPE_24__*, i8*, i8*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_23__* %12, %struct.TYPE_24__* %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %151, i32 %154)
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %148, %142, %134
  %158 = phi i1 [ false, %142 ], [ false, %134 ], [ %156, %148 ]
  br i1 %158, label %159, label %165

159:                                              ; preds = %157
  %160 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %161 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %163 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %164 = call i32 @vlc_smb2_open_share(%struct.TYPE_24__* %162, %struct.smb2_url* %163, %struct.TYPE_23__* %12)
  store i32 %164, i32* %11, align 4
  br label %134

165:                                              ; preds = %157
  %166 = load i32, i32* %11, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %170 = call i32 @vlc_credential_store(%struct.TYPE_23__* %12, %struct.TYPE_24__* %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = call i32 @vlc_credential_clean(%struct.TYPE_23__* %12)
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %202

175:                                              ; preds = %171
  %176 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %177 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = call i8* @smb2_get_error(i32* %178)
  store i8* %179, i8** %13, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %192

182:                                              ; preds = %175
  %183 = load i8*, i8** %13, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %189 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %190 = load i8*, i8** %13, align 8
  %191 = call i32 @vlc_dialog_display_error(%struct.TYPE_24__* %188, i32 %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %187, %182, %175
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @GET_FROM_DIALOG, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %199 = load i32, i32* @VLC_VAR_VOID, align 4
  %200 = call i32 @var_Create(%struct.TYPE_24__* %198, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %197, %192
  br label %255

202:                                              ; preds = %171
  %203 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %204 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = load i32, i32* @FileRead, align 4
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load i32*, i32** @FileSeek, align 8
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 1
  store i32* %211, i32** %213, align 8
  %214 = load i8*, i8** @FileControl, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  store i8* %214, i8** %216, align 8
  br label %249

217:                                              ; preds = %202
  %218 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %219 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %231

222:                                              ; preds = %217
  %223 = load i32, i32* @DirRead, align 4
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 1
  store i32* null, i32** %227, align 8
  %228 = load i8*, i8** @access_vaDirectoryControlHelper, align 8
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  br label %248

231:                                              ; preds = %217
  %232 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %233 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %245

236:                                              ; preds = %231
  %237 = load i32, i32* @ShareEnum, align 4
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 1
  store i32* null, i32** %241, align 8
  %242 = load i8*, i8** @access_vaDirectoryControlHelper, align 8
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  store i8* %242, i8** %244, align 8
  br label %247

245:                                              ; preds = %231
  %246 = call i32 (...) @vlc_assert_unreachable()
  br label %247

247:                                              ; preds = %245, %236
  br label %248

248:                                              ; preds = %247, %222
  br label %249

249:                                              ; preds = %248, %207
  %250 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %251 = call i32 @smb2_destroy_url(%struct.smb2_url* %250)
  %252 = load i8*, i8** %7, align 8
  %253 = call i32 @free(i8* %252)
  %254 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %254, i32* %2, align 4
  br label %294

255:                                              ; preds = %201, %118, %95, %46
  %256 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %257 = icmp ne %struct.smb2_url* %256, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load %struct.smb2_url*, %struct.smb2_url** %6, align 8
  %260 = call i32 @smb2_destroy_url(%struct.smb2_url* %259)
  br label %261

261:                                              ; preds = %258, %255
  %262 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %263 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %268 = call i32 @vlc_smb2_disconnect_share(%struct.TYPE_24__* %267)
  %269 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %270 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @smb2_destroy_context(i32* %271)
  br label %273

273:                                              ; preds = %266, %261
  %274 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %275 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %274, i32 0, i32 1
  %276 = call i32 @vlc_UrlClean(%struct.TYPE_22__* %275)
  %277 = load i8*, i8** %7, align 8
  %278 = call i32 @free(i8* %277)
  %279 = call i64 (...) @vlc_killed()
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %288, label %281

281:                                              ; preds = %273
  %282 = load %struct.access_sys*, %struct.access_sys** %5, align 8
  %283 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @EIO, align 4
  %286 = sub nsw i32 0, %285
  %287 = icmp eq i32 %284, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %281, %273
  %289 = load i32, i32* @VLC_ETIMEOUT, align 4
  br label %292

290:                                              ; preds = %281
  %291 = load i32, i32* @VLC_EGENERIC, align 4
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i32 [ %289, %288 ], [ %291, %290 ]
  store i32 %293, i32* %2, align 4
  br label %294

294:                                              ; preds = %292, %249, %36, %23
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local %struct.access_sys* @vlc_obj_calloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlc_UrlParseFixup(%struct.TYPE_22__*, i32) #1

declare dso_local i32* @smb2_init_context(...) #1

declare dso_local i32 @msg_Err(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @smb2_set_security_mode(i32*, i32) #1

declare dso_local i8* @vlc_smb2_resolve(%struct.TYPE_24__*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @vlc_uri_compose(%struct.TYPE_22__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_uri_decode(i8*) #1

declare dso_local %struct.smb2_url* @smb2_parse_url(i32*, i8*) #1

declare dso_local i32 @vlc_credential_init(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_24__*, i8*) #1

declare dso_local i64 @vlc_credential_get(%struct.TYPE_23__*, %struct.TYPE_24__*, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @vlc_smb2_open_share(%struct.TYPE_24__*, %struct.smb2_url*, %struct.TYPE_23__*) #1

declare dso_local i64 @VLC_SMB2_STATUS_DENIED(i32) #1

declare dso_local i32 @vlc_credential_store(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @vlc_credential_clean(%struct.TYPE_23__*) #1

declare dso_local i8* @smb2_get_error(i32*) #1

declare dso_local i32 @vlc_dialog_display_error(%struct.TYPE_24__*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @var_Create(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @smb2_destroy_url(%struct.smb2_url*) #1

declare dso_local i32 @vlc_smb2_disconnect_share(%struct.TYPE_24__*) #1

declare dso_local i32 @smb2_destroy_context(i32*) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_22__*) #1

declare dso_local i64 @vlc_killed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
