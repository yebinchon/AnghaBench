; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_zfs_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_zfs_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zfs_destroy.zc = private unnamed_addr constant %struct.TYPE_3__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null }, align 8
@zfs_fd = common dso_local global i32 0, align 4
@ZFS_IOC_DESTROY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @zfs_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_3__* @__const.zfs_destroy.zc to i8*), i64 16, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strlcpy(i8* %7, i8* %8, i32 8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 7
  store i8 0, i8* %12, align 1
  %13 = load i32, i32* @zfs_fd, align 4
  %14 = load i32, i32* @ZFS_IOC_DESTROY, align 4
  %15 = call i32 @ioctl(i32 %13, i32 %14, %struct.TYPE_3__* %3)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @errno, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
