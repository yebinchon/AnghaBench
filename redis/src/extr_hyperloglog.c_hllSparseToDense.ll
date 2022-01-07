; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllSparseToDense.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllSparseToDense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.hllhdr = type { i64, i32 }

@HLL_DENSE = common dso_local global i64 0, align 8
@C_OK = common dso_local global i32 0, align 4
@HLL_DENSE_SIZE = common dso_local global i32 0, align 4
@HLL_HDR_SIZE = common dso_local global i32 0, align 4
@HLL_REGISTERS = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hllSparseToDense(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hllhdr*, align 8
  %7 = alloca %struct.hllhdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = inttoptr i64 %16 to %struct.hllhdr*
  store %struct.hllhdr* %17, %struct.hllhdr** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load i64, i64* %4, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @sdslen(i64 %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %12, align 8
  %25 = load i64, i64* %4, align 8
  %26 = inttoptr i64 %25 to %struct.hllhdr*
  store %struct.hllhdr* %26, %struct.hllhdr** %6, align 8
  %27 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %28 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HLL_DENSE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @C_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %125

34:                                               ; preds = %1
  %35 = load i32, i32* @HLL_DENSE_SIZE, align 4
  %36 = call i64 @sdsnewlen(i32* null, i32 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = inttoptr i64 %37 to %struct.hllhdr*
  store %struct.hllhdr* %38, %struct.hllhdr** %6, align 8
  %39 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %40 = load %struct.hllhdr*, %struct.hllhdr** %7, align 8
  %41 = bitcast %struct.hllhdr* %39 to i8*
  %42 = bitcast %struct.hllhdr* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = load i64, i64* @HLL_DENSE, align 8
  %44 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %45 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @HLL_HDR_SIZE, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %11, align 8
  br label %50

50:                                               ; preds = %107, %34
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = icmp ult i32* %51, %52
  br i1 %53, label %54, label %108

54:                                               ; preds = %50
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @HLL_SPARSE_IS_ZERO(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @HLL_SPARSE_ZERO_LEN(i32* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %11, align 8
  br label %107

66:                                               ; preds = %54
  %67 = load i32*, i32** %11, align 8
  %68 = call i64 @HLL_SPARSE_IS_XZERO(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @HLL_SPARSE_XZERO_LEN(i32* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32* %77, i32** %11, align 8
  br label %106

78:                                               ; preds = %66
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @HLL_SPARSE_VAL_LEN(i32* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @HLL_SPARSE_VAL_VALUE(i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* @HLL_REGISTERS, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %108

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %94, %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %9, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %96 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @HLL_DENSE_SET_REGISTER(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %90

103:                                              ; preds = %90
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %11, align 8
  br label %106

106:                                              ; preds = %103, %70
  br label %107

107:                                              ; preds = %106, %58
  br label %50

108:                                              ; preds = %88, %50
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @HLL_REGISTERS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @sdsfree(i64 %113)
  %115 = load i32, i32* @C_ERR, align 4
  store i32 %115, i32* %2, align 4
  br label %125

116:                                              ; preds = %108
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @sdsfree(i64 %119)
  %121 = load i64, i64* %5, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* @C_OK, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %116, %112, %32
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @sdslen(i64) #1

declare dso_local i64 @sdsnewlen(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @HLL_SPARSE_IS_ZERO(i32*) #1

declare dso_local i32 @HLL_SPARSE_ZERO_LEN(i32*) #1

declare dso_local i64 @HLL_SPARSE_IS_XZERO(i32*) #1

declare dso_local i32 @HLL_SPARSE_XZERO_LEN(i32*) #1

declare dso_local i32 @HLL_SPARSE_VAL_LEN(i32*) #1

declare dso_local i32 @HLL_SPARSE_VAL_VALUE(i32*) #1

declare dso_local i32 @HLL_DENSE_SET_REGISTER(i32, i32, i32) #1

declare dso_local i32 @sdsfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
