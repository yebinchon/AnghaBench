; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_share_mount_one.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_share_mount_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnttab = type { i8* }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"cannot %s '%s': dataset is exported to a local zone\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"cannot %s '%s': permission denied\0A\00", align 1
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_PROP_SHARENFS = common dso_local global i32 0, align 4
@ZFS_PROP_SHARESMB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"cannot share '%s': legacy share\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"use share(1M) to share this filesystem, or set sharenfs property on\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"cannot %s '%s': legacy mountpoint\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"use %s(1M) to %s this filesystem\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"cannot %s '%s': no mountpoint set\0A\00", align 1
@ZFS_PROP_CANMOUNT = common dso_local global i32 0, align 4
@ZFS_CANMOUNT_OFF = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [53 x i8] c"cannot %s '%s': 'canmount' property is set to 'off'\0A\00", align 1
@ZFS_CANMOUNT_NOAUTO = common dso_local global i64 0, align 8
@MS_CRYPT = common dso_local global i32 0, align 4
@ZFS_PROP_ENCRYPTION = common dso_local global i32 0, align 4
@ZIO_CRYPT_OFF = common dso_local global i64 0, align 8
@ZFS_PROP_KEYSTATUS = common dso_local global i32 0, align 4
@ZFS_KEYSTATUS_UNAVAILABLE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [43 x i8] c"cannot %s '%s': encryption key not loaded\0A\00", align 1
@ZFS_PROP_INCONSISTENT = common dso_local global i32 0, align 4
@ZFS_PROP_RECEIVE_RESUME_TOKEN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [115 x i8] c"cannot %s '%s': Contains partially-completed state from \22zfs receive -s\22, which can be resumed with \22zfs send -t\22\0A\00", align 1
@ZFS_PROP_REDACTED = common dso_local global i32 0, align 4
@MS_FORCE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [95 x i8] c"cannot %s '%s': Dataset is not complete, was created by receiving a redacted zfs send stream.\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"cannot share '%s': filesystem already shared\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"smb\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"cannot share '%s': invalid share type '%s' specified\0A\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MNTOPT_REMOUNT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [47 x i8] c"cannot mount '%s': filesystem already mounted\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@EZFS_MOUNTFAILED = common dso_local global i32 0, align 4
@MILLISEC = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [52 x i8] c"Ignoring previous 'already mounted' error for '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i32, i8*)* @share_mount_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @share_mount_one(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.mnttab, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %25 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  %32 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %17, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 128
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %38, i8** %18, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @zfs_get_type(i32* %39)
  %41 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @assert(i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %46 = call i64 @zfs_prop_get_int(i32* %44, i32 %45)
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %6
  %50 = call i64 (...) @getzoneid()
  %51 = load i64, i64* @GLOBAL_ZONEID, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

57:                                               ; preds = %53
  %58 = load i32, i32* @stderr, align 4
  %59 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i8*, i8** %18, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i8* @zfs_get_name(i32* %61)
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* %59, i8* %60, i8* %62)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

64:                                               ; preds = %49, %6
  %65 = load i64, i64* %20, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %64
  %68 = call i64 (...) @getzoneid()
  %69 = load i64, i64* @GLOBAL_ZONEID, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

75:                                               ; preds = %71
  %76 = load i32, i32* @stderr, align 4
  %77 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i8*, i8** %18, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i8* @zfs_get_name(i32* %79)
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* %77, i8* %78, i8* %80)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

