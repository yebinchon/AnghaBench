; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_rollback.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, i32 }
%struct.TYPE_22__ = type { i32, i64, i64, i32, i32 }

@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@ZFS_PROP_CREATETXG = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@B_FALSE = common dso_local global i32 0, align 4
@rollback_destroy = common dso_local global i32 0, align 4
@ZFS_PROP_VOLSIZE = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot rollback '%s'\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"there is a snapshot or bookmark more recent than '%s'\00", align 1
@EZFS_EXISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"'%s' is not found among snapshots of '%s'\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_rollback(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__, align 4
  %14 = alloca i64, align 8
  %15 = alloca [1024 x i8], align 16
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = bitcast %struct.TYPE_22__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %17 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  store i64 0, i64* %14, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %3
  %30 = phi i1 [ true, %3 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ZFS_PROP_CREATETXG, i32 0, i32 0), align 4
  %41 = call i64 @zfs_prop_get_int(%struct.TYPE_21__* %39, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %14, align 8
  br label %49

49:                                               ; preds = %46, %29
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = load i32, i32* @B_FALSE, align 4
  %52 = load i32, i32* @rollback_destroy, align 4
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @zfs_iter_snapshots(%struct.TYPE_21__* %50, i32 %51, i32 %52, %struct.TYPE_22__* %8, i64 %53, i32 0)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = load i32, i32* @rollback_destroy, align 4
  %57 = call i32 @zfs_iter_bookmarks(%struct.TYPE_21__* %55, i32 %56, %struct.TYPE_22__* %8)
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %191

62:                                               ; preds = %49
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = call i64 @zfs_which_resv_prop(%struct.TYPE_21__* %69, %struct.TYPE_20__* %13)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %191

73:                                               ; preds = %68
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ZFS_PROP_VOLSIZE, i32 0, i32 0), align 4
  %76 = call i64 @zfs_prop_get_int(%struct.TYPE_21__* %74, i32 %75)
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @zfs_prop_get_int(%struct.TYPE_21__* %78, i32 %80)
  %82 = icmp eq i64 %77, %81
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %73, %62
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @lzc_rollback_to(i32 %87, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %154

94:                                               ; preds = %84
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %96 = load i32, i32* @TEXT_DOMAIN, align 4
  %97 = call i8* @dgettext(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @snprintf(i8* %95, i32 1024, i8* %97, i32 %100)
  %102 = load i32, i32* %9, align 4
  switch i32 %102, label %145 [
    i32 130, label %103
    i32 128, label %119
    i32 129, label %138
  ]

103:                                              ; preds = %94
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @TEXT_DOMAIN, align 4
  %108 = call i8* @dgettext(i32 %107, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, i32, ...) @zfs_error_aux(i32 %106, i8* %108, i32 %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @EZFS_EXISTS, align 4
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %118 = call i32 @zfs_error(i32 %115, i32 %116, i8* %117)
  br label %152

119:                                              ; preds = %94
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TEXT_DOMAIN, align 4
  %124 = call i8* @dgettext(i32 %123, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, i32, ...) @zfs_error_aux(i32 %122, i8* %124, i32 %127, i32 %130)
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @EZFS_NOENT, align 4
  %136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %137 = call i32 @zfs_error(i32 %134, i32 %135, i8* %136)
  br label %152

138:                                              ; preds = %94
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @EZFS_BADTYPE, align 4
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %144 = call i32 @zfs_error(i32 %141, i32 %142, i8* %143)
  br label %152

145:                                              ; preds = %94
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %151 = call i32 @zfs_standard_error(i32 %148, i32 %149, i8* %150)
  br label %152

152:                                              ; preds = %145, %138, %119, %103
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %4, align 4
  br label %191

154:                                              ; preds = %84
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %189

160:                                              ; preds = %154
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call %struct.TYPE_21__* @make_dataset_handle(i32 %163, i32 %166)
  store %struct.TYPE_21__* %167, %struct.TYPE_21__** %5, align 8
  %168 = icmp ne %struct.TYPE_21__* %167, null
  br i1 %168, label %169, label %189

169:                                              ; preds = %160
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %169
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ZFS_PROP_VOLSIZE, i32 0, i32 0), align 4
  %175 = call i64 @zfs_prop_get_int(%struct.TYPE_21__* %173, i32 %174)
  store i64 %175, i64* %12, align 8
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* %12, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %181 = load i64, i64* %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @zfs_prop_set_int(%struct.TYPE_21__* %180, i32 %183, i64 %181)
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %179, %172
  br label %186

186:                                              ; preds = %185, %169
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %188 = call i32 @zfs_close(%struct.TYPE_21__* %187)
  br label %189

189:                                              ; preds = %186, %160, %154
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %189, %152, %72, %61
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @zfs_iter_snapshots(%struct.TYPE_21__*, i32, i32, %struct.TYPE_22__*, i64, i32) #2

declare dso_local i32 @zfs_iter_bookmarks(%struct.TYPE_21__*, i32, %struct.TYPE_22__*) #2

declare dso_local i64 @zfs_which_resv_prop(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

declare dso_local i32 @lzc_rollback_to(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error_aux(i32, i8*, i32, ...) #2

declare dso_local i32 @zfs_error(i32, i32, i8*) #2

declare dso_local i32 @zfs_standard_error(i32, i32, i8*) #2

declare dso_local %struct.TYPE_21__* @make_dataset_handle(i32, i32) #2

declare dso_local i32 @zfs_prop_set_int(%struct.TYPE_21__*, i32, i64) #2

declare dso_local i32 @zfs_close(%struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
