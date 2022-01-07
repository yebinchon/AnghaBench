; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_alloc.c_alloc_trim.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_alloc.c_alloc_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }

@MAX_REQUEST = common dso_local global i64 0, align 8
@TOP_FOOT_SIZE = common dso_local global i64 0, align 8
@DEFAULT_GRANULARITY = common dso_local global i64 0, align 8
@SIZE_T_ONE = common dso_local global i64 0, align 8
@CALL_MREMAP_NOMOVE = common dso_local global i32 0, align 4
@MFAIL = common dso_local global i64 0, align 8
@MAX_SIZE_T = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64)* @alloc_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_trim(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @MAX_REQUEST, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %128

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i64 @is_initialized(%struct.TYPE_11__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %128

17:                                               ; preds = %13
  %18 = load i64, i64* @TOP_FOOT_SIZE, align 8
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %108

26:                                               ; preds = %17
  %27 = load i64, i64* @DEFAULT_GRANULARITY, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = sub i64 %30, %31
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @SIZE_T_ONE, align 8
  %35 = sub i64 %33, %34
  %36 = add i64 %32, %35
  %37 = load i64, i64* %6, align 8
  %38 = udiv i64 %36, %37
  %39 = load i64, i64* @SIZE_T_ONE, align 8
  %40 = sub i64 %38, %39
  %41 = load i64, i64* %6, align 8
  %42 = mul i64 %40, %41
  store i64 %42, i64* %7, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call %struct.TYPE_12__* @segment_holding(%struct.TYPE_11__* %43, i8* %47)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %8, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %26
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = call i32 @has_segment_link(%struct.TYPE_11__* %55, %struct.TYPE_12__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %62, %63
  store i64 %64, i64* %9, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* @CALL_MREMAP_NOMOVE, align 4
  %73 = call i64 @CALL_MREMAP(i64 %67, i64 %70, i64 %71, i32 %72)
  %74 = load i64, i64* @MFAIL, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %85, label %76

76:                                               ; preds = %59
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %79, %80
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @CALL_MUNMAP(i64 %81, i64 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76, %59
  %86 = load i64, i64* %7, align 8
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %85, %76
  br label %88

88:                                               ; preds = %87, %54, %26
  %89 = load i64, i64* %5, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = sub i64 %103, %104
  %106 = call i32 @init_top(%struct.TYPE_11__* %97, i64 %100, i64 %105)
  br label %107

107:                                              ; preds = %91, %88
  br label %108

108:                                              ; preds = %107, %17
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = call i64 @release_unused_segments(%struct.TYPE_11__* %109)
  %111 = load i64, i64* %5, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %5, align 8
  %113 = load i64, i64* %5, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ugt i64 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load i64, i64* @MAX_SIZE_T, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %115, %108
  br label %128

128:                                              ; preds = %127, %13, %2
  %129 = load i64, i64* %5, align 8
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 1, i32 0
  ret i32 %132
}

declare dso_local i64 @is_initialized(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @segment_holding(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @has_segment_link(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @CALL_MREMAP(i64, i64, i64, i32) #1

declare dso_local i64 @CALL_MUNMAP(i64, i64) #1

declare dso_local i32 @init_top(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i64 @release_unused_segments(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
