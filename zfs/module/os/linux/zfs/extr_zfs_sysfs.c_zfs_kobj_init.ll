; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_sysfs.c_zfs_kobj_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_sysfs.c_zfs_kobj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zfs_kobj_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32)* @zfs_kobj_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_kobj_init(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ATTR_TABLE_SIZE(i32 %13)
  %15 = load i32, i32* @KM_SLEEP, align 4
  %16 = call i8* @kmem_zalloc(i32 %14, i32 %15)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  store i32* %17, i32** %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %5, align 4
  br label %121

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DEFAULT_ATTR_SIZE(i32 %28)
  %30 = load i32, i32* @KM_SLEEP, align 4
  %31 = call i8* @kmem_zalloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 5
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %27
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ATTR_TABLE_SIZE(i32 %48)
  %50 = call i32 @kmem_free(i32* %47, i32 %49)
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %5, align 4
  br label %121

53:                                               ; preds = %27
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32* %59, i32** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %53
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @CHILD_TABLE_SIZE(i32 %66)
  %68 = load i32, i32* @KM_SLEEP, align 4
  %69 = call i8* @kmem_zalloc(i32 %67, i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 6
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %103

77:                                               ; preds = %65
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @DEFAULT_ATTR_SIZE(i32 %86)
  %88 = call i32 @kmem_free(i32* %85, i32 %87)
  br label %89

89:                                               ; preds = %82, %77
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @ATTR_TABLE_SIZE(i32 %98)
  %100 = call i32 @kmem_free(i32* %97, i32 %99)
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %5, align 4
  br label %121

103:                                              ; preds = %65
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %53
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %116, align 8
  %117 = load i32, i32* @zfs_kobj_release, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %107, %101, %51, %24
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @ATTR_TABLE_SIZE(i32) #1

declare dso_local i32 @DEFAULT_ATTR_SIZE(i32) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

declare dso_local i32 @CHILD_TABLE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