82:                                               ; preds = %67, %64
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %86 = trunc i64 %26 to i32
  %87 = load i32, i32* @B_FALSE, align 4
  %88 = call i64 @zfs_prop_get(i32* %84, i32 %85, i8* %28, i32 %86, i32* null, i32* null, i32 0, i32 %87)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @verify(i32 %90)
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* @ZFS_PROP_SHARENFS, align 4
  %94 = trunc i64 %30 to i32
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = call i64 @zfs_prop_get(i32* %92, i32 %93, i8* %31, i32 %94, i32* null, i32* null, i32 0, i32 %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @verify(i32 %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @ZFS_PROP_SHARESMB, align 4
  %102 = trunc i64 %33 to i32
  %103 = load i32, i32* @B_FALSE, align 4
  %104 = call i64 @zfs_prop_get(i32* %100, i32 %101, i8* %34, i32 %102, i32* null, i32* null, i32 0, i32 %103)
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @verify(i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 128
  br i1 %109, label %110, label %129

110:                                              ; preds = %83
  %111 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

120:                                              ; preds = %116
  %121 = load i32, i32* @stderr, align 4
  %122 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i32*, i32** %8, align 8
  %124 = call i8* @zfs_get_name(i32* %123)
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* %122, i8* %124)
  %126 = load i32, i32* @stderr, align 4
  %127 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0))
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* %127)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

129:                                              ; preds = %113, %110, %83
  %130 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

136:                                              ; preds = %132
  %137 = load i32, i32* @stderr, align 4
  %138 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %139 = load i8*, i8** %18, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call i8* @zfs_get_name(i32* %140)
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* %138, i8* %139, i8* %141)
  %143 = load i32, i32* @stderr, align 4
  %144 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %145 = load i8*, i8** %18, align 8
  %146 = load i8*, i8** %18, align 8
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* %144, i8* %145, i8* %146)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

148:                                              ; preds = %129
  %149 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

155:                                              ; preds = %151
  %156 = load i32, i32* @stderr, align 4
  %157 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %158 = load i8*, i8** %18, align 8
  %159 = load i32*, i32** %8, align 8
  %160 = call i8* @zfs_get_name(i32* %159)
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* %157, i8* %158, i8* %160)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

162:                                              ; preds = %148
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* @ZFS_PROP_CANMOUNT, align 4
  %165 = call i64 @zfs_prop_get_int(i32* %163, i32 %164)
  store i64 %165, i64* %21, align 8
  %166 = load i64, i64* %21, align 8
  %167 = load i64, i64* @ZFS_CANMOUNT_OFF, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %162
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

173:                                              ; preds = %169
  %174 = load i32, i32* @stderr, align 4
  %175 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0))
  %176 = load i8*, i8** %18, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = call i8* @zfs_get_name(i32* %177)
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* %175, i8* %176, i8* %178)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

180:                                              ; preds = %162
  %181 = load i64, i64* %21, align 8
  %182 = load i64, i64* @ZFS_CANMOUNT_NOAUTO, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

188:                                              ; preds = %184, %180
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @MS_CRYPT, align 4
  %192 = and i32 %190, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %217

194:                                              ; preds = %189
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %197 = call i64 @zfs_prop_get_int(i32* %195, i32 %196)
  %198 = load i64, i64* @ZIO_CRYPT_OFF, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %194
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %203 = call i64 @zfs_prop_get_int(i32* %201, i32 %202)
  %204 = load i64, i64* @ZFS_KEYSTATUS_UNAVAILABLE, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %200
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

210:                                              ; preds = %206
  %211 = load i32, i32* @stderr, align 4
  %212 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  %213 = load i8*, i8** %18, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = call i8* @zfs_get_name(i32* %214)
  %216 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* %212, i8* %213, i8* %215)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

217:                                              ; preds = %200, %194, %189
  %218 = load i32*, i32** %8, align 8
  %219 = load i32, i32* @ZFS_PROP_INCONSISTENT, align 4
  %220 = call i64 @zfs_prop_get_int(i32* %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %217
  %223 = load i32*, i32** %8, align 8
  %224 = load i32, i32* @ZFS_PROP_RECEIVE_RESUME_TOKEN, align 4
  %225 = load i32, i32* @B_TRUE, align 4
  %226 = call i64 @zfs_prop_get(i32* %223, i32 %224, i8* null, i32 0, i32* null, i32* null, i32 0, i32 %225)
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %222
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

232:                                              ; preds = %228
  %233 = load i32, i32* @stderr, align 4
  %234 = call i8* @gettext(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.14, i64 0, i64 0))
  %235 = load i8*, i8** %18, align 8
  %236 = load i32*, i32** %8, align 8
  %237 = call i8* @zfs_get_name(i32* %236)
  %238 = call i32 (i32, i8*, ...) @fprintf(i32 %233, i8* %234, i8* %235, i8* %237)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

