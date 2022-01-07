; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_nfs.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_nfs.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32*, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__*, i32*, %struct.TYPE_17__, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_20__ }
%struct.TYPE_15__ = type { i32, i32*, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_20__ = type { i64 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"nfs-auto-guid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"nfs_mount: server: '%s', path: '%s'\00", align 1
@nfs_mount_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"nfs_mount_async failed\00", align 1
@nfs_mount_open_finished_cb = common dso_local global i32 0, align 4
@nfs_mount_open_slash_finished_cb = common dso_local global i32 0, align 4
@FileRead = common dso_local global i32 0, align 4
@FileSeek = common dso_local global i32* null, align 8
@FileControl = common dso_local global i8* null, align 8
@DirRead = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"rpc_init_context failed\00", align 1
@mount_export_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"mount_getexports_async failed\00", align 1
@mount_getexports_finished_cb = common dso_local global i32 0, align 4
@MountRead = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %7, %struct.TYPE_18__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_19__* @vlc_obj_calloc(i32* %8, i32 1, i32 88)
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %5, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %11 = icmp eq %struct.TYPE_19__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %16, i32* %2, align 4
  br label %292

17:                                               ; preds = %1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 5
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %20, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @var_InheritBool(i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @vlc_uri_decode_duplicate(i32 %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 8
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  br label %288

36:                                               ; preds = %17
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 9
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @vlc_UrlParseFixup(%struct.TYPE_20__* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %288

45:                                               ; preds = %36
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @strstr(i64 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @strstr(i64 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58, %51
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %58
  br label %69

69:                                               ; preds = %68, %45
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 8
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @NfsInit(%struct.TYPE_18__* %70, i32* %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %288

77:                                               ; preds = %69
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %230

84:                                               ; preds = %77
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %230

91:                                               ; preds = %84
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @msg_Dbg(%struct.TYPE_18__* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32* %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @nfs_mount_cb, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = call i64 @nfs_mount_async(i32* %106, i32 %111, i32* %116, i32 %117, %struct.TYPE_18__* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %91
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = call i32 @msg_Err(%struct.TYPE_18__* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %288

124:                                              ; preds = %91
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = load i32, i32* @nfs_mount_open_finished_cb, align 4
  %127 = call i64 @vlc_nfs_mainloop(%struct.TYPE_18__* %125, i32 %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %288

130:                                              ; preds = %124
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %197

135:                                              ; preds = %130
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = call i32 @nfs_destroy_url(%struct.TYPE_15__* %138)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @nfs_destroy_context(i32* %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %145, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 4
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 7
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @NfsInit(%struct.TYPE_18__* %148, i32* %151)
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %168, label %154

154:                                              ; preds = %135
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %154
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %161, %154, %135
  br label %288

169:                                              ; preds = %161
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* @nfs_mount_cb, align 4
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %185 = call i64 @nfs_mount_async(i32* %172, i32 %177, i32* %182, i32 %183, %struct.TYPE_18__* %184)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %169
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %189 = call i32 @msg_Err(%struct.TYPE_18__* %188, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %288

190:                                              ; preds = %169
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %192 = load i32, i32* @nfs_mount_open_slash_finished_cb, align 4
  %193 = call i64 @vlc_nfs_mainloop(%struct.TYPE_18__* %191, i32 %192)
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %288

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196, %130
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 6
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = load i32, i32* @FileRead, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load i32*, i32** @FileSeek, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  store i32* %206, i32** %208, align 8
  %209 = load i8*, i8** @FileControl, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  store i8* %209, i8** %211, align 8
  br label %229

212:                                              ; preds = %197
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = load i32, i32* @DirRead, align 4
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  store i32* null, i32** %222, align 8
  %223 = load i8*, i8** @access_vaDirectoryControlHelper, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  store i8* %223, i8** %225, align 8
  br label %228

226:                                              ; preds = %212
  %227 = call i32 (...) @vlc_assert_unreachable()
  br label %228

228:                                              ; preds = %226, %217
  br label %229

229:                                              ; preds = %228, %202
  br label %286

230:                                              ; preds = %84, %77
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @nfs_destroy_context(i32* %233)
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 4
  store i32* null, i32** %236, align 8
  %237 = call i32* (...) @rpc_init_context()
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 2
  store i32* %237, i32** %239, align 8
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = icmp eq i32* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %230
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %246 = call i32 @msg_Err(%struct.TYPE_18__* %245, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %288

247:                                              ; preds = %230
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  store i32* null, i32** %251, align 8
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  store i32 -1, i32* %255, align 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @mount_export_cb, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %266 = call i64 @mount_getexports_async(i32* %258, i32 %263, i32 %264, %struct.TYPE_18__* %265)
  %267 = icmp slt i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %247
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %270 = call i32 @msg_Err(%struct.TYPE_18__* %269, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %288

271:                                              ; preds = %247
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %273 = load i32, i32* @mount_getexports_finished_cb, align 4
  %274 = call i64 @vlc_mount_mainloop(%struct.TYPE_18__* %272, i32 %273)
  %275 = icmp slt i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  br label %288

277:                                              ; preds = %271
  %278 = load i32, i32* @MountRead, align 4
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 1
  store i32* null, i32** %282, align 8
  %283 = load i8*, i8** @access_vaDirectoryControlHelper, align 8
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 0
  store i8* %283, i8** %285, align 8
  br label %286

286:                                              ; preds = %277, %229
  %287 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %287, i32* %2, align 4
  br label %292

288:                                              ; preds = %276, %268, %244, %195, %187, %168, %129, %121, %76, %44, %35
  %289 = load i32*, i32** %3, align 8
  %290 = call i32 @Close(i32* %289)
  %291 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %291, i32* %2, align 4
  br label %292

292:                                              ; preds = %288, %286, %15
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local %struct.TYPE_19__* @vlc_obj_calloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @var_InheritBool(i32*, i8*) #1

declare dso_local i32* @vlc_uri_decode_duplicate(i32) #1

declare dso_local i64 @vlc_UrlParseFixup(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @strstr(i64, i8*) #1

declare dso_local i32 @NfsInit(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_18__*, i8*, i32, i32*) #1

declare dso_local i64 @nfs_mount_async(i32*, i32, i32*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @vlc_nfs_mainloop(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @nfs_destroy_url(%struct.TYPE_15__*) #1

declare dso_local i32 @nfs_destroy_context(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32* @rpc_init_context(...) #1

declare dso_local i64 @mount_getexports_async(i32*, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @vlc_mount_mainloop(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
