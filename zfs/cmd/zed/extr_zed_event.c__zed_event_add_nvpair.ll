; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_add_nvpair.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_add_nvpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEVENT_VAR_PREFIX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"0x%.16llX\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE = common dso_local global i32 0, align 4
@FM_EREPORT_PAYLOAD_ZFS_VDEV_LASTSTATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%s_str\00", align 1
@VDEV_AUX_NONE = common dso_local global i32 0, align 4
@FM_EREPORT_PAYLOAD_ZFS_POOL_STATE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"_NOT_IMPLEMENTED_\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [65 x i8] c"Failed to convert nvpair \22%s\22 for eid=%llu: Unrecognized type=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @_zed_event_add_nvpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_zed_event_add_nvpair(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [32 x i8], align 16
  %18 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load i8*, i8** @ZEVENT_VAR_PREFIX, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @nvpair_name(i32* %28)
  store i8* %29, i8** %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @nvpair_type(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %296 [
    i32 154, label %33
    i32 152, label %39
    i32 151, label %51
    i32 141, label %60
    i32 129, label %70
    i32 147, label %79
    i32 135, label %89
    i32 145, label %98
    i32 133, label %108
    i32 143, label %117
    i32 131, label %128
    i32 149, label %183
    i32 148, label %192
    i32 139, label %203
    i32 137, label %209
    i32 153, label %224
    i32 150, label %230
    i32 140, label %236
    i32 128, label %242
    i32 146, label %248
    i32 134, label %254
    i32 144, label %260
    i32 132, label %266
    i32 142, label %272
    i32 130, label %278
    i32 136, label %284
    i32 138, label %290
  ]

33:                                               ; preds = %3
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %34, i32* %35, i8* %36, i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %303

39:                                               ; preds = %3
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @nvpair_value_boolean_value(i32* %40, i32* %10)
  %42 = load i32, i32* %4, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %42, i32* %43, i8* %44, i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %303

51:                                               ; preds = %3
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @nvpair_value_byte(i32* %52, i8** %12)
  %54 = load i32, i32* %4, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %54, i32* %55, i8* %56, i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %303

60:                                               ; preds = %3
  %61 = load i32*, i32** %6, align 8
  %62 = bitcast i8** %12 to i32*
  %63 = call i32 @nvpair_value_int8(i32* %61, i32* %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %64, i32* %65, i8* %66, i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %303

70:                                               ; preds = %3
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @nvpair_value_uint8(i32* %71, i8** %12)
  %73 = load i32, i32* %4, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %73, i32* %74, i8* %75, i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  br label %303

79:                                               ; preds = %3
  %80 = load i32*, i32** %6, align 8
  %81 = bitcast i8** %13 to i32*
  %82 = call i32 @nvpair_value_int16(i32* %80, i32* %81)
  %83 = load i32, i32* %4, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %83, i32* %84, i8* %85, i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  br label %303

89:                                               ; preds = %3
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @nvpair_value_uint16(i32* %90, i8** %13)
  %92 = load i32, i32* %4, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %92, i32* %93, i8* %94, i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %303

98:                                               ; preds = %3
  %99 = load i32*, i32** %6, align 8
  %100 = bitcast i8** %14 to i32*
  %101 = call i32 @nvpair_value_int32(i32* %99, i32* %100)
  %102 = load i32, i32* %4, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %102, i32* %103, i8* %104, i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  br label %303

108:                                              ; preds = %3
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @nvpair_value_uint32(i32* %109, i8** %14)
  %111 = load i32, i32* %4, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %111, i32* %112, i8* %113, i8* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %115)
  br label %303

117:                                              ; preds = %3
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @nvpair_value_int64(i32* %118, i32* %15)
  %120 = load i32, i32* %4, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %120, i32* %121, i8* %122, i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %126)
  br label %303

128:                                              ; preds = %3
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @nvpair_value_uint64(i32* %129, i32* %15)
  %131 = load i32, i32* %4, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @_zed_event_value_is_hex(i8* %135)
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %131, i32* %132, i8* %133, i8* %134, i8* %139, i8* %142)
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE, align 4
  %146 = call i32 @strcmp(i8* %144, i32 %145)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %128
  %149 = load i8*, i8** %7, align 8
  %150 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_LASTSTATE, align 4
  %151 = call i32 @strcmp(i8* %149, i32 %150)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148, %128
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @snprintf(i8* %154, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %155)
  %157 = load i32, i32* %4, align 4
  %158 = load i32*, i32** %5, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* @VDEV_AUX_NONE, align 4
  %163 = call i8* @zpool_state_to_name(i32 %161, i32 %162)
  %164 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %157, i32* %158, i8* %159, i8* %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %163)
  br label %182