239:                                              ; preds = %222, %217
  %240 = load i32*, i32** %8, align 8
  %241 = load i32, i32* @ZFS_PROP_REDACTED, align 4
  %242 = call i64 @zfs_prop_get_int(i32* %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %260

244:                                              ; preds = %239
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @MS_FORCE, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

253:                                              ; preds = %249
  %254 = load i32, i32* @stderr, align 4
  %255 = call i8* @gettext(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.15, i64 0, i64 0))
  %256 = load i8*, i8** %18, align 8
  %257 = load i32*, i32** %8, align 8
  %258 = call i8* @zfs_get_name(i32* %257)
  %259 = call i32 (i32, i8*, ...) @fprintf(i32 %254, i8* %255, i8* %256, i8* %258)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

260:                                              ; preds = %244, %239
  %261 = load i32, i32* %9, align 4
  switch i32 %261, label %408 [
    i32 128, label %262
    i32 129, label %349
  ]

262:                                              ; preds = %260
  %263 = load i32*, i32** %8, align 8
  %264 = call i32 @zfs_is_shared_nfs(i32* %263, i32* null)
  store i32 %264, i32* %22, align 4
  %265 = load i32*, i32** %8, align 8
  %266 = call i32 @zfs_is_shared_smb(i32* %265, i32* null)
  store i32 %266, i32* %23, align 4
  %267 = load i32, i32* %22, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = load i32, i32* %23, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %290, label %272

272:                                              ; preds = %269, %262
  %273 = load i32, i32* %22, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %272
  %276 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %290, label %281

281:                                              ; preds = %278, %275, %272
  %282 = load i32, i32* %23, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %300

284:                                              ; preds = %281
  %285 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %300

287:                                              ; preds = %284
  %288 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %300

290:                                              ; preds = %287, %278, %269
  %291 = load i32, i32* %12, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

294:                                              ; preds = %290
  %295 = load i32, i32* @stderr, align 4
  %296 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0))
  %297 = load i32*, i32** %8, align 8
  %298 = call i8* @zfs_get_name(i32* %297)
  %299 = call i32 (i32, i8*, ...) @fprintf(i32 %295, i8* %296, i8* %298)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

