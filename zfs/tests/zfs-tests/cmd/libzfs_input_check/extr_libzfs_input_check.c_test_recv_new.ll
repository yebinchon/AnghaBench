; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_test_recv_new.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_test_recv_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAXNAMELEN = common dso_local global i32 0, align 4
@ZFS_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s@replicant\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"could not read stream: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"snapname\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"begin_record\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"input_fd\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"org.openzfs:launch\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"September 17th, 2013\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"localprops\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"cleanup_fd\00", align 1
@ZFS_IOC_RECV_NEW = common dso_local global i32 0, align 4
@EBADE = common dso_local global i32 0, align 4
@action_handle = common dso_local global i32* null, align 8
@origin = common dso_local global i8* null, align 8
@recvdprops = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @test_recv_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_recv_new(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = call i32* (...) @fnvlist_alloc()
  store i32* %14, i32** %6, align 8
  %15 = call i32* (...) @fnvlist_alloc()
  store i32* %15, i32** %7, align 8
  %16 = call i32* (...) @fnvlist_alloc()
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* @MAXNAMELEN, align 4
  %18 = add nsw i32 %17, 32
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i32, i32* @ZFS_DEV, align 4
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = call i32 @open(i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = trunc i64 %19 to i32
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @snprintf(i8* %21, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pread(i32 %28, %struct.TYPE_3__* %5, i32 4, i32 0)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 4
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i8* @strerror(i32 %35)
  %37 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @fnvlist_add_string(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %41 = load i32*, i32** %6, align 8
  %42 = bitcast %struct.TYPE_3__* %5 to i32*
  %43 = call i32 @fnvlist_add_byte_array(i32* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %42, i32 4)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @fnvlist_add_int32(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @fnvlist_add_string(i32* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @fnvlist_add_nvlist(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @fnvlist_add_boolean(i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @fnvlist_add_int32(i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ZFS_IOC_RECV_NEW, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @EBADE, align 4
  %62 = call i32 @IOC_INPUT_TEST(i32 %57, i8* %58, i32* %59, i32* %60, i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @nvlist_free(i32* %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @nvlist_free(i32* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @nvlist_free(i32* %67)
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @fnvlist_alloc(...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @open(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @pread(i32, %struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i32 @fnvlist_add_byte_array(i32*, i8*, i32*, i32) #2

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #2

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #2

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #2

declare dso_local i32 @IOC_INPUT_TEST(i32, i8*, i32*, i32*, i32) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
