; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_set_basic_information.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_set_basic_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32, %struct.TYPE_35__, %struct.TYPE_35__, %struct.TYPE_35__, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_32__*, %struct.TYPE_30__* }
%struct.TYPE_32__ = type { i32, i32, i32, i32, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { %struct.TYPE_39__*, %struct.TYPE_42__* }
%struct.TYPE_39__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32, i8* }
%struct.TYPE_42__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_43__, %struct.TYPE_45__, %struct.TYPE_38__*, i64 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_45__ = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_38__ = type { i64, %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"stream did not have fileref\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ccb was NULL\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"file = %p, attributes = %x\0A\00", align 1
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@BTRFS_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"attempted to set FILE_ATTRIBUTE_DIRECTORY on non-directory\0A\00", align 1
@SUBVOL_ROOT_INODE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@BTRFS_SUBVOL_READONLY = common dso_local global i32 0, align 4
@STATUS_DEVICE_NOT_READY = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_CREATION = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_LAST_ACCESS = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_LAST_WRITE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@BTRFS_TYPE_SYMLINK = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_REPARSE_POINT = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ACTION_MODIFIED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_33__*, %struct.TYPE_34__*)* @set_basic_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_basic_information(%struct.TYPE_31__* %0, %struct.TYPE_33__* %1, %struct.TYPE_34__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_46__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_35__, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %7, align 8
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  store %struct.TYPE_36__* %21, %struct.TYPE_36__** %8, align 8
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  store %struct.TYPE_30__* %24, %struct.TYPE_30__** %9, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  store %struct.TYPE_32__* %27, %struct.TYPE_32__** %10, align 8
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %29 = icmp ne %struct.TYPE_32__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_46__*, %struct.TYPE_46__** %32, align 8
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi %struct.TYPE_46__* [ %33, %30 ], [ null, %34 ]
  store %struct.TYPE_46__* %36, %struct.TYPE_46__** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %43 = icmp ne %struct.TYPE_46__* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_42__*, %struct.TYPE_42__** %46, align 8
  %48 = icmp ne %struct.TYPE_42__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_42__*, %struct.TYPE_42__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %53, align 8
  store %struct.TYPE_30__* %54, %struct.TYPE_30__** %9, align 8
  br label %58

55:                                               ; preds = %44, %41
  %56 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %57, i32* %4, align 4
  br label %530

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %61 = icmp ne %struct.TYPE_32__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = call i32 @ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %64, i32* %4, align 4
  br label %530

65:                                               ; preds = %59
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_34__* %66, i32 %69)
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ExAcquireResourceExclusiveLite(i32 %74, i32 1)
  %76 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %65
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BTRFS_TYPE_DIRECTORY, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = call i32 @WARN(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %90, i32* %15, align 4
  br label %523

91:                                               ; preds = %82, %65
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SUBVOL_ROOT_INODE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %91
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 8
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %99, align 8
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %102 = call i64 @is_subvol_readonly(%struct.TYPE_38__* %100, %struct.TYPE_33__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109, %104
  %117 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %117, i32* %15, align 4
  br label %523

118:                                              ; preds = %109, %97, %91
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SUBVOL_ROOT_INODE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 8
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @BTRFS_SUBVOL_READONLY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %124
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 8
  %137 = load %struct.TYPE_38__*, %struct.TYPE_38__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @STATUS_DEVICE_NOT_READY, align 4
  store i32 %142, i32* %15, align 4
  br label %523

143:                                              ; preds = %134, %124, %118
  %144 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, -2
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 0
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %149, %143
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, -2
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 4
  br label %163

163:                                              ; preds = %159, %153
  %164 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, -2
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 0
  store i32 0, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %163
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, -2
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 4
  br label %183

183:                                              ; preds = %179, %173
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  br label %213

192:                                              ; preds = %183
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %192
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %200, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @win_time_to_unix(i32 %205, i8** %203)
  store i32 1, i32* %14, align 4
  %207 = load i32, i32* @FILE_NOTIFY_CHANGE_CREATION, align 4
  %208 = load i32, i32* %13, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %13, align 4
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 0
  store i32 1, i32* %211, align 8
  br label %212

212:                                              ; preds = %198, %192
  br label %213

213:                                              ; preds = %212, %189
  %214 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 1
  store i32 1, i32* %221, align 4
  br label %243

222:                                              ; preds = %213
  %223 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %222
  %229 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %229, i32 0, i32 3
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %230, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @win_time_to_unix(i32 %235, i8** %233)
  store i32 1, i32* %14, align 4
  %237 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_ACCESS, align 4
  %238 = load i32, i32* %13, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %13, align 4
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 1
  store i32 1, i32* %241, align 4
  br label %242

242:                                              ; preds = %228, %222
  br label %243

243:                                              ; preds = %242, %219
  %244 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %252

249:                                              ; preds = %243
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %250, i32 0, i32 2
  store i32 1, i32* %251, align 8
  br label %273

252:                                              ; preds = %243
  %253 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %272

258:                                              ; preds = %252
  %259 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 7
  %263 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %260, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @win_time_to_unix(i32 %265, i8** %263)
  store i32 1, i32* %14, align 4
  %267 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_WRITE, align 4
  %268 = load i32, i32* %13, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %13, align 4
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %270, i32 0, i32 2
  store i32 1, i32* %271, align 8
  br label %272

272:                                              ; preds = %258, %252
  br label %273

273:                                              ; preds = %272, %249
  %274 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %279, label %282

279:                                              ; preds = %273
  %280 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %280, i32 0, i32 3
  store i32 1, i32* %281, align 4
  br label %300

282:                                              ; preds = %273
  %283 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %282
  %289 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %290, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @win_time_to_unix(i32 %295, i8** %293)
  store i32 1, i32* %14, align 4
  %297 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %297, i32 0, i32 3
  store i32 1, i32* %298, align 4
  br label %299

299:                                              ; preds = %288, %282
  br label %300

300:                                              ; preds = %299, %279
  %301 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %493

305:                                              ; preds = %300
  %306 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %307 = xor i32 %306, -1
  %308 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, %307
  store i32 %311, i32* %309, align 4
  %312 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %313 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %313, i32 0, i32 8
  %315 = load %struct.TYPE_38__*, %struct.TYPE_38__** %314, align 8
  %316 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %323 = icmp ne %struct.TYPE_46__* %322, null
  br i1 %323, label %324, label %349

324:                                              ; preds = %305
  %325 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_39__*, %struct.TYPE_39__** %326, align 8
  %328 = icmp ne %struct.TYPE_39__* %327, null
  br i1 %328, label %329, label %349

329:                                              ; preds = %324
  %330 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %331 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_39__*, %struct.TYPE_39__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = sext i32 %335 to i64
  %337 = icmp uge i64 %336, 4
  br i1 %337, label %338, label %349

338:                                              ; preds = %329
  %339 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_39__*, %struct.TYPE_39__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %342, i32 0, i32 1
  %344 = load i8*, i8** %343, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 0
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 46
  br label %349

349:                                              ; preds = %338, %329, %324, %305
  %350 = phi i1 [ false, %329 ], [ false, %324 ], [ false, %305 ], [ %348, %338 ]
  %351 = zext i1 %350 to i32
  %352 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %353 = call i32 @get_file_attributes(%struct.TYPE_31__* %312, %struct.TYPE_38__* %315, i64 %318, i64 %321, i32 %351, i32 1, %struct.TYPE_33__* %352)
  store i32 %353, i32* %12, align 4
  %354 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @BTRFS_TYPE_DIRECTORY, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %365

359:                                              ; preds = %349
  %360 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %361 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 4
  br label %378

365:                                              ; preds = %349
  %366 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %367 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @BTRFS_TYPE_SYMLINK, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %377

371:                                              ; preds = %365
  %372 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %373 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 4
  br label %377

377:                                              ; preds = %371, %365
  br label %378

378:                                              ; preds = %377, %359
  %379 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %380 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %379, i32 0, i32 2
  store i32 1, i32* %380, align 8
  %381 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %382 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %378
  %388 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %389 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %390 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = or i32 %391, %388
  store i32 %392, i32* %390, align 4
  br label %393

393:                                              ; preds = %387, %378
  %394 = load i32, i32* %12, align 4
  %395 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %394, %397
  br i1 %398, label %399, label %402

399:                                              ; preds = %393
  %400 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %400, i32 0, i32 4
  store i32 1, i32* %401, align 8
  br label %422

402:                                              ; preds = %393
  %403 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @SUBVOL_ROOT_INODE, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %421

408:                                              ; preds = %402
  %409 = load i32, i32* %12, align 4
  %410 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %411 = or i32 %409, %410
  %412 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %416 = or i32 %414, %415
  %417 = icmp eq i32 %411, %416
  br i1 %417, label %418, label %421

418:                                              ; preds = %408
  %419 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %419, i32 0, i32 4
  store i32 1, i32* %420, align 8
  br label %421

421:                                              ; preds = %418, %408, %402
  br label %422

422:                                              ; preds = %421, %399
  %423 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %427 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %426, i32 0, i32 3
  store i32 %425, i32* %427, align 4
  %428 = call i32 @KeQuerySystemTime(%struct.TYPE_35__* %16)
  %429 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @win_time_to_unix(i32 %430, i8** %17)
  %432 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %433 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %441, label %436

436:                                              ; preds = %422
  %437 = load i8*, i8** %17, align 8
  %438 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %439 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %438, i32 0, i32 7
  %440 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %439, i32 0, i32 3
  store i8* %437, i8** %440, align 8
  br label %441

441:                                              ; preds = %436, %422
  %442 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %447 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %446, i32 0, i32 8
  %448 = load %struct.TYPE_38__*, %struct.TYPE_38__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %449, i32 0, i32 2
  store i32 %445, i32* %450, align 8
  %451 = load i8*, i8** %17, align 8
  %452 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %453 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %452, i32 0, i32 8
  %454 = load %struct.TYPE_38__*, %struct.TYPE_38__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %455, i32 0, i32 1
  store i8* %451, i8** %456, align 8
  %457 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %458 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %457, i32 0, i32 1
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @SUBVOL_ROOT_INODE, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %489

462:                                              ; preds = %441
  %463 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %464 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %478

469:                                              ; preds = %462
  %470 = load i32, i32* @BTRFS_SUBVOL_READONLY, align 4
  %471 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %472 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %471, i32 0, i32 8
  %473 = load %struct.TYPE_38__*, %struct.TYPE_38__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = or i32 %476, %470
  store i32 %477, i32* %475, align 8
  br label %488

478:                                              ; preds = %462
  %479 = load i32, i32* @BTRFS_SUBVOL_READONLY, align 4
  %480 = xor i32 %479, -1
  %481 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %482 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %481, i32 0, i32 8
  %483 = load %struct.TYPE_38__*, %struct.TYPE_38__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = and i32 %486, %480
  store i32 %487, i32* %485, align 8
  br label %488

488:                                              ; preds = %478, %469
  br label %489

489:                                              ; preds = %488, %441
  store i32 1, i32* %14, align 4
  %490 = load i32, i32* @FILE_NOTIFY_CHANGE_ATTRIBUTES, align 4
  %491 = load i32, i32* %13, align 4
  %492 = or i32 %491, %490
  store i32 %492, i32* %13, align 4
  br label %493

493:                                              ; preds = %489, %300
  %494 = load i32, i32* %14, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %513

496:                                              ; preds = %493
  %497 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %498 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %502 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %501, i32 0, i32 7
  %503 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %502, i32 0, i32 5
  store i32 %500, i32* %503, align 4
  %504 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %505 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %504, i32 0, i32 7
  %506 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %506, align 8
  %509 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %510 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %509, i32 0, i32 5
  store i32 1, i32* %510, align 4
  %511 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %512 = call i32 @mark_fcb_dirty(%struct.TYPE_30__* %511)
  br label %513

513:                                              ; preds = %496, %493
  %514 = load i32, i32* %13, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %521

516:                                              ; preds = %513
  %517 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %518 = load i32, i32* %13, align 4
  %519 = load i32, i32* @FILE_ACTION_MODIFIED, align 4
  %520 = call i32 @queue_notification_fcb(%struct.TYPE_46__* %517, i32 %518, i32 %519, i32* null)
  br label %521

521:                                              ; preds = %516, %513
  %522 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %522, i32* %15, align 4
  br label %523

523:                                              ; preds = %521, %141, %116, %88
  %524 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %525 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %524, i32 0, i32 6
  %526 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = call i32 @ExReleaseResourceLite(i32 %527)
  %529 = load i32, i32* %15, align 4
  store i32 %529, i32* %4, align 4
  br label %530

530:                                              ; preds = %523, %62, %55
  %531 = load i32, i32* %4, align 4
  ret i32 %531
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @is_subvol_readonly(%struct.TYPE_38__*, %struct.TYPE_33__*) #1

declare dso_local i32 @win_time_to_unix(i32, i8**) #1

declare dso_local i32 @get_file_attributes(%struct.TYPE_31__*, %struct.TYPE_38__*, i64, i64, i32, i32, %struct.TYPE_33__*) #1

declare dso_local i32 @KeQuerySystemTime(%struct.TYPE_35__*) #1

declare dso_local i32 @mark_fcb_dirty(%struct.TYPE_30__*) #1

declare dso_local i32 @queue_notification_fcb(%struct.TYPE_46__*, i32, i32, i32*) #1

declare dso_local i32 @ExReleaseResourceLite(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
