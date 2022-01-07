; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_create.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ZIO_CRYPT_INHERIT = common dso_local global i64 0, align 8
@ZFS_KEYFORMAT_NONE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Encryption create error\00", align 1
@ZFS_PROP_ENCRYPTION = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to lookup parent.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Encryption feature not enabled.\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"feature@encryption\00", align 1
@ZIO_CRYPT_OFF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"Encryption must be turned on to set encryption properties.\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Keyformat required for new encryption root.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Cannot use 'prompt' keylocation because stdin is in use.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_crypto_create(i32* %0, i8* %1, i32* %2, i32* %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_5__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %26 = load i64, i64* @ZIO_CRYPT_INHERIT, align 8
  store i64 %26, i64* %18, align 8
  %27 = load i64, i64* @ZIO_CRYPT_INHERIT, align 8
  store i64 %27, i64* %19, align 8
  %28 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  store i64 %28, i64* %20, align 8
  store i8* null, i8** %21, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %22, align 8
  store i32* null, i32** %23, align 8
  store i32 0, i32* %24, align 4
  %29 = load i32, i32* @B_TRUE, align 4
  store i32 %29, i32* %25, align 4
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %31 = load i32, i32* @TEXT_DOMAIN, align 4
  %32 = call i8* @dgettext(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @snprintf(i8* %30, i32 1024, i8* %32)
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %36 = call i32 @zfs_prop_to_name(i32 %35)
  %37 = call i32 @nvlist_lookup_uint64(i32* %34, i32 %36, i64* %18)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %7
  %41 = load i32, i32* @B_FALSE, align 4
  store i32 %41, i32* %25, align 4
  br label %42

42:                                               ; preds = %40, %7
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %45 = call i32 @zfs_prop_to_name(i32 %44)
  %46 = call i32 @nvlist_lookup_uint64(i32* %43, i32 %45, i64* %20)
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %49 = call i32 @zfs_prop_to_name(i32 %48)
  %50 = call i32 @nvlist_lookup_string(i32* %47, i32 %49, i8** %21)
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %86

53:                                               ; preds = %42
  %54 = load i32*, i32** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call %struct.TYPE_5__* @make_dataset_handle(i32* %54, i8* %55)
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %22, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %58 = icmp eq %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOENT, align 4
  store i32 %60, i32* %16, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* @TEXT_DOMAIN, align 4
  %63 = call i8* @dgettext(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @zfs_error_aux(i32* %61, i8* %63)
  br label %208

65:                                               ; preds = %53
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %67 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %68 = call i64 @zfs_prop_get_int(%struct.TYPE_5__* %66, i32 %67)
  store i64 %68, i64* %19, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @encryption_feature_is_enabled(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %65
  %75 = load i32*, i32** %11, align 8
  %76 = call i64 @proplist_has_encryption_props(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %16, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* @TEXT_DOMAIN, align 4
  %82 = call i8* @dgettext(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 @zfs_error_aux(i32* %80, i8* %82)
  br label %208

84:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  br label %208

85:                                               ; preds = %65
  br label %103

86:                                               ; preds = %42
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @nvlist_exists(i32* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %86
  %91 = load i32*, i32** %11, align 8
  %92 = call i64 @proplist_has_encryption_props(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %16, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* @TEXT_DOMAIN, align 4
  %98 = call i8* @dgettext(i32 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i32 @zfs_error_aux(i32* %96, i8* %98)
  br label %208

100:                                              ; preds = %90
  store i32 0, i32* %16, align 4
  br label %208

101:                                              ; preds = %86
  %102 = load i64, i64* @ZIO_CRYPT_OFF, align 8
  store i64 %102, i64* %19, align 8
  br label %103

103:                                              ; preds = %101, %85
  %104 = load i32, i32* %25, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %19, align 8
  store i64 %107, i64* %18, align 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* @ZIO_CRYPT_OFF, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load i32*, i32** %11, align 8
  %114 = call i64 @proplist_has_encryption_props(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %16, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* @TEXT_DOMAIN, align 4
  %120 = call i8* @dgettext(i32 %119, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %121 = call i32 @zfs_error_aux(i32* %118, i8* %120)
  br label %208

122:                                              ; preds = %112
  store i32 0, i32* %16, align 4
  br label %208

123:                                              ; preds = %108
  %124 = load i64, i64* %19, align 8
  %125 = load i64, i64* @ZIO_CRYPT_OFF, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = load i8*, i8** %21, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %16, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* @TEXT_DOMAIN, align 4
  %138 = call i8* @dgettext(i32 %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %139 = call i32 @zfs_error_aux(i32* %136, i8* %138)
  br label %208

140:                                              ; preds = %130, %127, %123
  %141 = load i8*, i8** %21, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i32, i32* @EINVAL, align 4
  store i32 %148, i32* %16, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* @TEXT_DOMAIN, align 4
  %151 = call i8* @dgettext(i32 %150, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %152 = call i32 @zfs_error_aux(i32* %149, i8* %151)
  br label %208

153:                                              ; preds = %143, %140
  %154 = load i64, i64* %20, align 8
  %155 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %153
  %158 = load i8*, i8** %21, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %21, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %163 = call i32 @zfs_prop_to_name(i32 %162)
  %164 = load i8*, i8** %21, align 8
  %165 = call i32 @nvlist_add_string(i32* %161, i32 %163, i8* %164)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %208

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %157, %153
  %171 = load i8*, i8** %21, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %197

173:                                              ; preds = %170
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %173
  %177 = load i8*, i8** %21, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load i32, i32* @EINVAL, align 4
  store i32 %181, i32* %16, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* @TEXT_DOMAIN, align 4
  %184 = call i8* @dgettext(i32 %183, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %185 = call i32 @zfs_error_aux(i32* %182, i8* %184)
  br label %208

186:                                              ; preds = %176, %173
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* @B_FALSE, align 4
  %189 = load i64, i64* %20, align 8
  %190 = load i8*, i8** %21, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = call i32 @populate_create_encryption_params_nvlists(i32* %187, i32* null, i32 %188, i64 %189, i8* %190, i32* %191, i32** %23, i32* %24)
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  br label %208

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %196, %170
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %199 = icmp ne %struct.TYPE_5__* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %202 = call i32 @zfs_close(%struct.TYPE_5__* %201)
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i32*, i32** %23, align 8
  %205 = load i32**, i32*** %14, align 8
  store i32* %204, i32** %205, align 8
  %206 = load i32, i32* %24, align 4
  %207 = load i32*, i32** %15, align 8
  store i32 %206, i32* %207, align 4
  store i32 0, i32* %8, align 4
  br label %224

208:                                              ; preds = %195, %180, %168, %147, %134, %122, %116, %100, %94, %84, %78, %59
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %210 = icmp ne %struct.TYPE_5__* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %213 = call i32 @zfs_close(%struct.TYPE_5__* %212)
  br label %214

214:                                              ; preds = %211, %208
  %215 = load i32*, i32** %23, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32*, i32** %23, align 8
  %219 = call i32 @free(i32* %218)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32**, i32*** %14, align 8
  store i32* null, i32** %221, align 8
  %222 = load i32*, i32** %15, align 8
  store i32 0, i32* %222, align 4
  %223 = load i32, i32* %16, align 4
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %220, %203
  %225 = load i32, i32* %8, align 4
  ret i32 %225
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local %struct.TYPE_5__* @make_dataset_handle(i32*, i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*) #1

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @encryption_feature_is_enabled(i32) #1

declare dso_local i64 @proplist_has_encryption_props(i32*) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @populate_create_encryption_params_nvlists(i32*, i32*, i32, i64, i8*, i32*, i32**, i32*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_5__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