165:                                              ; preds = %148
  %166 = load i8*, i8** %7, align 8
  %167 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_POOL_STATE, align 4
  %168 = call i32 @strcmp(i8* %166, i32 %167)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %165
  %171 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @snprintf(i8* %171, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* %4, align 4
  %175 = load i32*, i32** %5, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %178 = load i32, i32* %15, align 4
  %179 = call i8* @zpool_pool_state_to_name(i32 %178)
  %180 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %174, i32* %175, i8* %176, i8* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %170, %165
  br label %182

182:                                              ; preds = %181, %153
  br label %303

183:                                              ; preds = %3
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @nvpair_value_double(i32* %184, double* %11)
  %186 = load i32, i32* %4, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = load i8*, i8** %9, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = load double, double* %11, align 8
  %191 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %186, i32* %187, i8* %188, i8* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), double %190)
  br label %303

192:                                              ; preds = %3
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 @nvpair_value_hrtime(i32* %193, i32* %15)
  %195 = load i32, i32* %4, align 4
  %196 = load i32*, i32** %5, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i8*
  %202 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %195, i32* %196, i8* %197, i8* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %201)
  br label %303

203:                                              ; preds = %3
  %204 = load i32, i32* %4, align 4
  %205 = load i32*, i32** %5, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %204, i32* %205, i8* %206, i8* %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %303

209:                                              ; preds = %3
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @nvpair_value_string(i32* %210, i8** %16)
  %212 = load i32, i32* %4, align 4
  %213 = load i32*, i32** %5, align 8
  %214 = load i8*, i8** %9, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = load i8*, i8** %16, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = load i8*, i8** %16, align 8
  br label %221

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220, %218
  %222 = phi i8* [ %219, %218 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %220 ]
  %223 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %212, i32* %213, i8* %214, i8* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %222)
  br label %303

224:                                              ; preds = %3
  %225 = load i32, i32* %4, align 4
  %226 = load i32*, i32** %5, align 8
  %227 = load i8*, i8** %9, align 8
  %228 = load i8*, i8** %7, align 8
  %229 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %225, i32* %226, i8* %227, i8* %228, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %303

230:                                              ; preds = %3
  %231 = load i32, i32* %4, align 4
  %232 = load i32*, i32** %5, align 8
  %233 = load i8*, i8** %9, align 8
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %231, i32* %232, i8* %233, i8* %234, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %303

236:                                              ; preds = %3
  %237 = load i32, i32* %4, align 4
  %238 = load i32*, i32** %5, align 8
  %239 = load i8*, i8** %9, align 8
  %240 = load i32*, i32** %6, align 8
  %241 = call i32 @_zed_event_add_int8_array(i32 %237, i32* %238, i8* %239, i32* %240)
  br label %303

242:                                              ; preds = %3
  %243 = load i32, i32* %4, align 4
  %244 = load i32*, i32** %5, align 8
  %245 = load i8*, i8** %9, align 8
  %246 = load i32*, i32** %6, align 8
  %247 = call i32 @_zed_event_add_uint8_array(i32 %243, i32* %244, i8* %245, i32* %246)
  br label %303

248:                                              ; preds = %3
  %249 = load i32, i32* %4, align 4
  %250 = load i32*, i32** %5, align 8
  %251 = load i8*, i8** %9, align 8
  %252 = load i32*, i32** %6, align 8
  %253 = call i32 @_zed_event_add_int16_array(i32 %249, i32* %250, i8* %251, i32* %252)
  br label %303

254:                                              ; preds = %3
  %255 = load i32, i32* %4, align 4
  %256 = load i32*, i32** %5, align 8
  %257 = load i8*, i8** %9, align 8
  %258 = load i32*, i32** %6, align 8
  %259 = call i32 @_zed_event_add_uint16_array(i32 %255, i32* %256, i8* %257, i32* %258)
  br label %303

260:                                              ; preds = %3
  %261 = load i32, i32* %4, align 4
  %262 = load i32*, i32** %5, align 8
  %263 = load i8*, i8** %9, align 8
  %264 = load i32*, i32** %6, align 8
  %265 = call i32 @_zed_event_add_int32_array(i32 %261, i32* %262, i8* %263, i32* %264)
  br label %303

