; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dsl_dataset_promote_busy.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dsl_dataset_promote_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ztest_name_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s@s1_%llu\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/c1_%llu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s@s2_%llu\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s/c2_%llu\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s@s3_%llu\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"dmu_take_snapshot(%s) = %d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"dmu_objset_create(%s) = %d\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"dmu_open_snapshot(%s) = %d\00", align 1
@DMU_OST_ANY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"dmu_objset_own(%s) = %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"dsl_dataset_promote(%s), %d, not EBUSY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_dsl_dataset_promote_busy(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %17 = load i32, i32* @UMEM_NOFAIL, align 4
  %18 = call i8* @umem_alloc(i32 %16, i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %20 = load i32, i32* @UMEM_NOFAIL, align 4
  %21 = call i8* @umem_alloc(i32 %19, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %23 = load i32, i32* @UMEM_NOFAIL, align 4
  %24 = call i8* @umem_alloc(i32 %22, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %26 = load i32, i32* @UMEM_NOFAIL, align 4
  %27 = call i8* @umem_alloc(i32 %25, i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %29 = load i32, i32* @UMEM_NOFAIL, align 4
  %30 = call i8* @umem_alloc(i32 %28, i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = call i32 @pthread_rwlock_rdlock(i32* @ztest_name_lock)
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ztest_dsl_dataset_cleanup(i8* %32, i64 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %4, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %4, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @snprintf(i8* %41, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %4, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @snprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %49, i32 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %4, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @snprintf(i8* %53, i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %57)
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %4, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @snprintf(i8* %59, i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %61, i32 %63)
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strchr(i8* %66, i8 signext 64)
  %68 = add nsw i64 %67, 1
  %69 = call i32 @dmu_objset_snapshot_one(i8* %65, i64 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %2
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @EEXIST, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @ENOSPC, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @FTAG, align 4
  %82 = call i32 @ztest_record_enospc(i32 %81)
  br label %206

83:                                               ; preds = %76
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %72, %2
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @dmu_objset_clone(i8* %88, i8* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @ENOSPC, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @FTAG, align 4
  %99 = call i32 @ztest_record_enospc(i32 %98)
  br label %206

100:                                              ; preds = %93
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %87
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i64 @strchr(i8* %106, i8 signext 64)
  %108 = add nsw i64 %107, 1
  %109 = call i32 @dmu_objset_snapshot_one(i8* %105, i64 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %104
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @EEXIST, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @ENOSPC, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @FTAG, align 4
  %122 = call i32 @ztest_record_enospc(i32 %121)
  br label %206

123:                                              ; preds = %116
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %112, %104
  %128 = load i8*, i8** %7, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = call i64 @strchr(i8* %129, i8 signext 64)
  %131 = add nsw i64 %130, 1
  %132 = call i32 @dmu_objset_snapshot_one(i8* %128, i64 %131)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %127
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @EEXIST, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @ENOSPC, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* @FTAG, align 4
  %145 = call i32 @ztest_record_enospc(i32 %144)
  br label %206

146:                                              ; preds = %139
  %147 = load i8*, i8** %10, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %135, %127
  %151 = load i8*, i8** %9, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = call i32 @dmu_objset_clone(i8* %151, i8* %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %150
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @ENOSPC, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* @FTAG, align 4
  %162 = call i32 @ztest_record_enospc(i32 %161)
  br label %206

163:                                              ; preds = %156
  %164 = load i8*, i8** %9, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %150
  %168 = load i8*, i8** %8, align 8
  %169 = load i32, i32* @DMU_OST_ANY, align 4
  %170 = load i32, i32* @B_TRUE, align 4
  %171 = load i32, i32* @B_TRUE, align 4
  %172 = load i32, i32* @FTAG, align 4
  %173 = call i32 @ztest_dmu_objset_own(i8* %168, i32 %169, i32 %170, i32 %171, i32 %172, i32** %5)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %167
  %177 = load i8*, i8** %8, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %167
  %181 = load i8*, i8** %9, align 8
  %182 = call i32 @dsl_dataset_promote(i8* %181, i32* null)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* @ENOSPC, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* @B_TRUE, align 4
  %189 = load i32, i32* @FTAG, align 4
  %190 = call i32 @dmu_objset_disown(i32* %187, i32 %188, i32 %189)
  %191 = load i32, i32* @FTAG, align 4
  %192 = call i32 @ztest_record_enospc(i32 %191)
  br label %206

193:                                              ; preds = %180
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* @EBUSY, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i8*, i8** %9, align 8
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %198, i32 %199)
  br label %201

201:                                              ; preds = %197, %193
  %202 = load i32*, i32** %5, align 8
  %203 = load i32, i32* @B_TRUE, align 4
  %204 = load i32, i32* @FTAG, align 4
  %205 = call i32 @dmu_objset_disown(i32* %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %201, %186, %160, %143, %120, %97, %80
  %207 = load i8*, i8** %11, align 8
  %208 = load i64, i64* %4, align 8
  %209 = call i32 @ztest_dsl_dataset_cleanup(i8* %207, i64 %208)
  %210 = call i32 @pthread_rwlock_unlock(i32* @ztest_name_lock)
  %211 = load i8*, i8** %6, align 8
  %212 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %213 = call i32 @umem_free(i8* %211, i32 %212)
  %214 = load i8*, i8** %7, align 8
  %215 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %216 = call i32 @umem_free(i8* %214, i32 %215)
  %217 = load i8*, i8** %8, align 8
  %218 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %219 = call i32 @umem_free(i8* %217, i32 %218)
  %220 = load i8*, i8** %9, align 8
  %221 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %222 = call i32 @umem_free(i8* %220, i32 %221)
  %223 = load i8*, i8** %10, align 8
  %224 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %225 = call i32 @umem_free(i8* %223, i32 %224)
  ret void
}

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i32 @pthread_rwlock_rdlock(i32*) #1

declare dso_local i32 @ztest_dsl_dataset_cleanup(i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @dmu_objset_snapshot_one(i8*, i64) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @ztest_record_enospc(i32) #1

declare dso_local i32 @fatal(i32, i8*, i8*, i32) #1

declare dso_local i32 @dmu_objset_clone(i8*, i8*) #1

declare dso_local i32 @ztest_dmu_objset_own(i8*, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @dsl_dataset_promote(i8*, i32*) #1

declare dso_local i32 @dmu_objset_disown(i32*, i32, i32) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

declare dso_local i32 @umem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