300:                                              ; preds = %287, %284, %281
  %301 = load i32*, i32** %8, align 8
  %302 = call i32 @zfs_is_mounted(i32* %301, i32* null)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %300
  %305 = load i32*, i32** %8, align 8
  %306 = load i32, i32* %10, align 4
  %307 = call i32 @zfs_mount(i32* %305, i8* null, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

310:                                              ; preds = %304, %300
  %311 = load i8*, i8** %11, align 8
  %312 = icmp eq i8* %311, null
  br i1 %312, label %313, label %319

313:                                              ; preds = %310
  %314 = load i32*, i32** %8, align 8
  %315 = call i32 @zfs_shareall(i32* %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

318:                                              ; preds = %313
  br label %348

319:                                              ; preds = %310
  %320 = load i8*, i8** %11, align 8
  %321 = call i64 @strcmp(i8* %320, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %319
  %324 = load i32*, i32** %8, align 8
  %325 = call i32 @zfs_share_nfs(i32* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

328:                                              ; preds = %323
  br label %347

329:                                              ; preds = %319
  %330 = load i8*, i8** %11, align 8
  %331 = call i64 @strcmp(i8* %330, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %329
  %334 = load i32*, i32** %8, align 8
  %335 = call i32 @zfs_share_smb(i32* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %333
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

338:                                              ; preds = %333
  br label %346

339:                                              ; preds = %329
  %340 = load i32, i32* @stderr, align 4
  %341 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0))
  %342 = load i32*, i32** %8, align 8
  %343 = call i8* @zfs_get_name(i32* %342)
  %344 = load i8*, i8** %11, align 8
  %345 = call i32 (i32, i8*, ...) @fprintf(i32 %340, i8* %341, i8* %343, i8* %344)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

346:                                              ; preds = %338
  br label %347

347:                                              ; preds = %346, %328
  br label %348

348:                                              ; preds = %347, %318
  br label %408

349:                                              ; preds = %260
  %350 = load i8*, i8** %13, align 8
  %351 = icmp eq i8* %350, null
  br i1 %351, label %352, label %354

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8** %353, align 8
  br label %357

354:                                              ; preds = %349
  %355 = load i8*, i8** %13, align 8
  %356 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %19, i32 0, i32 0
  store i8* %355, i8** %356, align 8
  br label %357

357:                                              ; preds = %354, %352
  %358 = load i32, i32* @MNTOPT_REMOUNT, align 4
  %359 = call i32 @hasmntopt(%struct.mnttab* %19, i32 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %375, label %361

361:                                              ; preds = %357
  %362 = load i32*, i32** %8, align 8
  %363 = call i32 @zfs_is_mounted(i32* %362, i32* null)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %361
  %366 = load i32, i32* %12, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %365
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

369:                                              ; preds = %365
  %370 = load i32, i32* @stderr, align 4
  %371 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0))
  %372 = load i32*, i32** %8, align 8
  %373 = call i8* @zfs_get_name(i32* %372)
  %374 = call i32 (i32, i8*, ...) @fprintf(i32 %370, i8* %371, i8* %373)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

375:                                              ; preds = %361, %357
  %376 = load i32*, i32** %8, align 8
  %377 = load i8*, i8** %13, align 8
  %378 = load i32, i32* %10, align 4
  %379 = call i32 @zfs_mount(i32* %376, i8* %377, i32 %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %407

381:                                              ; preds = %375
  %382 = load i32, i32* %12, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %406, label %384

384:                                              ; preds = %381
  %385 = load i32, i32* @g_zfs, align 4
  %386 = call i32 @libzfs_errno(i32 %385)
  %387 = load i32, i32* @EZFS_MOUNTFAILED, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %406

389:                                              ; preds = %384
  %390 = load i32, i32* @MILLISEC, align 4
  %391 = mul nsw i32 10, %390
  %392 = call i32 @usleep(i32 %391)
  %393 = load i32, i32* @g_zfs, align 4
  %394 = load i32, i32* @B_FALSE, align 4
  %395 = call i32 @libzfs_mnttab_cache(i32 %393, i32 %394)
  %396 = load i32*, i32** %8, align 8
  %397 = call i32 @zfs_is_mounted(i32* %396, i32* null)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %389
  %400 = load i32, i32* @stderr, align 4
  %401 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i64 0, i64 0))
  %402 = load i32*, i32** %8, align 8
  %403 = call i8* @zfs_get_name(i32* %402)
  %404 = call i32 (i32, i8*, ...) @fprintf(i32 %400, i8* %401, i8* %403)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

405:                                              ; preds = %389
  br label %406

406:                                              ; preds = %405, %384, %381
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

407:                                              ; preds = %375
  br label %408

408:                                              ; preds = %260, %407, %348
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %409

409:                                              ; preds = %408, %406, %399, %369, %368, %339, %337, %327, %317, %309, %294, %293, %253, %252, %232, %231, %210, %209, %187, %173, %172, %155, %154, %136, %135, %120, %119, %75, %74, %57, %56
  %410 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %410)
  %411 = load i32, i32* %7, align 4
  ret i32 %411
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @zfs_get_type(i32*) #2

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #2

declare dso_local i64 @getzoneid(...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i8* @zfs_get_name(i32*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @zfs_is_shared_nfs(i32*, i32*) #2

declare dso_local i32 @zfs_is_shared_smb(i32*, i32*) #2

declare dso_local i32 @zfs_is_mounted(i32*, i32*) #2

declare dso_local i32 @zfs_mount(i32*, i8*, i32) #2

declare dso_local i32 @zfs_shareall(i32*) #2

declare dso_local i32 @zfs_share_nfs(i32*) #2

declare dso_local i32 @zfs_share_smb(i32*) #2

declare dso_local i32 @hasmntopt(%struct.mnttab*, i32) #2

declare dso_local i32 @libzfs_errno(i32) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @libzfs_mnttab_cache(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
