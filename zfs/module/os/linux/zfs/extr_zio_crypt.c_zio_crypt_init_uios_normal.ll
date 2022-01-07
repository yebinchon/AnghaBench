; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_init_uios_normal.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_init_uios_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }

@KM_SLEEP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i32*)* @zio_crypt_init_uios_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zio_crypt_init_uios_normal(i32 %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_7__* %4, %struct.TYPE_7__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 1, i32* %17, align 4
  store i32 2, i32* %18, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %20, align 8
  %21 = load i32, i32* %17, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 16
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @KM_SLEEP, align 4
  %26 = call %struct.TYPE_8__* @kmem_alloc(i32 %24, i32 %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %19, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @SET_ERROR(i32 %30)
  store i32 %31, i32* %16, align 4
  br label %75

32:                                               ; preds = %7
  %33 = load i32, i32* %18, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 16
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @KM_SLEEP, align 4
  %38 = call %struct.TYPE_8__* @kmem_alloc(i32 %36, i32 %37)
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %20, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 @SET_ERROR(i32 %42)
  store i32 %43, i32* %16, align 4
  br label %75

44:                                               ; preds = %32
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32* %45, i32** %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32* %53, i32** %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %15, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %65, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %71, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %8, align 4
  br label %106

75:                                               ; preds = %41, %29
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %77 = icmp ne %struct.TYPE_8__* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 16
  %83 = trunc i64 %82 to i32
  %84 = call i32 @kmem_free(%struct.TYPE_8__* %79, i32 %83)
  br label %85

85:                                               ; preds = %78, %75
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 16
  %93 = trunc i64 %92 to i32
  %94 = call i32 @kmem_free(%struct.TYPE_8__* %89, i32 %93)
  br label %95

95:                                               ; preds = %88, %85
  %96 = load i32*, i32** %15, align 8
  store i32 0, i32* %96, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %95, %44
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_8__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
