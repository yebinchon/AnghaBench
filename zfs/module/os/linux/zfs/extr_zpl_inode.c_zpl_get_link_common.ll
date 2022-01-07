; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_inode.c_zpl_get_link_common.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_inode.c_zpl_get_link_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.iovec = type { i8*, i8* }
%struct.TYPE_5__ = type { i32, i8*, i32, %struct.iovec*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MAXPATHLEN = common dso_local global i8* null, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, i8**)* @zpl_get_link_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_get_link_common(%struct.dentry* %0, %struct.inode* %1, i8** %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.iovec, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i8** %2, i8*** %6, align 8
  %12 = call i32* (...) @CRED()
  store i32* %12, i32** %8, align 8
  %13 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @crhold(i32* %14)
  %16 = load i8**, i8*** %6, align 8
  store i8* null, i8** %16, align 8
  %17 = load i8*, i8** @MAXPATHLEN, align 8
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @MAXPATHLEN, align 8
  %20 = load i32, i32* @KM_SLEEP, align 4
  %21 = call i8* @kmem_zalloc(i8* %19, i32 %20)
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store %struct.iovec* %9, %struct.iovec** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @UIO_SYSSPACE, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i8*, i8** @MAXPATHLEN, align 8
  %28 = getelementptr i8, i8* %27, i64 -1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = call i32 (...) @spl_fstrans_mark()
  store i32 %30, i32* %7, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @zfs_readlink(%struct.inode* %31, %struct.TYPE_5__* %10, i32* %32)
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @spl_fstrans_unmark(i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @crfree(i32* %37)
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** @MAXPATHLEN, align 8
  %45 = call i32 @kmem_free(i8* %43, i8* %44)
  br label %50

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %6, align 8
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %11, align 4
  ret i32 %51
}

declare dso_local i32* @CRED(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @crhold(i32*) #1

declare dso_local i8* @kmem_zalloc(i8*, i32) #1

declare dso_local i32 @spl_fstrans_mark(...) #1

declare dso_local i32 @zfs_readlink(%struct.inode*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @kmem_free(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
