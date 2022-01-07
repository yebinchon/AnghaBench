; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_init_uios.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_init_uios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i8* }
%struct.TYPE_12__ = type { i32, i32* }

@DMU_OT_NONE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i8* null, align 8
@ZIO_DATA_MAC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*, i32, i32, i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*, i32**, i32*, i32*)* @zio_crypt_init_uios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zio_crypt_init_uios(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32* %7, %struct.TYPE_11__* %8, %struct.TYPE_11__* %9, i32* %10, i32** %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_11__*, align 8
  %25 = alloca %struct.TYPE_11__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32**, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %16, align 4
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store i32* %3, i32** %19, align 8
  store i32* %4, i32** %20, align 8
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32* %7, i32** %23, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32** %11, i32*** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %32 = load i32, i32* %18, align 4
  %33 = call i64 @DMU_OT_IS_ENCRYPTED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %14
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* @DMU_OT_NONE, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %14
  %40 = phi i1 [ true, %14 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load i32, i32* %18, align 4
  switch i32 %43, label %71 [
    i32 128, label %44
    i32 129, label %57
  ]

44:                                               ; preds = %39
  %45 = load i32, i32* %16, align 4
  %46 = load i32*, i32** %19, align 8
  %47 = load i32*, i32** %20, align 8
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %22, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %52 = load i32*, i32** %26, align 8
  %53 = load i32**, i32*** %27, align 8
  %54 = load i32*, i32** %28, align 8
  %55 = load i32*, i32** %29, align 8
  %56 = call i32 @zio_crypt_init_uios_zil(i32 %45, i32* %46, i32* %47, i32 %48, i32 %49, %struct.TYPE_11__* %50, %struct.TYPE_11__* %51, i32* %52, i32** %53, i32* %54, i32* %55)
  store i32 %56, i32* %30, align 4
  br label %84

57:                                               ; preds = %39
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32*, i32** %19, align 8
  %61 = load i32*, i32** %20, align 8
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %22, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %66 = load i32*, i32** %26, align 8
  %67 = load i32**, i32*** %27, align 8
  %68 = load i32*, i32** %28, align 8
  %69 = load i32*, i32** %29, align 8
  %70 = call i32 @zio_crypt_init_uios_dnode(i32 %58, i32 %59, i32* %60, i32* %61, i32 %62, i32 %63, %struct.TYPE_11__* %64, %struct.TYPE_11__* %65, i32* %66, i32** %67, i32* %68, i32* %69)
  store i32 %70, i32* %30, align 4
  br label %84

71:                                               ; preds = %39
  %72 = load i32, i32* %16, align 4
  %73 = load i32*, i32** %19, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = load i32, i32* %21, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %78 = load i32*, i32** %26, align 8
  %79 = call i32 @zio_crypt_init_uios_normal(i32 %72, i32* %73, i32* %74, i32 %75, %struct.TYPE_11__* %76, %struct.TYPE_11__* %77, i32* %78)
  store i32 %79, i32* %30, align 4
  %80 = load i32**, i32*** %27, align 8
  store i32* null, i32** %80, align 8
  %81 = load i32*, i32** %28, align 8
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* @B_FALSE, align 4
  %83 = load i32*, i32** %29, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %71, %57, %44
  %85 = load i32, i32* %30, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %111

88:                                               ; preds = %84
  %89 = load i8*, i8** @UIO_SYSSPACE, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @UIO_SYSSPACE, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  %104 = bitcast i32* %103 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %31, align 8
  %105 = load i32*, i32** %23, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  store i32 0, i32* %15, align 4
  br label %113

111:                                              ; preds = %87
  %112 = load i32, i32* %30, align 4
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %111, %88
  %114 = load i32, i32* %15, align 4
  ret i32 %114
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @DMU_OT_IS_ENCRYPTED(i32) #1

declare dso_local i32 @zio_crypt_init_uios_zil(i32, i32*, i32*, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*, i32**, i32*, i32*) #1

declare dso_local i32 @zio_crypt_init_uios_dnode(i32, i32, i32*, i32*, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*, i32**, i32*, i32*) #1

declare dso_local i32 @zio_crypt_init_uios_normal(i32, i32*, i32*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
