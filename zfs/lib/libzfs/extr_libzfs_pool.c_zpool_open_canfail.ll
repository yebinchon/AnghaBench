; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_open_canfail.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_open_canfail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@B_TRUE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cannot open '%s'\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"no such pool\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @zpool_open_canfail(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @B_TRUE, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @zpool_name_valid(i32* %8, i32 %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %16 = load i32, i32* @TEXT_DOMAIN, align 4
  %17 = call i32 @dgettext(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @zfs_error_fmt(i32* %14, i32 %15, i32 %17, i8* %18)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %58

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_6__* @zfs_alloc(i32* %21, i32 16)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %6, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %58

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strlcpy(i32 %31, i8* %32, i32 4)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = call i64 @zpool_refresh_stats(%struct.TYPE_6__* %34, i64* %7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = call i32 @zpool_close(%struct.TYPE_6__* %38)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %58

40:                                               ; preds = %25
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @TEXT_DOMAIN, align 4
  %46 = call i32 @dgettext(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @zfs_error_aux(i32* %44, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @EZFS_NOENT, align 4
  %50 = load i32, i32* @TEXT_DOMAIN, align 4
  %51 = call i32 @dgettext(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @zfs_error_fmt(i32* %48, i32 %49, i32 %51, i8* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = call i32 @zpool_close(%struct.TYPE_6__* %54)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %58

56:                                               ; preds = %40
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %3, align 8
  br label %58

58:                                               ; preds = %56, %43, %37, %24, %13
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %59
}

declare dso_local i32 @zpool_name_valid(i32*, i32, i8*) #1

declare dso_local i32 @zfs_error_fmt(i32*, i32, i32, i8*) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @zfs_alloc(i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @zpool_refresh_stats(%struct.TYPE_6__*, i64*) #1

declare dso_local i32 @zpool_close(%struct.TYPE_6__*) #1

declare dso_local i32 @zfs_error_aux(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
