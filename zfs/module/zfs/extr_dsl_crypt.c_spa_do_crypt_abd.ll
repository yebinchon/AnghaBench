; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_do_crypt_abd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_do_crypt_abd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SPA_FEATURE_ENCRYPTION = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DMU_OT_INTENT_LOG = common dso_local global i32 0, align 4
@zio_injection_enabled = common dso_local global i64 0, align 8
@DMU_OT_DNODE = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@ZIO_DATA_SALT_LEN = common dso_local global i32 0, align 4
@ZIO_DATA_IV_LEN = common dso_local global i32 0, align 4
@ZIO_DATA_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_do_crypt_abd(i64 %0, i32* %1, %struct.TYPE_7__* %2, i32 %3, i64 %4, i64 %5, i32* %6, i32* %7, i32* %8, i32 %9, i32* %10, i32* %11, i64* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_8__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  store i64 %0, i64* %15, align 8
  store i32* %1, i32** %16, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %17, align 8
  store i32 %3, i32* %18, align 4
  store i64 %4, i64* %19, align 8
  store i64 %5, i64* %20, align 8
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32 %9, i32* %24, align 4
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i64* %12, i64** %27, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %29, align 8
  store i32* null, i32** %30, align 8
  store i32* null, i32** %31, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* @SPA_FEATURE_ENCRYPTION, align 4
  %34 = call i32 @spa_feature_is_active(i32* %32, i32 %33)
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32*, i32** %16, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FTAG, align 4
  %41 = call i32 @spa_keystore_lookup_key(i32* %36, i32 %39, i32 %40, %struct.TYPE_8__** %29)
  store i32 %41, i32* %28, align 4
  %42 = load i32, i32* %28, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %13
  %45 = load i32, i32* @EACCES, align 4
  %46 = call i32 @SET_ERROR(i32 %45)
  store i32 %46, i32* %28, align 4
  %47 = load i32, i32* %28, align 4
  store i32 %47, i32* %14, align 4
  br label %207

48:                                               ; preds = %13
  %49 = load i64, i64* %15, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32*, i32** %25, align 8
  %53 = load i32, i32* %24, align 4
  %54 = call i32* @abd_borrow_buf_copy(i32* %52, i32 %53)
  store i32* %54, i32** %30, align 8
  %55 = load i32*, i32** %26, align 8
  %56 = load i32, i32* %24, align 4
  %57 = call i32* @abd_borrow_buf(i32* %55, i32 %56)
  store i32* %57, i32** %31, align 8
  br label %65

58:                                               ; preds = %48
  %59 = load i32*, i32** %25, align 8
  %60 = load i32, i32* %24, align 4
  %61 = call i32* @abd_borrow_buf(i32* %59, i32 %60)
  store i32* %61, i32** %30, align 8
  %62 = load i32*, i32** %26, align 8
  %63 = load i32, i32* %24, align 4
  %64 = call i32* @abd_borrow_buf_copy(i32* %62, i32 %63)
  store i32* %64, i32** %31, align 8
  br label %65

65:                                               ; preds = %58, %51
  %66 = load i64, i64* %15, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* @DMU_OT_INTENT_LOG, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i64, i64* %19, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %21, align 8
  %79 = call i32 @zio_crypt_key_get_salt(i32* %77, i32* %78)
  store i32 %79, i32* %28, align 4
  %80 = load i32, i32* %28, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %171

83:                                               ; preds = %75
  %84 = load i32*, i32** %22, align 8
  %85 = call i32 @zio_crypt_generate_iv(i32* %84)
  store i32 %85, i32* %28, align 4
  %86 = load i32, i32* %28, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %171

89:                                               ; preds = %83
  br label %109

90:                                               ; preds = %72, %68, %65
  %91 = load i64, i64* %15, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = load i64, i64* %19, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32*, i32** %30, align 8
  %100 = load i32, i32* %24, align 4
  %101 = load i32*, i32** %22, align 8
  %102 = load i32*, i32** %21, align 8
  %103 = call i32 @zio_crypt_generate_iv_salt_dedup(i32* %98, i32* %99, i32 %100, i32* %101, i32* %102)
  store i32 %103, i32* %28, align 4
  %104 = load i32, i32* %28, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %171

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %93, %90
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i64, i64* %15, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %18, align 4
  %114 = load i64, i64* %20, align 8
  %115 = load i32*, i32** %21, align 8
  %116 = load i32*, i32** %22, align 8
  %117 = load i32*, i32** %23, align 8
  %118 = load i32, i32* %24, align 4
  %119 = load i32*, i32** %30, align 8
  %120 = load i32*, i32** %31, align 8
  %121 = load i64*, i64** %27, align 8
  %122 = call i32 @zio_do_crypt_data(i64 %110, i32* %112, i32 %113, i64 %114, i32* %115, i32* %116, i32* %117, i32 %118, i32* %119, i32* %120, i64* %121)
  store i32 %122, i32* %28, align 4
  %123 = load i64, i64* @zio_injection_enabled, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %109
  %126 = load i64, i64* %15, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* @DMU_OT_DNODE, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load i32, i32* %28, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32*, i32** %16, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* @ECKSUM, align 4
  %140 = call i32 @zio_handle_decrypt_injection(i32* %136, %struct.TYPE_7__* %137, i32 %138, i32 %139)
  store i32 %140, i32* %28, align 4
  br label %141

141:                                              ; preds = %135, %132, %128, %125, %109
  %142 = load i32, i32* %28, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %171

145:                                              ; preds = %141
  %146 = load i64, i64* %15, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32*, i32** %25, align 8
  %150 = load i32*, i32** %30, align 8
  %151 = load i32, i32* %24, align 4
  %152 = call i32 @abd_return_buf(i32* %149, i32* %150, i32 %151)
  %153 = load i32*, i32** %26, align 8
  %154 = load i32*, i32** %31, align 8
  %155 = load i32, i32* %24, align 4
  %156 = call i32 @abd_return_buf_copy(i32* %153, i32* %154, i32 %155)
  br label %166

157:                                              ; preds = %145
  %158 = load i32*, i32** %25, align 8
  %159 = load i32*, i32** %30, align 8
  %160 = load i32, i32* %24, align 4
  %161 = call i32 @abd_return_buf_copy(i32* %158, i32* %159, i32 %160)
  %162 = load i32*, i32** %26, align 8
  %163 = load i32*, i32** %31, align 8
  %164 = load i32, i32* %24, align 4
  %165 = call i32 @abd_return_buf(i32* %162, i32* %163, i32 %164)
  br label %166

166:                                              ; preds = %157, %148
  %167 = load i32*, i32** %16, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %169 = load i32, i32* @FTAG, align 4
  %170 = call i32 @spa_keystore_dsl_key_rele(i32* %167, %struct.TYPE_8__* %168, i32 %169)
  store i32 0, i32* %14, align 4
  br label %207

171:                                              ; preds = %144, %106, %88, %82
  %172 = load i64, i64* %15, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %192

174:                                              ; preds = %171
  %175 = load i32*, i32** %21, align 8
  %176 = load i32, i32* @ZIO_DATA_SALT_LEN, align 4
  %177 = call i32 @bzero(i32* %175, i32 %176)
  %178 = load i32*, i32** %22, align 8
  %179 = load i32, i32* @ZIO_DATA_IV_LEN, align 4
  %180 = call i32 @bzero(i32* %178, i32 %179)
  %181 = load i32*, i32** %23, align 8
  %182 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %183 = call i32 @bzero(i32* %181, i32 %182)
  %184 = load i32*, i32** %25, align 8
  %185 = load i32*, i32** %30, align 8
  %186 = load i32, i32* %24, align 4
  %187 = call i32 @abd_return_buf(i32* %184, i32* %185, i32 %186)
  %188 = load i32*, i32** %26, align 8
  %189 = load i32*, i32** %31, align 8
  %190 = load i32, i32* %24, align 4
  %191 = call i32 @abd_return_buf_copy(i32* %188, i32* %189, i32 %190)
  br label %201

192:                                              ; preds = %171
  %193 = load i32*, i32** %25, align 8
  %194 = load i32*, i32** %30, align 8
  %195 = load i32, i32* %24, align 4
  %196 = call i32 @abd_return_buf_copy(i32* %193, i32* %194, i32 %195)
  %197 = load i32*, i32** %26, align 8
  %198 = load i32*, i32** %31, align 8
  %199 = load i32, i32* %24, align 4
  %200 = call i32 @abd_return_buf(i32* %197, i32* %198, i32 %199)
  br label %201

201:                                              ; preds = %192, %174
  %202 = load i32*, i32** %16, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %204 = load i32, i32* @FTAG, align 4
  %205 = call i32 @spa_keystore_dsl_key_rele(i32* %202, %struct.TYPE_8__* %203, i32 %204)
  %206 = load i32, i32* %28, align 4
  store i32 %206, i32* %14, align 4
  br label %207

207:                                              ; preds = %201, %166, %44
  %208 = load i32, i32* %14, align 4
  ret i32 %208
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_feature_is_active(i32*, i32) #1

declare dso_local i32 @spa_keystore_lookup_key(i32*, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32* @abd_borrow_buf_copy(i32*, i32) #1

declare dso_local i32* @abd_borrow_buf(i32*, i32) #1

declare dso_local i32 @zio_crypt_key_get_salt(i32*, i32*) #1

declare dso_local i32 @zio_crypt_generate_iv(i32*) #1

declare dso_local i32 @zio_crypt_generate_iv_salt_dedup(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @zio_do_crypt_data(i64, i32*, i32, i64, i32*, i32*, i32*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @zio_handle_decrypt_injection(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @abd_return_buf(i32*, i32*, i32) #1

declare dso_local i32 @abd_return_buf_copy(i32*, i32*, i32) #1

declare dso_local i32 @spa_keystore_dsl_key_rele(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
