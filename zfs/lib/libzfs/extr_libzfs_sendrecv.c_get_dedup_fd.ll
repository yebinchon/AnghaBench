; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_get_dedup_fd.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_get_dedup_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"warning: cannot send '%s'\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EZFS_PIPEFAILED = common dso_local global i32 0, align 4
@cksummer = common dso_local global i32 0, align 4
@EZFS_THREADCREATEFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32*, i32*)* @get_dedup_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dedup_fd(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %16 = load i32, i32* @TEXT_DOMAIN, align 4
  %17 = call i8* @dgettext(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snprintf(i8* %15, i32 1024, i8* %17, i32 %20)
  %22 = load i32, i32* @AF_UNIX, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %25 = call i32 @socketpair(i32 %22, i32 %23, i32 0, i32* %24)
  store i32 %25, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 @zfs_error_aux(i32 %30, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EZFS_PIPEFAILED, align 4
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %39 = call i32 @zfs_error(i32 %36, i32 %37, i8* %38)
  store i32 %39, i32* %6, align 4
  br label %81

40:                                               ; preds = %5
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* @cksummer, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = call i32 @pthread_create(i32* %53, i32* null, i32 %54, %struct.TYPE_7__* %55)
  store i32 %56, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %40
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @strerror(i32 %68)
  %70 = call i32 @zfs_error_aux(i32 %67, i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @EZFS_THREADCREATEFAILED, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %76 = call i32 @zfs_error(i32 %73, i32 %74, i8* %75)
  store i32 %76, i32* %6, align 4
  br label %81

77:                                               ; preds = %40
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %11, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %58, %27
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @zfs_error_aux(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @zfs_error(i32, i32, i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
