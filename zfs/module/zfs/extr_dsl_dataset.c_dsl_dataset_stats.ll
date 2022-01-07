; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_32__*, i64 }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_33__ = type { i64 }

@ZFS_PROP_REFRATIO = common dso_local global i32 0, align 4
@ZFS_PROP_LOGICALREFERENCED = common dso_local global i32 0, align 4
@ZFS_PROP_COMPRESSRATIO = common dso_local global i32 0, align 4
@ZFS_PROP_USED = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_PREV_SNAP = common dso_local global i32 0, align 4
@ZFS_PROP_REDACT_SNAPS = common dso_local global i32 0, align 4
@ZFS_PROP_AVAILABLE = common dso_local global i32 0, align 4
@ZFS_PROP_REFERENCED = common dso_local global i32 0, align 4
@ZFS_PROP_CREATION = common dso_local global i32 0, align 4
@ZFS_PROP_CREATETXG = common dso_local global i32 0, align 4
@ZFS_PROP_REFQUOTA = common dso_local global i32 0, align 4
@ZFS_PROP_REFRESERVATION = common dso_local global i32 0, align 4
@ZFS_PROP_GUID = common dso_local global i32 0, align 4
@ZFS_PROP_UNIQUE = common dso_local global i32 0, align 4
@ZFS_PROP_OBJSETID = common dso_local global i32 0, align 4
@ZFS_PROP_USERREFS = common dso_local global i32 0, align 4
@ZFS_PROP_DEFER_DESTROY = common dso_local global i32 0, align 4
@ZFS_PROP_WRITTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@recv_clone_name = common dso_local global i8* null, align 8
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_stats(%struct.TYPE_31__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @dsl_pool_config_held(i32* %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @ZFS_PROP_REFRATIO, align 4
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %24 = call i32 @dsl_get_refratio(%struct.TYPE_31__* %23)
  %25 = call i32 @dsl_prop_nvlist_add_uint64(i32* %21, i32 %22, i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @ZFS_PROP_LOGICALREFERENCED, align 4
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %29 = call i32 @dsl_get_logicalreferenced(%struct.TYPE_31__* %28)
  %30 = call i32 @dsl_prop_nvlist_add_uint64(i32* %26, i32 %27, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @ZFS_PROP_COMPRESSRATIO, align 4
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %34 = call i32 @dsl_get_compressratio(%struct.TYPE_31__* %33)
  %35 = call i32 @dsl_prop_nvlist_add_uint64(i32* %31, i32 %32, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @ZFS_PROP_USED, align 4
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %39 = call i32 @dsl_get_used(%struct.TYPE_31__* %38)
  %40 = call i32 @dsl_prop_nvlist_add_uint64(i32* %36, i32 %37, i32 %39)
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %2
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @get_clones_stat(%struct.TYPE_31__* %46, i32* %47)
  br label %68

49:                                               ; preds = %2
  %50 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %6, align 8
  %53 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %7, align 8
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %55 = call i64 @dsl_get_prev_snap(%struct.TYPE_31__* %54, i8* %53)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @ZFS_PROP_PREV_SNAP, align 4
  %60 = call i32 @dsl_prop_nvlist_add_string(i32* %58, i32 %59, i8* %53)
  br label %61

61:                                               ; preds = %57, %49
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %63, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @dsl_dir_stats(%struct.TYPE_32__* %64, i32* %65)
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %68

68:                                               ; preds = %61, %45
  %69 = call i32* (...) @fnvlist_alloc()
  store i32* %69, i32** %8, align 8
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @dsl_get_redact_snaps(%struct.TYPE_31__* %70, i32* %71)
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @ZFS_PROP_REDACT_SNAPS, align 4
  %75 = call i32 @zfs_prop_to_name(i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @fnvlist_add_nvlist(i32* %73, i32 %75, i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @nvlist_free(i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @ZFS_PROP_AVAILABLE, align 4
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %83 = call i32 @dsl_get_available(%struct.TYPE_31__* %82)
  %84 = call i32 @dsl_prop_nvlist_add_uint64(i32* %80, i32 %81, i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @ZFS_PROP_REFERENCED, align 4
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %88 = call i32 @dsl_get_referenced(%struct.TYPE_31__* %87)
  %89 = call i32 @dsl_prop_nvlist_add_uint64(i32* %85, i32 %86, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @ZFS_PROP_CREATION, align 4
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %93 = call i32 @dsl_get_creation(%struct.TYPE_31__* %92)
  %94 = call i32 @dsl_prop_nvlist_add_uint64(i32* %90, i32 %91, i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %98 = call i32 @dsl_get_creationtxg(%struct.TYPE_31__* %97)
  %99 = call i32 @dsl_prop_nvlist_add_uint64(i32* %95, i32 %96, i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @ZFS_PROP_REFQUOTA, align 4
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %103 = call i32 @dsl_get_refquota(%struct.TYPE_31__* %102)
  %104 = call i32 @dsl_prop_nvlist_add_uint64(i32* %100, i32 %101, i32 %103)
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* @ZFS_PROP_REFRESERVATION, align 4
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %108 = call i32 @dsl_get_refreservation(%struct.TYPE_31__* %107)
  %109 = call i32 @dsl_prop_nvlist_add_uint64(i32* %105, i32 %106, i32 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* @ZFS_PROP_GUID, align 4
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %113 = call i32 @dsl_get_guid(%struct.TYPE_31__* %112)
  %114 = call i32 @dsl_prop_nvlist_add_uint64(i32* %110, i32 %111, i32 %113)
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* @ZFS_PROP_UNIQUE, align 4
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %118 = call i32 @dsl_get_unique(%struct.TYPE_31__* %117)
  %119 = call i32 @dsl_prop_nvlist_add_uint64(i32* %115, i32 %116, i32 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* @ZFS_PROP_OBJSETID, align 4
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %123 = call i32 @dsl_get_objsetid(%struct.TYPE_31__* %122)
  %124 = call i32 @dsl_prop_nvlist_add_uint64(i32* %120, i32 %121, i32 %123)
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* @ZFS_PROP_USERREFS, align 4
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %128 = call i32 @dsl_get_userrefs(%struct.TYPE_31__* %127)
  %129 = call i32 @dsl_prop_nvlist_add_uint64(i32* %125, i32 %126, i32 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* @ZFS_PROP_DEFER_DESTROY, align 4
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %133 = call i32 @dsl_get_defer_destroy(%struct.TYPE_31__* %132)
  %134 = call i32 @dsl_prop_nvlist_add_uint64(i32* %130, i32 %131, i32 %133)
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @dsl_dataset_crypt_stats(%struct.TYPE_31__* %135, i32* %136)
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %139 = call %struct.TYPE_33__* @dsl_dataset_phys(%struct.TYPE_31__* %138)
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %68
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %145 = call i64 @dsl_get_written(%struct.TYPE_31__* %144, i32* %9)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* @ZFS_PROP_WRITTEN, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @dsl_prop_nvlist_add_uint64(i32* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %147, %143
  br label %153

153:                                              ; preds = %152, %68
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %155 = call i32 @dsl_dataset_is_snapshot(%struct.TYPE_31__* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %192, label %157

157:                                              ; preds = %153
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @get_receive_resume_stats(%struct.TYPE_31__* %158, i32* %159)
  %161 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %162 = add nsw i32 %161, 6
  %163 = zext i32 %162 to i64
  %164 = call i8* @llvm.stacksave()
  store i8* %164, i8** %10, align 8
  %165 = alloca i8, i64 %163, align 16
  store i64 %163, i64* %11, align 8
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %167 = call i32 @dsl_dataset_name(%struct.TYPE_31__* %166, i8* %165)
  %168 = trunc i64 %163 to i32
  %169 = call i32 @strlcat(i8* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %168)
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %170, %163
  br i1 %171, label %172, label %190

172:                                              ; preds = %157
  %173 = load i8*, i8** @recv_clone_name, align 8
  %174 = trunc i64 %163 to i32
  %175 = call i32 @strlcat(i8* %165, i8* %173, i32 %174)
  %176 = sext i32 %175 to i64
  %177 = icmp ult i64 %176, %163
  br i1 %177, label %178, label %190

178:                                              ; preds = %172
  %179 = load i32*, i32** %5, align 8
  %180 = load i32, i32* @FTAG, align 4
  %181 = call i64 @dsl_dataset_hold(i32* %179, i8* %165, i32 %180, %struct.TYPE_31__** %12)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %185 = load i32*, i32** %4, align 8
  %186 = call i32 @get_receive_resume_stats(%struct.TYPE_31__* %184, i32* %185)
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %188 = load i32, i32* @FTAG, align 4
  %189 = call i32 @dsl_dataset_rele(%struct.TYPE_31__* %187, i32 %188)
  br label %190

190:                                              ; preds = %183, %178, %172, %157
  %191 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %191)
  br label %192

192:                                              ; preds = %190, %153
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32*) #1

declare dso_local i32 @dsl_prop_nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @dsl_get_refratio(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_logicalreferenced(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_compressratio(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_used(%struct.TYPE_31__*) #1

declare dso_local i32 @get_clones_stat(%struct.TYPE_31__*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @dsl_get_prev_snap(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @dsl_prop_nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @dsl_dir_stats(%struct.TYPE_32__*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @dsl_get_redact_snaps(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @dsl_get_available(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_referenced(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_creation(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_creationtxg(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_refquota(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_refreservation(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_guid(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_unique(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_objsetid(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_userrefs(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_get_defer_destroy(%struct.TYPE_31__*) #1

declare dso_local i32 @dsl_dataset_crypt_stats(%struct.TYPE_31__*, i32*) #1

declare dso_local %struct.TYPE_33__* @dsl_dataset_phys(%struct.TYPE_31__*) #1

declare dso_local i64 @dsl_get_written(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @dsl_dataset_is_snapshot(%struct.TYPE_31__*) #1

declare dso_local i32 @get_receive_resume_stats(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @dsl_dataset_hold(i32*, i8*, i32, %struct.TYPE_31__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
