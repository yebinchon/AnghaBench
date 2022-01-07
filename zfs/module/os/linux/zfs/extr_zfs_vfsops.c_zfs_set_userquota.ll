; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_set_userquota.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_set_userquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i64 }

@ZPL_VERSION_USERSPACE = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@DMU_NEW_OBJECT = common dso_local global i64 0, align 8
@MASTER_NODE_OBJ = common dso_local global i64 0, align 8
@zfs_userquota_prop_prefixes = common dso_local global i32** null, align 8
@TXG_WAIT = common dso_local global i32 0, align 4
@DMU_OT_USERGROUP_QUOTA = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_set_userquota(%struct.TYPE_6__* %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ZPL_VERSION_USERSPACE, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOTSUP, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %6, align 4
  br label %217

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %77 [
    i32 128, label %27
    i32 132, label %30
    i32 129, label %33
    i32 133, label %36
    i32 130, label %39
    i32 131, label %58
  ]

27:                                               ; preds = %25
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i64* %29, i64** %15, align 8
  br label %80

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store i64* %32, i64** %15, align 8
  br label %80

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i64* %35, i64** %15, align 8
  br label %80

36:                                               ; preds = %25
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  store i64* %38, i64** %15, align 8
  br label %80

39:                                               ; preds = %25
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dmu_objset_projectquota_enabled(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOTSUP, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %6, align 4
  br label %217

48:                                               ; preds = %39
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @zpl_is_valid_projid(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %6, align 4
  br label %217

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  store i64* %57, i64** %15, align 8
  br label %80

58:                                               ; preds = %25
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dmu_objset_projectquota_enabled(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOTSUP, align 4
  %66 = call i32 @SET_ERROR(i32 %65)
  store i32 %66, i32* %6, align 4
  br label %217

67:                                               ; preds = %58
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @zpl_is_valid_projid(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @EINVAL, align 4
  %73 = call i32 @SET_ERROR(i32 %72)
  store i32 %73, i32* %6, align 4
  br label %217

74:                                               ; preds = %67
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 6
  store i64* %76, i64** %15, align 8
  br label %80

77:                                               ; preds = %25
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @SET_ERROR(i32 %78)
  store i32 %79, i32* %6, align 4
  br label %217

80:                                               ; preds = %74, %55, %36, %33, %30, %27
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %85 = load i32, i32* @B_TRUE, align 4
  %86 = call i32 @id_to_fuidstr(%struct.TYPE_6__* %81, i8* %82, i64 %83, i8* %84, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %6, align 4
  br label %217

91:                                               ; preds = %80
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 9
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %16, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = call i32* @dmu_tx_create(i32 %97)
  store i32* %98, i32** %14, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = load i64*, i64** %15, align 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i64*, i64** %15, align 8
  %105 = load i64, i64* %104, align 8
  br label %108

106:                                              ; preds = %91
  %107 = load i64, i64* @DMU_NEW_OBJECT, align 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi i64 [ %105, %103 ], [ %107, %106 ]
  %110 = load i32, i32* @B_TRUE, align 4
  %111 = call i32 @dmu_tx_hold_zap(i32* %99, i64 %109, i32 %110, i32* null)
  %112 = load i64*, i64** %15, align 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load i32*, i32** %14, align 8
  %117 = load i64, i64* @MASTER_NODE_OBJ, align 8
  %118 = load i32, i32* @B_TRUE, align 4
  %119 = load i32**, i32*** @zfs_userquota_prop_prefixes, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @dmu_tx_hold_zap(i32* %116, i64 %117, i32 %118, i32* %123)
  br label %125

125:                                              ; preds = %115, %108
  %126 = load i64, i64* %16, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @zfs_fuid_txhold(%struct.TYPE_6__* %129, i32* %130)
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* @TXG_WAIT, align 4
  %135 = call i32 @dmu_tx_assign(i32* %133, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i32*, i32** %14, align 8
  %140 = call i32 @dmu_tx_abort(i32* %139)
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %6, align 4
  br label %217

142:                                              ; preds = %132
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 8
  %145 = call i32 @mutex_enter(i32* %144)
  %146 = load i64*, i64** %15, align 8
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %142
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @DMU_OT_USERGROUP_QUOTA, align 4
  %154 = load i32, i32* @DMU_OT_NONE, align 4
  %155 = load i32*, i32** %14, align 8
  %156 = call i64 @zap_create(i32 %152, i32 %153, i32 %154, i32 0, i32* %155)
  %157 = load i64*, i64** %15, align 8
  store i64 %156, i64* %157, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* @MASTER_NODE_OBJ, align 8
  %162 = load i32**, i32*** @zfs_userquota_prop_prefixes, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = load i64*, i64** %15, align 8
  %168 = load i32*, i32** %14, align 8
  %169 = call i64 @zap_add(i32 %160, i64 %161, i32* %166, i32 8, i32 1, i64* %167, i32* %168)
  %170 = icmp eq i64 0, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @VERIFY(i32 %171)
  br label %173

173:                                              ; preds = %149, %142
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 8
  %176 = call i32 @mutex_exit(i32* %175)
  %177 = load i64, i64* %11, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %173
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 8
  %183 = load i64*, i64** %15, align 8
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %186 = load i32*, i32** %14, align 8
  %187 = call i32 @zap_remove(i32 %182, i64 %184, i8* %185, i32* %186)
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* @ENOENT, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %179
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %191, %179
  br label %202

193:                                              ; preds = %173
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = load i64*, i64** %15, align 8
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %200 = load i32*, i32** %14, align 8
  %201 = call i32 @zap_update(i32 %196, i64 %198, i8* %199, i32 8, i32 1, i64* %11, i32* %200)
  store i32 %201, i32* %13, align 4
  br label %202

202:                                              ; preds = %193, %192
  %203 = load i32, i32* %13, align 4
  %204 = icmp eq i32 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @ASSERT(i32 %205)
  %207 = load i64, i64* %16, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %202
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %211 = load i32*, i32** %14, align 8
  %212 = call i32 @zfs_fuid_sync(%struct.TYPE_6__* %210, i32* %211)
  br label %213

213:                                              ; preds = %209, %202
  %214 = load i32*, i32** %14, align 8
  %215 = call i32 @dmu_tx_commit(i32* %214)
  %216 = load i32, i32* %13, align 4
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %213, %138, %89, %77, %71, %64, %52, %45, %22
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dmu_objset_projectquota_enabled(i32) #1

declare dso_local i32 @zpl_is_valid_projid(i64) #1

declare dso_local i32 @id_to_fuidstr(%struct.TYPE_6__*, i8*, i64, i8*, i32) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i64, i32, i32*) #1

declare dso_local i32 @zfs_fuid_txhold(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @zap_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_add(i32, i64, i32*, i32, i32, i64*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zap_remove(i32, i64, i8*, i32*) #1

declare dso_local i32 @zap_update(i32, i64, i8*, i32, i32, i64*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_fuid_sync(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
