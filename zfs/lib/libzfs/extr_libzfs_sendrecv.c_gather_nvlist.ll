; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_gather_nvlist.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_gather_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@EZFS_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32**, i32**)* @gather_nvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather_nvlist(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i32** %12, i32** %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32**, align 8
  %29 = alloca i32**, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_3__, align 8
  %32 = alloca i32, align 4
  store i32* %0, i32** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i8* %9, i8** %25, align 8
  store i8* %10, i8** %26, align 8
  store i8* %11, i8** %27, align 8
  store i32** %12, i32*** %28, align 8
  store i32** %13, i32*** %29, align 8
  %33 = bitcast %struct.TYPE_3__* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 104, i1 false)
  %34 = load i32*, i32** %16, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %37 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %38 = or i32 %36, %37
  %39 = call i32* @zfs_open(i32* %34, i8* %35, i32 %38)
  store i32* %39, i32** %30, align 8
  %40 = load i32*, i32** %30, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %14
  %43 = load i32, i32* @EZFS_BADTYPE, align 4
  store i32 %43, i32* %15, align 4
  br label %106

44:                                               ; preds = %14
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %46 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %47 = call i64 @nvlist_alloc(i32** %45, i32 %46, i32 0)
  %48 = icmp eq i64 0, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @VERIFY(i32 %49)
  %51 = load i8*, i8** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load i8*, i8** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 11
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 10
  store i8* %59, i8** %60, align 8
  %61 = load i8*, i8** %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 9
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %23, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 8
  store i8* %63, i8** %64, align 8
  %65 = load i8*, i8** %24, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 7
  store i8* %65, i8** %66, align 8
  %67 = load i8*, i8** %25, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** %26, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** %27, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i8* %71, i8** %72, align 8
  %73 = load i32*, i32** %30, align 8
  %74 = call i32 @send_iterate_fs(i32* %73, %struct.TYPE_3__* %31)
  store i32 %74, i32* %32, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %44
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @nvlist_free(i32* %78)
  %80 = load i32**, i32*** %29, align 8
  %81 = icmp ne i32** %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32**, i32*** %29, align 8
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %82, %76
  %85 = load i32**, i32*** %28, align 8
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* %32, align 4
  store i32 %86, i32* %15, align 4
  br label %106

87:                                               ; preds = %44
  %88 = load i32**, i32*** %29, align 8
  %89 = icmp ne i32** %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i32* @fsavl_create(i32* %92)
  %94 = load i32**, i32*** %29, align 8
  store i32* %93, i32** %94, align 8
  %95 = icmp eq i32* %93, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @nvlist_free(i32* %98)
  %100 = load i32**, i32*** %28, align 8
  store i32* null, i32** %100, align 8
  %101 = load i32, i32* @EZFS_NOMEM, align 4
  store i32 %101, i32* %15, align 4
  br label %106

102:                                              ; preds = %90, %87
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32**, i32*** %28, align 8
  store i32* %104, i32** %105, align 8
  store i32 0, i32* %15, align 4
  br label %106

106:                                              ; preds = %102, %96, %84, %42
  %107 = load i32, i32* %15, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @zfs_open(i32*, i8*, i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @send_iterate_fs(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32* @fsavl_create(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
