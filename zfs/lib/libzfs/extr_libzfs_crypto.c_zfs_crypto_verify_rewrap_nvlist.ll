; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_verify_rewrap_nvlist.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_verify_rewrap_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Only keyformat, keylocation and pbkdf2iters may be set with this command.\00", align 1
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32**, i8*)* @zfs_crypto_verify_rewrap_nvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_crypto_verify_rewrap_nvlist(%struct.TYPE_4__* %0, i32* %1, i32** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %13, align 8
  %15 = call i32* (...) @fnvlist_alloc()
  store i32* %15, i32** %13, align 8
  br label %16

16:                                               ; preds = %36, %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32* @nvlist_next_nvpair(i32* %17, i32* %18)
  store i32* %19, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load i32*, i32** %11, align 8
  %23 = call i8* @nvpair_name(i32* %22)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = call i32 @zfs_name_to_prop(i8* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  switch i32 %26, label %28 [
    i32 128, label %27
    i32 130, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %21, %21, %21
  br label %36

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TEXT_DOMAIN, align 4
  %34 = call i32 @dgettext(i32 %33, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @zfs_error_aux(i32 %32, i32 %34)
  br label %61

36:                                               ; preds = %27
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %47 = call i32 @zfs_prop_get_int(%struct.TYPE_4__* %45, i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @B_TRUE, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = call i32* @zfs_valid_proplist(i32 %40, i32 %43, i32* %44, i32 %47, i32* null, i32 %50, i32 %51, i8* %52)
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %37
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %10, align 4
  br label %61

58:                                               ; preds = %37
  %59 = load i32*, i32** %13, align 8
  %60 = load i32**, i32*** %8, align 8
  store i32* %59, i32** %60, align 8
  store i32 0, i32* %5, align 4
  br label %66

61:                                               ; preds = %56, %28
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @nvlist_free(i32* %62)
  %64 = load i32**, i32*** %8, align 8
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zfs_name_to_prop(i8*) #1

declare dso_local i32 @zfs_error_aux(i32, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32* @zfs_valid_proplist(i32, i32, i32*, i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @zfs_prop_get_int(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
