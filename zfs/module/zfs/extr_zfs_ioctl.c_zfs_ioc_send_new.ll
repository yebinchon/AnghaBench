; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_send_new.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_send_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fromsnap\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"largeblockok\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"embedok\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"compressok\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"rawok\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"resume_object\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"resume_offset\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"redactbook\00", align 1
@EBADF = common dso_local global i32 0, align 4
@dump_bytes = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_send_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_send_new(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_6__, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @fnvlist_lookup_int32(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @nvlist_lookup_string(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %10)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @nvlist_exists(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %26, i32* %13, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @nvlist_exists(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @nvlist_exists(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %30, i32* %15, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @nvlist_exists(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %32, i32* %16, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @nvlist_lookup_uint64(i32* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %17)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @nvlist_lookup_uint64(i32* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* %18)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @nvlist_lookup_string(i32* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %19)
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.TYPE_5__* @getf(i32 %39)
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %12, align 8
  %41 = icmp eq %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EBADF, align 4
  %44 = call i32 @SET_ERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %85

45:                                               ; preds = %3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = bitcast %struct.TYPE_6__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 16, i1 false)
  %50 = load i32, i32* @dump_bytes, align 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @B_FALSE, align 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i8*, i8** %19, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @dmu_send(i8* %58, i8* %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i8* %66, i32 %67, i32* %9, %struct.TYPE_6__* %20)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @VOP_SEEK(i32 %71, i32 %74, i32* %9, i32* null)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %45
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %45
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @releasef(i32 %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %42
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @fnvlist_lookup_int32(i32*, i8*) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @getf(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dmu_send(i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @VOP_SEEK(i32, i32, i32*, i32*) #1

declare dso_local i32 @releasef(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
