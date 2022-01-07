; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_http.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_http.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8*, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_26__, %struct.TYPE_26__, i64, %struct.TYPE_22__, i64, i64, i32*, i32*, i32*, i64, i64, i32* }
%struct.TYPE_26__ = type { i8*, i32, i8*, i8*, i8* }
%struct.TYPE_22__ = type { i64, i32*, i64 }
%struct.TYPE_23__ = type { i8*, i64, i64, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"invalid URL\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"http-user-agent\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c")<>@,;:\\\22[]?={}\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\09\0D\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"http-referrer\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"http-proxy\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"querying proxy for %s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"proxy: %s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"no proxy\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"http-proxy-pwd\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"invalid proxy host\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"http: server='%s' port=%d file='%s'\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"      proxy %s:%d\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"      user='%s'\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"http-reconnect\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"authentication failed without realm\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"authentication failed for realm %s\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Basic\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"HTTP authentication\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"Please enter a valid login name and a password for realm %s.\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"retrying with user=%s\00", align 1
@VLC_ACCESS_REDIRECT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"auto re-connect enabled\00", align 1
@Read = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@Seek = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %4, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call %struct.TYPE_25__* @vlc_obj_malloc(i32* %20, i32 256)
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %9, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %23 = icmp eq %struct.TYPE_25__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %28, i32* %2, align 4
  br label %567

29:                                               ; preds = %1
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 22
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  store i8* null, i8** %35, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 2
  store i8* null, i8** %37, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 3
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 4
  store i8* null, i8** %41, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 5
  store i8* null, i8** %43, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 6
  store i8* null, i8** %45, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 7
  store i8* null, i8** %47, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 8
  store i8* null, i8** %49, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 21
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 20
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 19
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 18
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 17
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 9
  store i32 0, i32* %61, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 16
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 15
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 4
  store %struct.TYPE_25__* %66, %struct.TYPE_25__** %68, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 12
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @vlc_UrlParse(%struct.TYPE_26__* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %29
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 12
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %74, %29
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %82 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Err(%struct.TYPE_24__* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 12
  %85 = call i32 @vlc_UrlClean(%struct.TYPE_26__* %84)
  %86 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %86, i32* %2, align 4
  br label %567

87:                                               ; preds = %74
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 12
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  store i32 80, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 12
  %100 = call i32 @vlc_credential_init(%struct.TYPE_23__* %8, %struct.TYPE_26__* %99)
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %102 = call i8* @var_InheritString(%struct.TYPE_24__* %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 5
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %177

109:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 5
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %11, align 8
  br label %113

113:                                              ; preds = %164, %109
  %114 = load i8*, i8** %11, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %167

117:                                              ; preds = %113
  %118 = load i8*, i8** %11, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 32
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = trunc i32 %127 to i8
  %129 = call i8* @strchr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8 signext %128)
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %126, %123
  %132 = load i8*, i8** %11, align 8
  store i8 95, i8* %132, align 1
  br label %133

133:                                              ; preds = %131, %126
  br label %152

134:                                              ; preds = %117
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %135, 41
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %10, align 4
  %139 = add i32 %138, -1
  store i32 %139, i32* %10, align 4
  br label %151

140:                                              ; preds = %134
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %141, 32
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32, i32* %12, align 4
  %145 = trunc i32 %144 to i8
  %146 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8 signext %145)
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i8*, i8** %11, align 8
  store i8 95, i8* %149, align 1
  br label %150

150:                                              ; preds = %148, %143, %140
  br label %151

151:                                              ; preds = %150, %137
  br label %152

152:                                              ; preds = %151, %133
  %153 = load i32, i32* %12, align 4
  %154 = icmp eq i32 %153, 40
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @UINT_MAX, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %167

160:                                              ; preds = %155
  %161 = load i32, i32* %10, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %160, %152
  br label %164

164:                                              ; preds = %163
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %11, align 8
  br label %113

167:                                              ; preds = %159, %113
  %168 = load i32, i32* %10, align 4
  %169 = icmp ugt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @strchr(i8* %173, i8 signext 40)
  store i8* %174, i8** %13, align 8
  %175 = load i8*, i8** %13, align 8
  store i8 0, i8* %175, align 1
  br label %176

176:                                              ; preds = %170, %167
  br label %177

177:                                              ; preds = %176, %97
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %179 = call i8* @var_InheritString(%struct.TYPE_24__* %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 6
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %183 = call i8* @var_InheritString(%struct.TYPE_24__* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %183, i8** %6, align 8
  %184 = load i8*, i8** %6, align 8
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %202

186:                                              ; preds = %177
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %188 = load i8*, i8** %5, align 8
  %189 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Dbg(%struct.TYPE_24__* %187, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %188)
  %190 = load i8*, i8** %5, align 8
  %191 = call i8* @vlc_getProxyUrl(i8* %190)
  store i8* %191, i8** %6, align 8
  %192 = load i8*, i8** %6, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Dbg(%struct.TYPE_24__* %195, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %196)
  br label %201

198:                                              ; preds = %186
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %200 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Dbg(%struct.TYPE_24__* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %194
  br label %202

202:                                              ; preds = %201, %177
  %203 = load i8*, i8** %6, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %253

205:                                              ; preds = %202
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 11
  %210 = load i8*, i8** %6, align 8
  %211 = call i64 @vlc_UrlParse(%struct.TYPE_26__* %209, i8* %210)
  %212 = load i8*, i8** %6, align 8
  %213 = call i32 @free(i8* %212)
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %215 = call i8* @var_InheritString(%struct.TYPE_24__* %214, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i8* %215, i8** %6, align 8
  %216 = load i8*, i8** %6, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %225

218:                                              ; preds = %205
  %219 = load i8*, i8** %6, align 8
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 11
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 2
  store i8* %219, i8** %224, align 8
  br label %225

225:                                              ; preds = %218, %205
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 11
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = icmp eq i8* %229, null
  br i1 %230, label %239, label %231

231:                                              ; preds = %225
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 11
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %231, %225
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %241 = call i32 @msg_Warn(%struct.TYPE_24__* %240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %524

242:                                              ; preds = %231
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 11
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = icmp sle i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %242
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 11
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 1
  store i32 80, i32* %251, align 8
  br label %252

252:                                              ; preds = %248, %242
  br label %253

253:                                              ; preds = %252, %202
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 12
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 12
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 12
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 3
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %253
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 12
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 3
  %272 = load i8*, i8** %271, align 8
  br label %274

273:                                              ; preds = %253
  br label %274

274:                                              ; preds = %273, %268
  %275 = phi i8* [ %272, %268 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), %273 ]
  %276 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Dbg(%struct.TYPE_24__* %254, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* %258, i32 %262, i8* %275)
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %274
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 11
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 11
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Dbg(%struct.TYPE_24__* %282, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %286, i32 %290)
  br label %292

292:                                              ; preds = %281, %274
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 12
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 4
  %296 = load i8*, i8** %295, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %313

298:                                              ; preds = %292
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 12
  %301 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %300, i32 0, i32 4
  %302 = load i8*, i8** %301, align 8
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %298
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 12
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 4
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Dbg(%struct.TYPE_24__* %307, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %311)
  br label %313

313:                                              ; preds = %306, %298, %292
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %315 = call i64 @var_InheritBool(%struct.TYPE_24__* %314, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 13
  store i64 %315, i64* %317, align 8
  %318 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %319 = call i64 (%struct.TYPE_23__*, %struct.TYPE_24__*, i32*, i32*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_23__* %8, %struct.TYPE_24__* %318, i32* null, i32* null, i32 0, i32 0)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %334

321:                                              ; preds = %313
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = inttoptr i64 %323 to i8*
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 12
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 4
  store i8* %324, i8** %327, align 8
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = inttoptr i64 %329 to i8*
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 12
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 2
  store i8* %330, i8** %333, align 8
  br label %334

334:                                              ; preds = %321, %313
  br label %335

335:                                              ; preds = %443, %378, %334
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %337 = call i64 @Connect(%struct.TYPE_24__* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %335
  br label %521

340:                                              ; preds = %335
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 10
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 401
  br i1 %344, label %345, label %464

345:                                              ; preds = %340
  %346 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %346, i32 0, i32 14
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = icmp eq i32* %349, null
  br i1 %350, label %351, label %354

351:                                              ; preds = %345
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %353 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Err(%struct.TYPE_24__* %352, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  br label %521

354:                                              ; preds = %345
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %355, i32 0, i32 12
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i32 0, i32 4
  %358 = load i8*, i8** %357, align 8
  %359 = icmp ne i8* %358, null
  br i1 %359, label %360, label %381

360:                                              ; preds = %354
  %361 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %361, i32 0, i32 12
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 2
  %364 = load i8*, i8** %363, align 8
  %365 = icmp ne i8* %364, null
  br i1 %365, label %366, label %381

366:                                              ; preds = %360
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 14
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %381

372:                                              ; preds = %366
  %373 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %373, i32 0, i32 14
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %372
  %379 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %380 = call i32 @Disconnect(%struct.TYPE_24__* %379)
  br label %335

381:                                              ; preds = %372, %366, %360, %354
  %382 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %382, i32 0, i32 7
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @free(i8* %384)
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %387 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %386, i32 0, i32 8
  %388 = load i8*, i8** %387, align 8
  %389 = call i32 @free(i8* %388)
  %390 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 8
  store i8* null, i8** %391, align 8
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 7
  store i8* null, i8** %393, align 8
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %395, i32 0, i32 14
  %397 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Dbg(%struct.TYPE_24__* %394, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32* %398)
  %400 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %400, i32 0, i32 14
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 1
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 3
  store i32* %403, i32** %404, align 8
  %405 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %405, i32 0, i32 14
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  %410 = zext i1 %409 to i64
  %411 = select i1 %409, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i8* %411, i8** %412, align 8
  %413 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %414 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %415 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i64 0, i64 0))
  %416 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %417 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %416, i32 0, i32 14
  %418 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %417, i32 0, i32 1
  %419 = load i32*, i32** %418, align 8
  %420 = call i64 (%struct.TYPE_23__*, %struct.TYPE_24__*, i32*, i32*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_23__* %8, %struct.TYPE_24__* %413, i32* null, i32* null, i32 %414, i32 %415, i32* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %463

422:                                              ; preds = %381
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = call i8* @strdup(i64 %424)
  %426 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %427 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %426, i32 0, i32 7
  store i8* %425, i8** %427, align 8
  %428 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = call i8* @strdup(i64 %429)
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %432 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %431, i32 0, i32 8
  store i8* %430, i8** %432, align 8
  %433 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %434 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %433, i32 0, i32 7
  %435 = load i8*, i8** %434, align 8
  %436 = icmp ne i8* %435, null
  br i1 %436, label %437, label %442

437:                                              ; preds = %422
  %438 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %439 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %438, i32 0, i32 8
  %440 = load i8*, i8** %439, align 8
  %441 = icmp ne i8* %440, null
  br i1 %441, label %443, label %442

442:                                              ; preds = %437, %422
  br label %521

443:                                              ; preds = %437
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %445 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %446 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %445, i32 0, i32 7
  %447 = load i8*, i8** %446, align 8
  %448 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Err(%struct.TYPE_24__* %444, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i8* %447)
  %449 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %450 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %449, i32 0, i32 7
  %451 = load i8*, i8** %450, align 8
  %452 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %453 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %452, i32 0, i32 12
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 4
  store i8* %451, i8** %454, align 8
  %455 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %456 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %455, i32 0, i32 8
  %457 = load i8*, i8** %456, align 8
  %458 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %459 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %458, i32 0, i32 12
  %460 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %459, i32 0, i32 2
  store i8* %457, i8** %460, align 8
  %461 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %462 = call i32 @Disconnect(%struct.TYPE_24__* %461)
  br label %335

463:                                              ; preds = %381
  br label %521

464:                                              ; preds = %340
  %465 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %466 = call i32 @vlc_credential_store(%struct.TYPE_23__* %8, %struct.TYPE_24__* %465)
  br label %467

467:                                              ; preds = %464
  %468 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %469 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %468, i32 0, i32 10
  %470 = load i32, i32* %469, align 4
  %471 = icmp eq i32 %470, 301
  br i1 %471, label %487, label %472

472:                                              ; preds = %467
  %473 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %474 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %473, i32 0, i32 10
  %475 = load i32, i32* %474, align 4
  %476 = icmp eq i32 %475, 302
  br i1 %476, label %487, label %477

477:                                              ; preds = %472
  %478 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %479 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %478, i32 0, i32 10
  %480 = load i32, i32* %479, align 4
  %481 = icmp eq i32 %480, 303
  br i1 %481, label %487, label %482

482:                                              ; preds = %477
  %483 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %484 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %483, i32 0, i32 10
  %485 = load i32, i32* %484, align 4
  %486 = icmp eq i32 %485, 307
  br i1 %486, label %487, label %501

487:                                              ; preds = %482, %477, %472, %467
  %488 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %489 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %488, i32 0, i32 4
  %490 = load i8*, i8** %489, align 8
  %491 = icmp ne i8* %490, null
  br i1 %491, label %492, label %501

492:                                              ; preds = %487
  %493 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %494 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %493, i32 0, i32 4
  %495 = load i8*, i8** %494, align 8
  %496 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %496, i32 0, i32 0
  store i8* %495, i8** %497, align 8
  %498 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %499 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %498, i32 0, i32 4
  store i8* null, i8** %499, align 8
  %500 = load i32, i32* @VLC_ACCESS_REDIRECT, align 4
  store i32 %500, i32* %7, align 4
  br label %521

501:                                              ; preds = %487, %482
  %502 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %503 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %502, i32 0, i32 13
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %509

506:                                              ; preds = %501
  %507 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %508 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Dbg(%struct.TYPE_24__* %507, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  br label %509

509:                                              ; preds = %506, %501
  %510 = load i32, i32* @Read, align 4
  %511 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %512 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %511, i32 0, i32 3
  store i32 %510, i32* %512, align 8
  %513 = load i32, i32* @Control, align 4
  %514 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %515 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %514, i32 0, i32 2
  store i32 %513, i32* %515, align 4
  %516 = load i32, i32* @Seek, align 4
  %517 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %517, i32 0, i32 1
  store i32 %516, i32* %518, align 8
  %519 = call i32 @vlc_credential_clean(%struct.TYPE_23__* %8)
  %520 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %520, i32* %2, align 4
  br label %567

521:                                              ; preds = %492, %463, %442, %351, %339
  %522 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %523 = call i32 @Disconnect(%struct.TYPE_24__* %522)
  br label %524

524:                                              ; preds = %521, %239
  %525 = call i32 @vlc_credential_clean(%struct.TYPE_23__* %8)
  %526 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %527 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %526, i32 0, i32 12
  %528 = call i32 @vlc_UrlClean(%struct.TYPE_26__* %527)
  %529 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %530 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %537

533:                                              ; preds = %524
  %534 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %535 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %534, i32 0, i32 11
  %536 = call i32 @vlc_UrlClean(%struct.TYPE_26__* %535)
  br label %537

537:                                              ; preds = %533, %524
  %538 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %539 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %538, i32 0, i32 1
  %540 = load i8*, i8** %539, align 8
  %541 = call i32 @free(i8* %540)
  %542 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %543 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %542, i32 0, i32 2
  %544 = load i8*, i8** %543, align 8
  %545 = call i32 @free(i8* %544)
  %546 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %547 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %546, i32 0, i32 4
  %548 = load i8*, i8** %547, align 8
  %549 = call i32 @free(i8* %548)
  %550 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %551 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %550, i32 0, i32 5
  %552 = load i8*, i8** %551, align 8
  %553 = call i32 @free(i8* %552)
  %554 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %555 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %554, i32 0, i32 6
  %556 = load i8*, i8** %555, align 8
  %557 = call i32 @free(i8* %556)
  %558 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %559 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %558, i32 0, i32 7
  %560 = load i8*, i8** %559, align 8
  %561 = call i32 @free(i8* %560)
  %562 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %563 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %562, i32 0, i32 8
  %564 = load i8*, i8** %563, align 8
  %565 = call i32 @free(i8* %564)
  %566 = load i32, i32* %7, align 4
  store i32 %566, i32* %2, align 4
  br label %567

567:                                              ; preds = %537, %509, %80, %27
  %568 = load i32, i32* %2, align 4
  ret i32 %568
}

declare dso_local %struct.TYPE_25__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlc_UrlParse(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_24__*, i8*, ...) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_26__*) #1

declare dso_local i32 @vlc_credential_init(%struct.TYPE_23__*, %struct.TYPE_26__*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_24__*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_24__*, i8*, ...) #1

declare dso_local i8* @vlc_getProxyUrl(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_24__*, i8*) #1

declare dso_local i64 @var_InheritBool(%struct.TYPE_24__*, i8*) #1

declare dso_local i64 @vlc_credential_get(%struct.TYPE_23__*, %struct.TYPE_24__*, i32*, i32*, i32, i32, ...) #1

declare dso_local i64 @Connect(%struct.TYPE_24__*) #1

declare dso_local i32 @Disconnect(%struct.TYPE_24__*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strdup(i64) #1

declare dso_local i32 @vlc_credential_store(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @vlc_credential_clean(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
