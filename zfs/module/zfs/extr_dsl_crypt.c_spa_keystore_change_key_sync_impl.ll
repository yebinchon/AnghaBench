; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_change_key_sync_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_change_key_sync_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64 }
%struct.TYPE_40__ = type { i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_41__ = type { i8*, i32 }
%struct.TYPE_43__ = type { i32* }
%struct.TYPE_42__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_37__ = type { i32, i32 }

@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_ROOT_DDOBJ = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32*, i32, i32*)* @spa_keystore_change_key_sync_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_keystore_change_key_sync_impl(i64 %0, i64 %1, i64 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_39__*, align 8
  %15 = alloca %struct.TYPE_39__*, align 8
  %16 = alloca %struct.TYPE_40__*, align 8
  %17 = alloca %struct.TYPE_41__*, align 8
  %18 = alloca %struct.TYPE_43__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_42__*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call %struct.TYPE_40__* @dmu_tx_pool(i32* %21)
  store %struct.TYPE_40__* %22, %struct.TYPE_40__** %16, align 8
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %17, align 8
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %18, align 8
  %23 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %26, i32 0, i32 0
  %28 = call i32 @RW_WRITE_HELD(i32* %27)
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* @FTAG, align 4
  %33 = call i32 @dsl_dir_hold_obj(%struct.TYPE_40__* %30, i64 %31, i32* null, i32 %32, %struct.TYPE_41__** %17)
  %34 = call i32 @VERIFY0(i32 %33)
  %35 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 36
  br i1 %41, label %50, label %42

42:                                               ; preds = %6
  %43 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %54

50:                                               ; preds = %42, %6
  %51 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %52 = load i32, i32* @FTAG, align 4
  %53 = call i32 @dsl_dir_rele(%struct.TYPE_41__* %51, i32 %52)
  br label %213

54:                                               ; preds = %42
  %55 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %56 = call i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_41__* %55, i64* %19)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @ENOENT, align 4
  %62 = icmp eq i32 %60, %61
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i1 [ true, %54 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @VERIFY(i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @ENOENT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %81, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %79 = call i64 @dsl_dir_is_clone(%struct.TYPE_41__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77, %73, %63
  %82 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %83 = load i32, i32* @FTAG, align 4
  %84 = call i32 @dsl_dir_rele(%struct.TYPE_41__* %82, i32 %83)
  br label %213

85:                                               ; preds = %77, %70
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %131, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %10, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DSL_CRYPTO_KEY_ROOT_DDOBJ, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @zap_update(i32 %94, i32 %97, i32 %98, i32 8, i32 1, i64* %9, i32* %99)
  %101 = call i32 @VERIFY0(i32 %100)
  br label %130

102:                                              ; preds = %88
  %103 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_35__*, %struct.TYPE_35__** %104, align 8
  %106 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %107 = load i32, i32* @FTAG, align 4
  %108 = call i32 @spa_keystore_dsl_key_hold_dd(%struct.TYPE_35__* %105, %struct.TYPE_41__* %106, i32 %107, %struct.TYPE_43__** %18)
  %109 = call i32 @VERIFY0(i32 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.TYPE_43__*, %struct.TYPE_43__** %18, align 8
  %112 = call i32 @dsl_wrapping_key_hold(i32* %110, %struct.TYPE_43__* %111)
  %113 = load %struct.TYPE_43__*, %struct.TYPE_43__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_43__*, %struct.TYPE_43__** %18, align 8
  %117 = call i32 @dsl_wrapping_key_rele(i32* %115, %struct.TYPE_43__* %116)
  %118 = load i32*, i32** %10, align 8
  %119 = load %struct.TYPE_43__*, %struct.TYPE_43__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %119, i32 0, i32 0
  store i32* %118, i32** %120, align 8
  %121 = load %struct.TYPE_43__*, %struct.TYPE_43__** %18, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @dsl_crypto_key_sync(%struct.TYPE_43__* %121, i32* %122)
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_35__*, %struct.TYPE_35__** %125, align 8
  %127 = load %struct.TYPE_43__*, %struct.TYPE_43__** %18, align 8
  %128 = load i32, i32* @FTAG, align 4
  %129 = call i32 @spa_keystore_dsl_key_rele(%struct.TYPE_35__* %126, %struct.TYPE_43__* %127, i32 %128)
  br label %130

130:                                              ; preds = %102, %91
  br label %131

131:                                              ; preds = %130, %85
  %132 = load i32, i32* @KM_SLEEP, align 4
  %133 = call %struct.TYPE_39__* @kmem_alloc(i32 8, i32 %132)
  store %struct.TYPE_39__* %133, %struct.TYPE_39__** %14, align 8
  %134 = load i32, i32* @KM_SLEEP, align 4
  %135 = call %struct.TYPE_39__* @kmem_alloc(i32 8, i32 %134)
  store %struct.TYPE_39__* %135, %struct.TYPE_39__** %15, align 8
  %136 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %137 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %141 = call %struct.TYPE_37__* @dsl_dir_phys(%struct.TYPE_41__* %140)
  %142 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @zap_cursor_init(%struct.TYPE_39__* %136, i32 %139, i32 %143)
  br label %145

145:                                              ; preds = %159, %131
  %146 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %147 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %148 = call i64 @zap_cursor_retrieve(%struct.TYPE_39__* %146, %struct.TYPE_39__* %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load i64, i64* %7, align 8
  %152 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* @B_FALSE, align 4
  %158 = load i32*, i32** %12, align 8
  call void @spa_keystore_change_key_sync_impl(i64 %151, i64 %154, i64 %155, i32* %156, i32 %157, i32* %158)
  br label %159

159:                                              ; preds = %150
  %160 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %161 = call i32 @zap_cursor_advance(%struct.TYPE_39__* %160)
  br label %145

162:                                              ; preds = %145
  %163 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %164 = call i32 @zap_cursor_fini(%struct.TYPE_39__* %163)
  %165 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %166 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %170 = call %struct.TYPE_37__* @dsl_dir_phys(%struct.TYPE_41__* %169)
  %171 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @zap_cursor_init(%struct.TYPE_39__* %165, i32 %168, i32 %172)
  br label %174

174:                                              ; preds = %200, %162
  %175 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %176 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %177 = call i64 @zap_cursor_retrieve(%struct.TYPE_39__* %175, %struct.TYPE_39__* %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %203

179:                                              ; preds = %174
  %180 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %181 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @FTAG, align 4
  %185 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_40__* %180, i64 %183, i32 %184, %struct.TYPE_42__** %20)
  %186 = call i32 @VERIFY0(i32 %185)
  %187 = load i64, i64* %7, align 8
  %188 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %189 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_38__*, %struct.TYPE_38__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %9, align 8
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* @B_TRUE, align 4
  %196 = load i32*, i32** %12, align 8
  call void @spa_keystore_change_key_sync_impl(i64 %187, i64 %192, i64 %193, i32* %194, i32 %195, i32* %196)
  %197 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %198 = load i32, i32* @FTAG, align 4
  %199 = call i32 @dsl_dataset_rele(%struct.TYPE_42__* %197, i32 %198)
  br label %200

200:                                              ; preds = %179
  %201 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %202 = call i32 @zap_cursor_advance(%struct.TYPE_39__* %201)
  br label %174

203:                                              ; preds = %174
  %204 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %205 = call i32 @zap_cursor_fini(%struct.TYPE_39__* %204)
  %206 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %207 = call i32 @kmem_free(%struct.TYPE_39__* %206, i32 8)
  %208 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %209 = call i32 @kmem_free(%struct.TYPE_39__* %208, i32 8)
  %210 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %211 = load i32, i32* @FTAG, align 4
  %212 = call i32 @dsl_dir_rele(%struct.TYPE_41__* %210, i32 %211)
  br label %213

213:                                              ; preds = %203, %81, %50
  ret void
}

declare dso_local %struct.TYPE_40__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_WRITE_HELD(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold_obj(%struct.TYPE_40__*, i64, i32*, i32, %struct.TYPE_41__**) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_41__*, i64*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @dsl_dir_is_clone(%struct.TYPE_41__*) #1

declare dso_local i32 @zap_update(i32, i32, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @spa_keystore_dsl_key_hold_dd(%struct.TYPE_35__*, %struct.TYPE_41__*, i32, %struct.TYPE_43__**) #1

declare dso_local i32 @dsl_wrapping_key_hold(i32*, %struct.TYPE_43__*) #1

declare dso_local i32 @dsl_wrapping_key_rele(i32*, %struct.TYPE_43__*) #1

declare dso_local i32 @dsl_crypto_key_sync(%struct.TYPE_43__*, i32*) #1

declare dso_local i32 @spa_keystore_dsl_key_rele(%struct.TYPE_35__*, %struct.TYPE_43__*, i32) #1

declare dso_local %struct.TYPE_39__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @zap_cursor_init(%struct.TYPE_39__*, i32, i32) #1

declare dso_local %struct.TYPE_37__* @dsl_dir_phys(%struct.TYPE_41__*) #1

declare dso_local i64 @zap_cursor_retrieve(%struct.TYPE_39__*, %struct.TYPE_39__*) #1

declare dso_local i32 @zap_cursor_advance(%struct.TYPE_39__*) #1

declare dso_local i32 @zap_cursor_fini(%struct.TYPE_39__*) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_40__*, i64, i32, %struct.TYPE_42__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_39__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
