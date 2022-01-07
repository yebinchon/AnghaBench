; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_zio_calculate_range.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_zio_calculate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@FTAG = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@SPA_BLKPTRSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*)* @zio_calculate_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zio_calculate_range(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* null, i32** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @FTAG, align 4
  %15 = call i32 @dsl_pool_hold(i8* %13, i32 %14, i32** %6)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %144

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FTAG, align 4
  %26 = call i32 @dsl_dataset_hold_obj(i32* %21, i32 %24, i32 %25, i32** %7)
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @dsl_pool_rele(i32* %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %144

34:                                               ; preds = %20
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @dmu_objset_from_ds(i32* %35, i32** %8)
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @dsl_dataset_rele(i32* %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %144

44:                                               ; preds = %34
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @dnode_hold(i32* %45, i32 %48, i32 %49, %struct.TYPE_7__** %9)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %144

55:                                               ; preds = %44
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, -1
  br i1 %64, label %65, label %81

65:                                               ; preds = %60, %55
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = ashr i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = zext i32 %75 to i64
  %80 = lshr i64 %78, %79
  store i64 %80, i64* %77, align 8
  br label %81

81:                                               ; preds = %65, %60
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %140

86:                                               ; preds = %81
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %96 = load i32, i32* @FTAG, align 4
  %97 = call i32 @dnode_rele(%struct.TYPE_7__* %95, i32 %96)
  %98 = load i32, i32* @EDOM, align 4
  %99 = call i32 @SET_ERROR(i32 %98)
  store i32 %99, i32* %3, align 4
  br label %144

100:                                              ; preds = %86
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %105, %100
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SPA_BLKPTRSHIFT, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %11, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %135, %110
  %121 = load i32, i32* %12, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = ashr i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = zext i32 %129 to i64
  %134 = lshr i64 %132, %133
  store i64 %134, i64* %131, align 8
  br label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %12, align 4
  br label %120

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %138, %105
  br label %140

140:                                              ; preds = %139, %81
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %142 = load i32, i32* @FTAG, align 4
  %143 = call i32 @dnode_rele(%struct.TYPE_7__* %141, i32 %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %94, %53, %42, %32, %18
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @dsl_pool_hold(i8*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i32, i32, i32**) #1

declare dso_local i32 @dsl_pool_rele(i32*, i32) #1

declare dso_local i32 @dmu_objset_from_ds(i32*, i32**) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @dnode_hold(i32*, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @dnode_rele(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
