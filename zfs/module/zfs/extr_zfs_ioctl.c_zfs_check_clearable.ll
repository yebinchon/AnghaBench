; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_check_clearable.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_check_clearable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32**)* @zfs_check_clearable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_check_clearable(i8* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

17:                                               ; preds = %3
  %18 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %19 = load i32, i32* @KM_SLEEP, align 4
  %20 = call i64 @nvlist_alloc(i32** %11, i32 %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load i32, i32* @KM_SLEEP, align 4
  %25 = call %struct.TYPE_5__* @kmem_alloc(i32 8, i32 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %8, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strlcpy(i32 %28, i8* %29, i32 4)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @nvlist_next_nvpair(i32* %31, i32* null)
  store i32* %32, i32** %9, align 8
  br label %33

33:                                               ; preds = %72, %17
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %74

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @nvlist_next_nvpair(i32* %37, i32* %38)
  store i32* %39, i32** %10, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i8* @nvpair_name(i32* %43)
  %45 = call i32 @strlcpy(i32 %42, i8* %44, i32 4)
  %46 = load i8*, i8** %5, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 (...) @CRED()
  %49 = call i32 @zfs_check_settable(i8* %46, i32* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %36
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = call i32 (...) @CRED()
  %54 = call i32 @zfs_secpolicy_inherit_prop(%struct.TYPE_5__* %52, i32* null, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51, %36
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @nvlist_remove_nvpair(i32* %57, i32* %58)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @VERIFY(i32 %61)
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @nvlist_add_int32(i32* %63, i32 %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @VERIFY(i32 %70)
  br label %72

72:                                               ; preds = %56, %51
  %73 = load i32*, i32** %10, align 8
  store i32* %73, i32** %9, align 8
  br label %33

74:                                               ; preds = %33
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = call i32 @kmem_free(%struct.TYPE_5__* %75, i32 8)
  %77 = load i32*, i32** %11, align 8
  %78 = call i32* @nvlist_next_nvpair(i32* %77, i32* null)
  store i32* %78, i32** %9, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @nvlist_free(i32* %81)
  store i32* null, i32** %11, align 8
  br label %89

83:                                               ; preds = %74
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @nvpair_value_int32(i32* %84, i32* %13)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @VERIFY(i32 %87)
  br label %89

89:                                               ; preds = %83, %80
  %90 = load i32**, i32*** %7, align 8
  %91 = icmp eq i32** %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @nvlist_free(i32* %93)
  br label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %11, align 8
  %97 = load i32**, i32*** %7, align 8
  store i32* %96, i32** %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %16
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local %struct.TYPE_5__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zfs_check_settable(i8*, i32*, i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @zfs_secpolicy_inherit_prop(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i64 @nvlist_remove_nvpair(i32*, i32*) #1

declare dso_local i64 @nvlist_add_int32(i32*, i32, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @nvpair_value_int32(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
