; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_newTreeKey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_newTreeKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@LSM_SHM_CHUNK_SIZE = common dso_local global i32 0, align 4
@LSM_SHM_CHUNK_HDR = common dso_local global i32 0, align 4
@LSM_CONTIGUOUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_9__*, i32*, i8*, i32, i8*, i32, i32*)* @newTreeKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @newTreeKey(%struct.TYPE_9__* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = call i32 @treeShmalloc(%struct.TYPE_9__* %25, i32 1, i32 16, i32* %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = load i32, i32* %17, align 4
  %31 = call i8* @treeShmptr(%struct.TYPE_9__* %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %16, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %7
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  br label %134

37:                                               ; preds = %7
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %19, align 4
  store i32 %44, i32* %21, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %20, align 8
  br label %47

47:                                               ; preds = %93, %37
  %48 = load i32*, i32** %20, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %97

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %80, %50
  %52 = load i32, i32* %19, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @LSM_SHM_CHUNK_SIZE, align 4
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %58, %60
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* @LSM_SHM_CHUNK_HDR, align 4
  %64 = call i32 @LSM_MAX(i32 %62, i32 %63)
  store i32 %64, i32* %24, align 4
  %65 = load i32, i32* @LSM_SHM_CHUNK_SIZE, align 4
  %66 = load i32, i32* %24, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @LSM_MIN(i32 %67, i32 %68)
  store i32 %69, i32* %23, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = load i32, i32* %23, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = call i32 @treeShmalloc(%struct.TYPE_9__* %71, i32 0, i32 %72, i32* %73)
  %75 = call i8* @treeShmptr(%struct.TYPE_9__* %70, i32 %74)
  %76 = bitcast i8* %75 to i32*
  store i32* %76, i32** %22, align 8
  %77 = load i32*, i32** %22, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %54
  br label %93

80:                                               ; preds = %54
  %81 = load i32*, i32** %22, align 8
  %82 = load i32*, i32** %20, align 8
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %19, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %23, align 4
  %89 = call i32 @memcpy(i32* %81, i32* %87, i32 %88)
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* %19, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %19, align 4
  br label %51

93:                                               ; preds = %79, %51
  %94 = load i8*, i8** %13, align 8
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** %20, align 8
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %19, align 4
  store i32 %96, i32* %21, align 4
  store i8* null, i8** %13, align 8
  br label %47

97:                                               ; preds = %47
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 16
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %100, %102
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @LSM_MAX(i32 0, i32 %104)
  %106 = sext i32 %105 to i64
  %107 = add i64 %103, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* @LSM_SHM_CHUNK_SIZE, align 4
  %111 = sub nsw i32 %110, 1
  %112 = xor i32 %111, -1
  %113 = and i32 %109, %112
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @LSM_SHM_CHUNK_SIZE, align 4
  %116 = sub nsw i32 %115, 1
  %117 = xor i32 %116, -1
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %113, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %97
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  br label %127

123:                                              ; preds = %97
  %124 = load i64, i64* @LSM_CONTIGUOUS, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  br label %134

132:                                              ; preds = %127
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %8, align 8
  br label %134

134:                                              ; preds = %132, %131, %36
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  ret %struct.TYPE_10__* %135
}

declare dso_local i32 @treeShmalloc(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i8* @treeShmptr(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @LSM_MAX(i32, i32) #1

declare dso_local i32 @LSM_MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
