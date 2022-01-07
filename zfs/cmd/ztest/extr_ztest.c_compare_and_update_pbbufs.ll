; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_compare_and_update_pbbufs.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_compare_and_update_pbbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"future leak: got %llx, open txg is %llx\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"wrong index: got %llx, wanted %llx+%llx\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"pack/bigH mismatch in %p/%p\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"pack/bigT mismatch in %p/%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compare_and_update_pbbufs(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %136, %7
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %139

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = bitcast %struct.TYPE_6__* %24 to i8*
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 24
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = bitcast i8* %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %16, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = bitcast %struct.TYPE_6__* %31 to i8*
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %13, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = bitcast i8* %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %17, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %40 = bitcast %struct.TYPE_6__* %39 to i8*
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 -1
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %18, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %47 = ptrtoint %struct.TYPE_6__* %46 to i64
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = ptrtoint %struct.TYPE_6__* %48 to i64
  %50 = sub i64 %47, %49
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %57 = ptrtoint %struct.TYPE_6__* %56 to i64
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = ptrtoint %struct.TYPE_6__* %58 to i64
  %60 = sub i64 %57, %59
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %23
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 (i32, i8*, ...) @fatal(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %23
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 (i32, i8*, ...) @fatal(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %82, %77
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %100 = call i64 @bcmp(%struct.TYPE_6__* %98, %struct.TYPE_6__* %99, i32 24)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %105 = call i32 (i32, i8*, ...) @fatal(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %103, %struct.TYPE_6__* %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %109 = call i64 @bcmp(%struct.TYPE_6__* %107, %struct.TYPE_6__* %108, i32 24)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %114 = call i32 (i32, i8*, ...) @fatal(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %112, %struct.TYPE_6__* %113)
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %116, %117
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = call i64 @ztest_random(i64 -2)
  %125 = add nsw i64 1, %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %130 = bitcast %struct.TYPE_6__* %128 to i8*
  %131 = bitcast %struct.TYPE_6__* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 24, i1 false)
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %134 = bitcast %struct.TYPE_6__* %132 to i8*
  %135 = bitcast %struct.TYPE_6__* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 24, i1 false)
  br label %136

136:                                              ; preds = %115
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %19

139:                                              ; preds = %19
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @fatal(i32, i8*, ...) #1

declare dso_local i64 @bcmp(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @ztest_random(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
