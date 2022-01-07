; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_do_import.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_do_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"cannot import '%s': pool is formatted using an unsupported ZFS version\0A\00", align 1
@ZFS_IMPORT_ANY_HOST = common dso_local global i32 0, align 4
@MMP_STATE_INACTIVE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_STATE = common dso_local global i32 0, align 4
@MMP_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@ZPOOL_CONFIG_MMP_HOSTNAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_HOSTID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [122 x i8] c"cannot import '%s': pool is imported on %s (hostid: 0x%lx)\0AExport the pool on the other system, then run 'zpool import'.\0A\00", align 1
@MMP_STATE_NO_HOSTID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [144 x i8] c"Cannot import '%s': pool has the multihost property on and the\0Asystem's hostid is not set. Set a unique hostid with the zgenhostid(8) command.\0A\00", align 1
@ZPOOL_CONFIG_HOSTNAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TIMESTAMP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [175 x i8] c"cannot import '%s': pool was previously in use from another system.\0ALast accessed by %s (hostid=%lx) at %sThe pool can be imported, use 'zpool import -f' to import the pool.\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_IMPORT_LOAD_KEYS = common dso_local global i32 0, align 4
@POOL_STATE_UNAVAIL = common dso_local global i64 0, align 8
@ZFS_IMPORT_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32*, i32)* @do_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_import(i32* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %25 = call i8* @fnvlist_lookup_string(i32* %23, i32 %24)
  store i8* %25, i8** %14, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %28 = call i8* @fnvlist_lookup_uint64(i32* %26, i32 %27)
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call i32 @SPA_VERSION_IS_SUPPORTED(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @stderr, align 4
  %34 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %33, i8* %34, i8* %35)
  store i32 1, i32* %6, align 4
  br label %194

37:                                               ; preds = %5
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @zfs_force_import_required(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %138

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @ZFS_IMPORT_ANY_HOST, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %138, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @MMP_STATE_INACTIVE, align 8
  store i64 %47, i64* %16, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %50 = call i32* @fnvlist_lookup_nvlist(i32* %48, i32 %49)
  store i32* %50, i32** %17, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = load i32, i32* @ZPOOL_CONFIG_MMP_STATE, align 4
  %53 = call i64 @nvlist_exists(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* @ZPOOL_CONFIG_MMP_STATE, align 4
  %58 = call i8* @fnvlist_lookup_uint64(i32* %56, i32 %57)
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %16, align 8
  br label %60

60:                                               ; preds = %55, %46
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* @MMP_STATE_ACTIVE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  store i8* null, i8** %19, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTNAME, align 4
  %67 = call i64 @nvlist_exists(i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32*, i32** %17, align 8
  %71 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTNAME, align 4
  %72 = call i8* @fnvlist_lookup_string(i32* %70, i32 %71)
  store i8* %72, i8** %18, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32*, i32** %17, align 8
  %75 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTID, align 4
  %76 = call i64 @nvlist_exists(i32* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32*, i32** %17, align 8
  %80 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTID, align 4
  %81 = call i8* @fnvlist_lookup_uint64(i32* %79, i32 %80)
  store i8* %81, i8** %19, align 8
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32, i32* @stderr, align 4
  %84 = call i8* @gettext(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i8*, i8** %14, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %83, i8* %84, i8* %85, i8* %86, i64 %88)
  br label %137

90:                                               ; preds = %60
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* @MMP_STATE_NO_HOSTID, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* @stderr, align 4
  %96 = call i8* @gettext(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i8*, i8** %14, align 8
  %98 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %95, i8* %96, i8* %97)
  br label %136

99:                                               ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @ZPOOL_CONFIG_HOSTNAME, align 4
  %102 = call i64 @nvlist_exists(i32* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @ZPOOL_CONFIG_HOSTNAME, align 4
  %107 = call i8* @fnvlist_lookup_string(i32* %105, i32 %106)
  store i8* %107, i8** %20, align 8
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* @ZPOOL_CONFIG_TIMESTAMP, align 4
  %111 = call i64 @nvlist_exists(i32* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* @ZPOOL_CONFIG_TIMESTAMP, align 4
  %116 = call i8* @fnvlist_lookup_uint64(i32* %114, i32 %115)
  store i8* %116, i8** %21, align 8
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %120 = call i64 @nvlist_exists(i32* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %125 = call i8* @fnvlist_lookup_uint64(i32* %123, i32 %124)
  store i8* %125, i8** %22, align 8
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* @stderr, align 4
  %128 = call i8* @gettext(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i8*, i8** %14, align 8
  %130 = load i8*, i8** %20, align 8
  %131 = load i8*, i8** %22, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = bitcast i8** %21 to i32*
  %134 = call i32 @ctime(i32* %133)
  %135 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %127, i8* %128, i8* %129, i8* %130, i64 %132, i32 %134)
  br label %136

136:                                              ; preds = %126, %94
  br label %137

137:                                              ; preds = %136, %82
  store i32 1, i32* %6, align 4
  br label %194

138:                                              ; preds = %41, %37
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* @g_zfs, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i64 @zpool_import_props(i32 %140, i32* %141, i8* %142, i32* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store i32 1, i32* %6, align 4
  br label %194

148:                                              ; preds = %139
  %149 = load i8*, i8** %8, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i8*, i8** %8, align 8
  store i8* %152, i8** %14, align 8
  br label %153

153:                                              ; preds = %151, %148
  %154 = load i32, i32* @g_zfs, align 4
  %155 = load i8*, i8** %14, align 8
  %156 = call i32* @zpool_open_canfail(i32 %154, i8* %155)
  store i32* %156, i32** %13, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i32 1, i32* %6, align 4
  br label %194

159:                                              ; preds = %153
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @ZFS_IMPORT_LOAD_KEYS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load i32, i32* @g_zfs, align 4
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 @zfs_crypto_attempt_load_keys(i32 %165, i8* %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32 1, i32* %12, align 4
  br label %171

171:                                              ; preds = %170, %164
  br label %172

172:                                              ; preds = %171, %159
  %173 = load i32*, i32** %13, align 8
  %174 = call i64 @zpool_get_state(i32* %173)
  %175 = load i64, i64* @POOL_STATE_UNAVAIL, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %172
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @ZFS_IMPORT_ONLY, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %177
  %183 = load i32*, i32** %13, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = call i64 @zpool_enable_datasets(i32* %183, i8* %184, i32 0)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32*, i32** %13, align 8
  %189 = call i32 @zpool_close(i32* %188)
  store i32 1, i32* %6, align 4
  br label %194

190:                                              ; preds = %182, %177, %172
  %191 = load i32*, i32** %13, align 8
  %192 = call i32 @zpool_close(i32* %191)
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %190, %187, %158, %147, %137, %32
  %195 = load i32, i32* %6, align 4
  ret i32 %195
}

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i8* @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i64 @zfs_force_import_required(i32*) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i32 @ctime(i32*) #1

declare dso_local i64 @zpool_import_props(i32, i32*, i8*, i32*, i32) #1

declare dso_local i32* @zpool_open_canfail(i32, i8*) #1

declare dso_local i32 @zfs_crypto_attempt_load_keys(i32, i8*) #1

declare dso_local i64 @zpool_get_state(i32*) #1

declare dso_local i64 @zpool_enable_datasets(i32*, i8*, i32) #1

declare dso_local i32 @zpool_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
