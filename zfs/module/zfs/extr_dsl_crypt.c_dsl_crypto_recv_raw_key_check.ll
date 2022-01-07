; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_recv_raw_key_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_recv_raw_key_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@DS_FLAG_INCONSISTENT = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_CRYPTO_SUITE = common dso_local global i32 0, align 4
@ZIO_CRYPT_FUNCTIONS = common dso_local global i64 0, align 8
@ZIO_CRYPT_OFF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_GUID = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_MASTER_KEY = common dso_local global i32 0, align 4
@MASTER_KEY_MAX_LEN = common dso_local global i64 0, align 8
@DSL_CRYPTO_KEY_HMAC_KEY = common dso_local global i32 0, align 4
@SHA512_HMAC_KEYLEN = common dso_local global i64 0, align 8
@DSL_CRYPTO_KEY_IV = common dso_local global i32 0, align 4
@WRAPPING_IV_LEN = common dso_local global i64 0, align 8
@DSL_CRYPTO_KEY_MAC = common dso_local global i32 0, align 4
@WRAPPING_MAC_LEN = common dso_local global i64 0, align 8
@DSL_CRYPTO_KEY_VERSION = common dso_local global i32 0, align 4
@ZIO_CRYPT_KEY_CURRENT_VERSION = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_KEYFORMAT_FORMATS = common dso_local global i64 0, align 8
@ZFS_KEYFORMAT_NONE = common dso_local global i64 0, align 8
@ZFS_KEYFORMAT_PASSPHRASE = common dso_local global i64 0, align 8
@ZFS_PROP_PBKDF2_ITERS = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_SALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_crypto_recv_raw_key_check(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %21 = load i32, i32* @B_FALSE, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = call %struct.TYPE_13__* @dsl_dataset_phys(%struct.TYPE_11__* %22)
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DS_FLAG_INCONSISTENT, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @DSL_CRYPTO_KEY_CRYPTO_SUITE, align 4
  %31 = call i32 @nvlist_lookup_uint64(i32* %29, i32 %30, i64* %12)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %3
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @ZIO_CRYPT_FUNCTIONS, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @ZIO_CRYPT_OFF, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34, %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = call i32 @SET_ERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %202

45:                                               ; preds = %38
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @DSL_CRYPTO_KEY_GUID, align 4
  %48 = call i32 @nvlist_lookup_uint64(i32* %46, i32 %47, i64* %12)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @SET_ERROR(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %202

54:                                               ; preds = %45
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %54
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DSL_CRYPTO_KEY_GUID, align 4
  %69 = call i32 @zap_lookup(i32* %62, i32 %67, i32 %68, i32 8, i32 1, i64* %13)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %202

74:                                               ; preds = %61
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @EACCES, align 4
  %80 = call i32 @SET_ERROR(i32 %79)
  store i32 %80, i32* %4, align 4
  br label %202

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %54
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @DSL_CRYPTO_KEY_MASTER_KEY, align 4
  %85 = call i32 @nvlist_lookup_uint8_array(i32* %83, i32 %84, i32** %10, i64* %11)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* @MASTER_KEY_MAX_LEN, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88, %82
  %93 = load i32, i32* @EINVAL, align 4
  %94 = call i32 @SET_ERROR(i32 %93)
  store i32 %94, i32* %4, align 4
  br label %202

95:                                               ; preds = %88
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @DSL_CRYPTO_KEY_HMAC_KEY, align 4
  %98 = call i32 @nvlist_lookup_uint8_array(i32* %96, i32 %97, i32** %10, i64* %11)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @SHA512_HMAC_KEYLEN, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101, %95
  %106 = load i32, i32* @EINVAL, align 4
  %107 = call i32 @SET_ERROR(i32 %106)
  store i32 %107, i32* %4, align 4
  br label %202

108:                                              ; preds = %101
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* @DSL_CRYPTO_KEY_IV, align 4
  %111 = call i32 @nvlist_lookup_uint8_array(i32* %109, i32 %110, i32** %10, i64* %11)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* @WRAPPING_IV_LEN, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114, %108
  %119 = load i32, i32* @EINVAL, align 4
  %120 = call i32 @SET_ERROR(i32 %119)
  store i32 %120, i32* %4, align 4
  br label %202

121:                                              ; preds = %114
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* @DSL_CRYPTO_KEY_MAC, align 4
  %124 = call i32 @nvlist_lookup_uint8_array(i32* %122, i32 %123, i32** %10, i64* %11)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* @WRAPPING_MAC_LEN, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127, %121
  %132 = load i32, i32* @EINVAL, align 4
  %133 = call i32 @SET_ERROR(i32 %132)
  store i32 %133, i32* %4, align 4
  br label %202

134:                                              ; preds = %127
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* @DSL_CRYPTO_KEY_VERSION, align 4
  %137 = call i32 @nvlist_lookup_uint64(i32* %135, i32 %136, i64* %14)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %134
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* @ZIO_CRYPT_KEY_CURRENT_VERSION, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140, %134
  %145 = load i32, i32* @ENOTSUP, align 4
  %146 = call i32 @SET_ERROR(i32 %145)
  store i32 %146, i32* %4, align 4
  br label %202

147:                                              ; preds = %140
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %150 = call i32 @zfs_prop_to_name(i32 %149)
  %151 = call i32 @nvlist_lookup_uint64(i32* %148, i32 %150, i64* %12)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %147
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* @ZFS_KEYFORMAT_FORMATS, align 8
  %157 = icmp sge i64 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158, %154, %147
  %163 = load i32, i32* @EINVAL, align 4
  %164 = call i32 @SET_ERROR(i32 %163)
  store i32 %164, i32* %4, align 4
  br label %202

165:                                              ; preds = %158
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* @ZFS_KEYFORMAT_PASSPHRASE, align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %15, align 4
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %172 = call i32 @zfs_prop_to_name(i32 %171)
  %173 = call i32 @nvlist_lookup_uint64(i32* %170, i32 %172, i64* %12)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %165
  %177 = load i32, i32* %15, align 4
  %178 = load i64, i64* %12, align 8
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = icmp eq i32 %177, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176, %165
  %183 = load i32, i32* @EINVAL, align 4
  %184 = call i32 @SET_ERROR(i32 %183)
  store i32 %184, i32* %4, align 4
  br label %202

185:                                              ; preds = %176
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* @ZFS_PROP_PBKDF2_SALT, align 4
  %188 = call i32 @zfs_prop_to_name(i32 %187)
  %189 = call i32 @nvlist_lookup_uint64(i32* %186, i32 %188, i64* %12)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %15, align 4
  %194 = load i64, i64* %12, align 8
  %195 = icmp eq i64 %194, 0
  %196 = zext i1 %195 to i32
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192, %185
  %199 = load i32, i32* @EINVAL, align 4
  %200 = call i32 @SET_ERROR(i32 %199)
  store i32 %200, i32* %4, align 4
  br label %202

201:                                              ; preds = %192
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %201, %198, %182, %162, %144, %131, %118, %105, %92, %78, %72, %51, %42
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_13__* @dsl_dataset_phys(%struct.TYPE_11__*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @nvlist_lookup_uint8_array(i32*, i32, i32**, i64*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
