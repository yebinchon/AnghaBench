; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_object_load.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_object_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32**, %struct.TYPE_10__*, i32, i32**, %struct.TYPE_13__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@DDT_NAMELEN = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32)* @ddt_object_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddt_object_load(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %17, i64 %19
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i64 %23
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %8, align 8
  %25 = load i32, i32* @DDT_NAMELEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ddt_object_name(%struct.TYPE_12__* %29, i32 %30, i32 %31, i8* %28)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @zap_lookup(i32 %35, i32 %36, i8* %28, i32 4, i32 1, i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %3
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %110

52:                                               ; preds = %3
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @zap_lookup(i32 %55, i32 %60, i8* %28, i32 4, i32 1, i32* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %52
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %110

76:                                               ; preds = %52
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ddt_object_info(%struct.TYPE_12__* %77, i32 %78, i32 %79, %struct.TYPE_11__* %9)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %110

85:                                               ; preds = %76
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @ddt_object_count(%struct.TYPE_12__* %86, i32 %87, i32 %88, i32* %10)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %110

94:                                               ; preds = %85
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 9
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %104, %106
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %110

110:                                              ; preds = %94, %92, %83, %74, %50
  %111 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ddt_object_name(%struct.TYPE_12__*, i32, i32, i8*) #2

declare dso_local i32 @zap_lookup(i32, i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @ddt_object_info(%struct.TYPE_12__*, i32, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @ddt_object_count(%struct.TYPE_12__*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