266:                                              ; preds = %3
  %267 = load i32, i32* %4, align 4
  %268 = load i32*, i32** %5, align 8
  %269 = load i8*, i8** %9, align 8
  %270 = load i32*, i32** %6, align 8
  %271 = call i32 @_zed_event_add_uint32_array(i32 %267, i32* %268, i8* %269, i32* %270)
  br label %303

272:                                              ; preds = %3
  %273 = load i32, i32* %4, align 4
  %274 = load i32*, i32** %5, align 8
  %275 = load i8*, i8** %9, align 8
  %276 = load i32*, i32** %6, align 8
  %277 = call i32 @_zed_event_add_int64_array(i32 %273, i32* %274, i8* %275, i32* %276)
  br label %303

278:                                              ; preds = %3
  %279 = load i32, i32* %4, align 4
  %280 = load i32*, i32** %5, align 8
  %281 = load i8*, i8** %9, align 8
  %282 = load i32*, i32** %6, align 8
  %283 = call i32 @_zed_event_add_uint64_array(i32 %279, i32* %280, i8* %281, i32* %282)
  br label %303

284:                                              ; preds = %3
  %285 = load i32, i32* %4, align 4
  %286 = load i32*, i32** %5, align 8
  %287 = load i8*, i8** %9, align 8
  %288 = load i32*, i32** %6, align 8
  %289 = call i32 @_zed_event_add_string_array(i32 %285, i32* %286, i8* %287, i32* %288)
  br label %303

290:                                              ; preds = %3
  %291 = load i32, i32* %4, align 4
  %292 = load i32*, i32** %5, align 8
  %293 = load i8*, i8** %9, align 8
  %294 = load i8*, i8** %7, align 8
  %295 = call i32 (i32, i32*, i8*, i8*, i8*, ...) @_zed_event_add_var(i32 %291, i32* %292, i8* %293, i8* %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %303

296:                                              ; preds = %3
  %297 = load i32, i32* @EINVAL, align 4
  store i32 %297, i32* @errno, align 4
  %298 = load i32, i32* @LOG_WARNING, align 4
  %299 = load i8*, i8** %7, align 8
  %300 = load i32, i32* %4, align 4
  %301 = load i32, i32* %8, align 4
  %302 = call i32 @zed_log_msg(i32 %298, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i8* %299, i32 %300, i32 %301)
  br label %303

303:                                              ; preds = %296, %290, %284, %278, %272, %266, %260, %254, %248, %242, %236, %230, %224, %221, %203, %192, %183, %182, %117, %108, %98, %89, %79, %70, %60, %51, %39, %33
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @_zed_event_add_var(i32, i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @nvpair_value_boolean_value(i32*, i32*) #1

declare dso_local i32 @nvpair_value_byte(i32*, i8**) #1

declare dso_local i32 @nvpair_value_int8(i32*, i32*) #1

declare dso_local i32 @nvpair_value_uint8(i32*, i8**) #1

declare dso_local i32 @nvpair_value_int16(i32*, i32*) #1

declare dso_local i32 @nvpair_value_uint16(i32*, i8**) #1

declare dso_local i32 @nvpair_value_int32(i32*, i32*) #1

declare dso_local i32 @nvpair_value_uint32(i32*, i8**) #1

declare dso_local i32 @nvpair_value_int64(i32*, i32*) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i32*) #1

declare dso_local i32 @_zed_event_value_is_hex(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @zpool_state_to_name(i32, i32) #1

declare dso_local i8* @zpool_pool_state_to_name(i32) #1

declare dso_local i32 @nvpair_value_double(i32*, double*) #1

declare dso_local i32 @nvpair_value_hrtime(i32*, i32*) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @_zed_event_add_int8_array(i32, i32*, i8*, i32*) #1

declare dso_local i32 @_zed_event_add_uint8_array(i32, i32*, i8*, i32*) #1

declare dso_local i32 @_zed_event_add_int16_array(i32, i32*, i8*, i32*) #1

declare dso_local i32 @_zed_event_add_uint16_array(i32, i32*, i8*, i32*) #1

declare dso_local i32 @_zed_event_add_int32_array(i32, i32*, i8*, i32*) #1

declare dso_local i32 @_zed_event_add_uint32_array(i32, i32*, i8*, i32*) #1

declare dso_local i32 @_zed_event_add_int64_array(i32, i32*, i8*, i32*) #1

declare dso_local i32 @_zed_event_add_uint64_array(i32, i32*, i8*, i32*) #1

declare dso_local i32 @_zed_event_add_string_array(i32, i32*, i8*, i32*) #1

declare dso_local i32 @zed_log_msg(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
