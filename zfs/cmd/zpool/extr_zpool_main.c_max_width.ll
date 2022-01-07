; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_max_width.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_max_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_zfs = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @max_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_width(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @g_zfs, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i8* @zpool_vdev_name(i32 %16, i32* %17, i32* %18, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %5
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %37 = call i64 @nvlist_lookup_nvlist_array(i32* %35, i32 %36, i32*** %12, i64* %14)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %32
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load i32**, i32*** %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 2
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @max_width(i32* %45, i32* %49, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %44
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %13, align 8
  br label %40

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %67 = call i64 @nvlist_lookup_nvlist_array(i32* %65, i32 %66, i32*** %12, i64* %14)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %64
  store i64 0, i64* %13, align 8
  br label %70

70:                                               ; preds = %90, %69
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load i32*, i32** %6, align 8
  %76 = load i32**, i32*** %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 2
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @max_width(i32* %75, i32* %79, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %74
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %70

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93, %64
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %97 = call i64 @nvlist_lookup_nvlist_array(i32* %95, i32 %96, i32*** %12, i64* %14)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %94
  store i64 0, i64* %13, align 8
  br label %100

100:                                              ; preds = %120, %99
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  %105 = load i32*, i32** %6, align 8
  %106 = load i32**, i32*** %12, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 2
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @max_width(i32* %105, i32* %109, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %104
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %117, %104
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %13, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %13, align 8
  br label %100

123:                                              ; preds = %100
  br label %124

124:                                              ; preds = %123, %94
  %125 = load i32, i32* %9, align 4
  ret i32 %125
}

declare dso_local i8* @zpool_vdev_name(i32, i32*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
