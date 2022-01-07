; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_lzc_ioctl_run.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_lzc_ioctl_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i64, i8*, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unsupported input\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"missing input\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid input type\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"valid input\00", align 1
@zfs_fd = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@unexpected_failures = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"%s: Unexpected result with %s, error %d (expecting %d)\0A\00", align 1
@active_test = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32*, i32)* @lzc_ioctl_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzc_ioctl_run(i32 %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 48, i1 false)
  %15 = bitcast i8* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %16, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %21 [
    i32 128, label %18
    i32 129, label %19
    i32 130, label %20
  ]

18:                                               ; preds = %4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %22

19:                                               ; preds = %4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %22

20:                                               ; preds = %4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %22

21:                                               ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %22

22:                                               ; preds = %21, %20, %19, %18
  %23 = load i32*, i32** %7, align 8
  %24 = call i8* @fnvlist_pack(i32* %23, i64* %12)
  store i8* %24, i8** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strlcpy(i8* %26, i8* %27, i32 8)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 7
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %10, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  store i8* %34, i8** %35, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %12, align 8
  %39 = mul i64 %38, 2
  %40 = call i32 @MAX(i64 %39, i32 131072)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @malloc(i32 %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @zfs_fd, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @ioctl(i32 %47, i32 %48, %struct.TYPE_3__* %9)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %22
  %52 = load i32, i32* @errno, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %51, %22
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* @B_TRUE, align 4
  store i32 %58, i32* @unexpected_failures, align 4
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** @active_test, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* %60, i8* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %53
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @fnvlist_pack_free(i8* %66, i64 %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @free(i8* %72)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @fnvlist_pack(i32*, i64*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @MAX(i64, i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @fnvlist_pack_free(i8*, i64) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
