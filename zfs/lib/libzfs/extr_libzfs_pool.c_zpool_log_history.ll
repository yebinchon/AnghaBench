; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_log_history.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_log_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_log_history.zc = private unnamed_addr constant %struct.TYPE_5__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@ZFS_IOC_LOG_HISTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_log_history(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_5__* @__const.zpool_log_history.zc to i8*), i64 8, i1 false)
  %9 = call i32* (...) @fnvlist_alloc()
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @fnvlist_add_string(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @zcmd_write_src_nvlist(i32* %13, %struct.TYPE_5__* %5, i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @ZFS_IOC_LOG_HISTORY, align 4
  %21 = call i32 @zfs_ioctl(i32* %19, i32 %20, %struct.TYPE_5__* %5)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @nvlist_free(i32* %23)
  %25 = call i32 @zcmd_free_nvlists(%struct.TYPE_5__* %5)
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i32 @zcmd_write_src_nvlist(i32*, %struct.TYPE_5__*, i32*) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
