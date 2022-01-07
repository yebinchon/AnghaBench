; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_is_spare.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_is_spare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4
@POOL_STATE_SPARE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @is_spare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_spare(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = load i32, i32* @O_DIRECT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @open(i8* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @B_FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %104

25:                                               ; preds = %2
  %26 = load i32, i32* @g_zfs, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @zpool_in_use(i32 %26, i32 %27, i64* %7, i8** %8, i32* %16)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @POOL_STATE_SPARE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @zpool_read_label(i32 %38, i32** %9, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %33, %30, %25
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i32, i32* @B_FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %104

47:                                               ; preds = %37
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @nvlist_free(i32* %55)
  %57 = load i32, i32* @B_TRUE, align 4
  store i32 %57, i32* %3, align 4
  br label %104

58:                                               ; preds = %47
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %61 = call i64 @nvlist_lookup_uint64(i32* %59, i32 %60, i64* %10)
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @verify(i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @nvlist_free(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %69 = call i64 @nvlist_lookup_nvlist(i32* %67, i32 %68, i32** %12)
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @verify(i32 %71)
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %75 = call i64 @nvlist_lookup_nvlist_array(i32* %73, i32 %74, i32*** %13, i64* %15)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %58
  store i64 0, i64* %14, align 8
  br label %78

78:                                               ; preds = %98, %77
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load i32**, i32*** %13, align 8
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds i32*, i32** %83, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %88 = call i64 @nvlist_lookup_uint64(i32* %86, i32 %87, i64* %11)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @verify(i32 %90)
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* @B_TRUE, align 4
  store i32 %96, i32* %3, align 4
  br label %104

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %14, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %14, align 8
  br label %78

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101, %58
  %103 = load i32, i32* @B_FALSE, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %95, %54, %41, %23
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @zpool_in_use(i32, i32, i64*, i8**, i32*) #1

declare dso_local i64 @zpool_read_label(i32, i32**, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
