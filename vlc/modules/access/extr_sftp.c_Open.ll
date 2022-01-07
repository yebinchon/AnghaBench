; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_sftp.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_sftp.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i8*, i8*, i32, i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i8*, i32* }
%struct.TYPE_25__ = type { i32, i32, i32* }
%struct.libssh2_knownhost = type { i32 }
%struct.TYPE_29__ = type { i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to extract host from %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sftp-port\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_HOME_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s/.ssh/known_hosts\00", align 1
@LIBSSH2_KNOWNHOST_FILE_OPENSSH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failure reading known_hosts '%s'\00", align 1
@LIBSSH2_KNOWNHOST_KEY_SSHRSA = common dso_local global i32 0, align 4
@LIBSSH2_KNOWNHOST_KEY_SSHDSS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Host uses unrecognized session-key algorithm\00", align 1
@LIBSSH2_KNOWNHOST_TYPE_PLAIN = common dso_local global i32 0, align 4
@LIBSSH2_KNOWNHOST_KEYENC_RAW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Unable to check the remote host\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Succesfuly matched the host\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"The host does not match !! The remote key changed !!\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sftp-user\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"sftp-pwd\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"The username changed, starting a new ssh session\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"publickey\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"sftp auth failed for %s\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"SFTP authentication\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"Please enter a valid login and password for the sftp connexion to %s\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Unable to initialize the SFTP session\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c".\00", align 1
@LIBSSH2_SFTP_REALPATH = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [37 x i8] c"Impossible to get the Home directory\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"sftp\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"sftp://%s%s\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"Impossible to get information about the remote path %s\00", align 1
@LIBSSH2_FXF_READ = common dso_local global i32 0, align 4
@Read = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@Seek = common dso_local global i32 0, align 4
@DirRead = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"sftp://%s\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Unable to open the remote path %s\00", align 1
@LIBSSH2_KNOWNHOST_KEY_ECDSA_256 = common dso_local global i32 0, align 4
@LIBSSH2_KNOWNHOST_KEY_ECDSA_384 = common dso_local global i32 0, align 4
@LIBSSH2_KNOWNHOST_KEY_ECDSA_521 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_26__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.libssh2_knownhost*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_29__, align 4
  %28 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %4, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %14, align 4
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %2, align 4
  br label %474

38:                                               ; preds = %1
  %39 = load i32*, i32** %3, align 8
  %40 = call %struct.TYPE_28__* @vlc_obj_calloc(i32* %39, i32 1, i32 32)
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 4
  store %struct.TYPE_28__* %40, %struct.TYPE_28__** %42, align 8
  store %struct.TYPE_28__* %40, %struct.TYPE_28__** %5, align 8
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = icmp ne %struct.TYPE_28__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %46, i32* %2, align 4
  br label %474

47:                                               ; preds = %38
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @vlc_UrlParseFixup(%struct.TYPE_25__* %11, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = call i32 @vlc_UrlClean(%struct.TYPE_25__* %11)
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %2, align 4
  br label %474

58:                                               ; preds = %47
  %59 = call i32 @vlc_credential_init(%struct.TYPE_26__* %6, %struct.TYPE_25__* %11)
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i8* @vlc_uri_decode_duplicate(i32* %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %457

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %58
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @EMPTY_STR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %80)
  br label %457

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %88 = call i32 @var_InheritInteger(%struct.TYPE_27__* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %88, i32* %10, align 4
  br label %92

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @SSHSessionInit(%struct.TYPE_27__* %93, i32 %95, i32 %96)
  %98 = load i32, i32* @VLC_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %457

101:                                              ; preds = %92
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32* @libssh2_knownhost_init(i32 %104)
  store i32* %105, i32** %15, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %457

109:                                              ; preds = %101
  %110 = load i32, i32* @VLC_HOME_DIR, align 4
  %111 = call i8* @config_GetUserDir(i32 %110)
  store i8* %111, i8** %9, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %112)
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  %116 = load i32*, i32** %15, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i32, i32* @LIBSSH2_KNOWNHOST_FILE_OPENSSH, align 4
  %119 = call i64 @libssh2_knownhost_readfile(i32* %116, i8* %117, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %121, %115
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %125, %109
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @libssh2_session_hostkey(i32 %131, i64* %12, i32* %13)
  store i8* %132, i8** %17, align 8
  %133 = load i32, i32* %13, align 4
  switch i32 %133, label %138 [
    i32 132, label %134
    i32 136, label %136
  ]

134:                                              ; preds = %128
  %135 = load i32, i32* @LIBSSH2_KNOWNHOST_KEY_SSHRSA, align 4
  store i32 %135, i32* %19, align 4
  br label %143

136:                                              ; preds = %128
  %137 = load i32, i32* @LIBSSH2_KNOWNHOST_KEY_SSHDSS, align 4
  store i32 %137, i32* %19, align 4
  br label %143

138:                                              ; preds = %128
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %140 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %139, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32*, i32** %15, align 8
  %142 = call i32 @libssh2_knownhost_free(i32* %141)
  br label %457

143:                                              ; preds = %136, %134
  %144 = load i32*, i32** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %17, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load i32, i32* @LIBSSH2_KNOWNHOST_TYPE_PLAIN, align 4
  %150 = load i32, i32* @LIBSSH2_KNOWNHOST_KEYENC_RAW, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %19, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @libssh2_knownhost_check(i32* %144, i32 %146, i8* %147, i64 %148, i32 %153, %struct.libssh2_knownhost** %18)
  store i32 %154, i32* %20, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = call i32 @libssh2_knownhost_free(i32* %155)
  %157 = load i32, i32* %20, align 4
  switch i32 %157, label %167 [
    i32 131, label %158
    i32 128, label %158
    i32 130, label %161
    i32 129, label %164
  ]

158:                                              ; preds = %143, %143
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %160 = call i32 @msg_Dbg(%struct.TYPE_27__* %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %167

161:                                              ; preds = %143
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %163 = call i32 @msg_Dbg(%struct.TYPE_27__* %162, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %167

164:                                              ; preds = %143
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %166 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %165, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %457

167:                                              ; preds = %143, %161, %158
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %169 = call i64 (%struct.TYPE_26__*, %struct.TYPE_27__*, i8*, i8*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_26__* %6, %struct.TYPE_27__* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 0)
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  br label %170

170:                                              ; preds = %289, %167
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %174, %170
  br label %289

181:                                              ; preds = %174
  %182 = load i8*, i8** %8, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %197, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i8* @strdup(i8* %186)
  store i8* %187, i8** %8, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @strlen(i8* %194)
  %196 = call i8* @libssh2_userauth_list(i32 %190, i8* %192, i64 %195)
  store i8* %196, i8** %21, align 8
  br label %232

197:                                              ; preds = %181
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i64 @strcmp(i8* %198, i8* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %231

203:                                              ; preds = %197
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %205 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Warn(%struct.TYPE_27__* %204, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %207 = call i32 @SSHSessionDestroy(%struct.TYPE_27__* %206)
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @SSHSessionInit(%struct.TYPE_27__* %208, i32 %210, i32 %211)
  %213 = load i32, i32* @VLC_SUCCESS, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %203
  br label %457

216:                                              ; preds = %203
  store i32 0, i32* %22, align 4
  %217 = load i8*, i8** %8, align 8
  %218 = call i32 @free(i8* %217)
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i8* @strdup(i8* %220)
  store i8* %221, i8** %8, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i64 @strlen(i8* %228)
  %230 = call i8* @libssh2_userauth_list(i32 %224, i8* %226, i64 %229)
  store i8* %230, i8** %21, align 8
  br label %231

231:                                              ; preds = %216, %197
  br label %232

232:                                              ; preds = %231, %184
  %233 = load i8*, i8** %8, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i8*, i8** %21, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %235, %232
  br label %457

239:                                              ; preds = %235
  %240 = load i8*, i8** %21, align 8
  %241 = call i32* @strstr(i8* %240, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %263

243:                                              ; preds = %239
  %244 = load i32, i32* %22, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %263, label %246

246:                                              ; preds = %243
  store i32 1, i32* %22, align 4
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @AuthKeyAgent(%struct.TYPE_27__* %247, i8* %249)
  %251 = load i32, i32* @VLC_SUCCESS, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %261, label %253

253:                                              ; preds = %246
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %255 = load i8*, i8** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @AuthPublicKey(%struct.TYPE_27__* %254, i8* %255, i8* %257)
  %259 = load i32, i32* @VLC_SUCCESS, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %253, %246
  br label %297

262:                                              ; preds = %253
  br label %263

263:                                              ; preds = %262, %243, %239
  %264 = load i8*, i8** %21, align 8
  %265 = call i32* @strstr(i8* %264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %284

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %284

271:                                              ; preds = %267
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = call i64 @libssh2_userauth_password(i32 %274, i8* %276, i32* %278)
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %271
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %283 = call i32 @vlc_credential_store(%struct.TYPE_26__* %6, %struct.TYPE_27__* %282)
  br label %297

284:                                              ; preds = %271, %267, %263
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Warn(%struct.TYPE_27__* %285, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %287)
  br label %289

289:                                              ; preds = %284, %180
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %291 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %292 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.15, i64 0, i64 0))
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i64 (%struct.TYPE_26__*, %struct.TYPE_27__*, i8*, i8*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_26__* %6, %struct.TYPE_27__* %290, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %291, i32 %292, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %170, label %297

297:                                              ; preds = %289, %281, %261
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @libssh2_sftp_init(i32 %300)
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 3
  store i32 %301, i32* %303, align 4
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %297
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %310 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %309, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  br label %457

311:                                              ; preds = %297
  %312 = load i8*, i8** %7, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %360, label %314

314:                                              ; preds = %311
  store i64 1024, i64* %23, align 8
  %315 = call i8* @malloc(i64 1024)
  store i8* %315, i8** %25, align 8
  %316 = load i8*, i8** %25, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %319, label %318

318:                                              ; preds = %314
  br label %457

319:                                              ; preds = %314
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load i8*, i8** %25, align 8
  %324 = load i32, i32* @LIBSSH2_SFTP_REALPATH, align 4
  %325 = call i32 @libssh2_sftp_symlink_ex(i32 %322, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 1, i8* %323, i64 1023, i32 %324)
  store i32 %325, i32* %24, align 4
  %326 = load i32, i32* %24, align 4
  %327 = icmp sle i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %319
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %330 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %329, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  %331 = load i8*, i8** %25, align 8
  %332 = call i32 @free(i8* %331)
  br label %457

333:                                              ; preds = %319
  %334 = load i8*, i8** %25, align 8
  %335 = load i32, i32* %24, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  store i8 0, i8* %337, align 1
  %338 = load i8*, i8** %25, align 8
  store i8* %338, i8** %7, align 8
  %339 = load i8*, i8** %7, align 8
  %340 = call i8* @vlc_path2uri(i8* %339, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  store i8* %340, i8** %26, align 8
  %341 = load i8*, i8** %26, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %333
  br label %457

344:                                              ; preds = %333
  %345 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = load i8*, i8** %26, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 7
  %352 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %346, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %349, i8* %351)
  %353 = icmp eq i32 -1, %352
  br i1 %353, label %354, label %357

354:                                              ; preds = %344
  %355 = load i8*, i8** %26, align 8
  %356 = call i32 @free(i8* %355)
  br label %457

357:                                              ; preds = %344
  %358 = load i8*, i8** %26, align 8
  %359 = call i32 @free(i8* %358)
  br label %360

360:                                              ; preds = %357, %311
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  %364 = load i8*, i8** %7, align 8
  %365 = call i64 @libssh2_sftp_stat(i32 %363, i8* %364, %struct.TYPE_29__* %27)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %360
  %368 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %369 = load i8*, i8** %7, align 8
  %370 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %368, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0), i8* %369)
  br label %457

371:                                              ; preds = %360
  %372 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @LIBSSH2_SFTP_S_ISDIR(i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %393, label %376

376:                                              ; preds = %371
  %377 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = load i8*, i8** %7, align 8
  %381 = load i32, i32* @LIBSSH2_FXF_READ, align 4
  %382 = call i32 @libssh2_sftp_open(i32 %379, i8* %380, i32 %381, i32 0)
  %383 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %383, i32 0, i32 2
  store i32 %382, i32* %384, align 8
  %385 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %387, i32 0, i32 4
  store i32 %386, i32* %388, align 8
  %389 = load i32, i32* @Read, align 4
  %390 = load i32, i32* @Control, align 4
  %391 = load i32, i32* @Seek, align 4
  %392 = call i32 @ACCESS_SET_CALLBACKS(i32 %389, i32* null, i32 %390, i32 %391)
  br label %446

393:                                              ; preds = %371
  %394 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = load i8*, i8** %7, align 8
  %398 = call i32 @libssh2_sftp_opendir(i32 %396, i8* %397)
  %399 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %399, i32 0, i32 2
  store i32 %398, i32* %400, align 8
  %401 = load i32, i32* @DirRead, align 4
  %402 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %402, i32 0, i32 3
  store i32 %401, i32* %403, align 4
  %404 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %405, i32 0, i32 2
  store i32 %404, i32* %406, align 8
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %407, i32 0, i32 1
  %409 = load i8*, i8** %408, align 8
  %410 = icmp ne i8* %409, null
  br i1 %410, label %445, label %411

411:                                              ; preds = %393
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 1
  %414 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %414, i32 0, i32 0
  %416 = load i8*, i8** %415, align 8
  %417 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %413, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* %416)
  %418 = icmp eq i32 %417, -1
  br i1 %418, label %419, label %420

419:                                              ; preds = %411
  br label %457

420:                                              ; preds = %411
  %421 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %421, i32 0, i32 1
  %423 = load i8*, i8** %422, align 8
  %424 = call i64 @strlen(i8* %423)
  store i64 %424, i64* %28, align 8
  %425 = load i64, i64* %28, align 8
  %426 = icmp ugt i64 %425, 0
  br i1 %426, label %427, label %444

427:                                              ; preds = %420
  %428 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %428, i32 0, i32 1
  %430 = load i8*, i8** %429, align 8
  %431 = load i64, i64* %28, align 8
  %432 = sub i64 %431, 1
  %433 = getelementptr inbounds i8, i8* %430, i64 %432
  %434 = load i8, i8* %433, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp eq i32 %435, 47
  br i1 %436, label %437, label %444

437:                                              ; preds = %427
  %438 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %438, i32 0, i32 1
  %440 = load i8*, i8** %439, align 8
  %441 = load i64, i64* %28, align 8
  %442 = sub i64 %441, 1
  %443 = getelementptr inbounds i8, i8* %440, i64 %442
  store i8 0, i8* %443, align 1
  br label %444

444:                                              ; preds = %437, %427, %420
  br label %445

445:                                              ; preds = %444, %393
  br label %446

446:                                              ; preds = %445, %376
  %447 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 8
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %455, label %451

451:                                              ; preds = %446
  %452 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %453 = load i8*, i8** %7, align 8
  %454 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %452, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i8* %453)
  br label %457

455:                                              ; preds = %446
  %456 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %456, i32* %14, align 4
  br label %457

457:                                              ; preds = %455, %451, %419, %367, %354, %343, %328, %318, %308, %238, %215, %164, %138, %108, %100, %76, %69
  %458 = load i8*, i8** %9, align 8
  %459 = call i32 @free(i8* %458)
  %460 = load i8*, i8** %8, align 8
  %461 = call i32 @free(i8* %460)
  %462 = load i8*, i8** %7, align 8
  %463 = call i32 @free(i8* %462)
  %464 = call i32 @vlc_credential_clean(%struct.TYPE_26__* %6)
  %465 = call i32 @vlc_UrlClean(%struct.TYPE_25__* %11)
  %466 = load i32, i32* %14, align 4
  %467 = load i32, i32* @VLC_SUCCESS, align 4
  %468 = icmp ne i32 %466, %467
  br i1 %468, label %469, label %472

469:                                              ; preds = %457
  %470 = load i32*, i32** %3, align 8
  %471 = call i32 @Close(i32* %470)
  br label %472

472:                                              ; preds = %469, %457
  %473 = load i32, i32* %14, align 4
  store i32 %473, i32* %2, align 4
  br label %474

474:                                              ; preds = %472, %55, %45, %36
  %475 = load i32, i32* %2, align 4
  ret i32 %475
}

declare dso_local %struct.TYPE_28__* @vlc_obj_calloc(i32*, i32, i32) #1

declare dso_local i64 @vlc_UrlParseFixup(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_25__*) #1

declare dso_local i32 @vlc_credential_init(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i8* @vlc_uri_decode_duplicate(i32*) #1

declare dso_local i64 @EMPTY_STR(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_27__*, i8*, ...) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @SSHSessionInit(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32* @libssh2_knownhost_init(i32) #1

declare dso_local i8* @config_GetUserDir(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i64 @libssh2_knownhost_readfile(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @libssh2_session_hostkey(i32, i64*, i32*) #1

declare dso_local i32 @libssh2_knownhost_free(i32*) #1

declare dso_local i32 @libssh2_knownhost_check(i32*, i32, i8*, i64, i32, %struct.libssh2_knownhost**) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_27__*, i8*) #1

declare dso_local i64 @vlc_credential_get(%struct.TYPE_26__*, %struct.TYPE_27__*, i8*, i8*, i32, i32, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @libssh2_userauth_list(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_27__*, i8*, ...) #1

declare dso_local i32 @SSHSessionDestroy(%struct.TYPE_27__*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @AuthKeyAgent(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @AuthPublicKey(%struct.TYPE_27__*, i8*, i8*) #1

declare dso_local i64 @libssh2_userauth_password(i32, i8*, i32*) #1

declare dso_local i32 @vlc_credential_store(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @libssh2_sftp_init(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @libssh2_sftp_symlink_ex(i32, i8*, i32, i8*, i64, i32) #1

declare dso_local i8* @vlc_path2uri(i8*, i8*) #1

declare dso_local i64 @libssh2_sftp_stat(i32, i8*, %struct.TYPE_29__*) #1

declare dso_local i32 @LIBSSH2_SFTP_S_ISDIR(i32) #1

declare dso_local i32 @libssh2_sftp_open(i32, i8*, i32, i32) #1

declare dso_local i32 @ACCESS_SET_CALLBACKS(i32, i32*, i32, i32) #1

declare dso_local i32 @libssh2_sftp_opendir(i32, i8*) #1

declare dso_local i32 @vlc_credential_clean(%struct.TYPE_26__*) #1

declare dso_local i32 @Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
