; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_hash.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ZAP_FLAG_PRE_HASHED_KEY = common dso_local global i32 0, align 4
@ZAP_FLAG_UINT64_KEY = common dso_local global i32 0, align 4
@zfs_crc64_table = common dso_local global i64* null, align 8
@ZFS_CRC64_POLY = common dso_local global i64 0, align 8
@NBBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @zap_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zap_hash(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = call i32 @zap_getflags(%struct.TYPE_6__* %15)
  %17 = load i32, i32* @ZAP_FLAG_PRE_HASHED_KEY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = call i32 @zap_getflags(%struct.TYPE_6__* %21)
  %23 = load i32, i32* @ZAP_FLAG_UINT64_KEY, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %143

31:                                               ; preds = %1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i64*, i64** @zfs_crc64_table, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 128
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ZFS_CRC64_POLY, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @zap_getflags(%struct.TYPE_6__* %46)
  %48 = load i32, i32* @ZAP_FLAG_UINT64_KEY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %103

51:                                               ; preds = %31
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 8
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %97, %51
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %93, %67
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  %78 = ashr i32 %77, 8
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** @zfs_crc64_table, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %7, align 4
  %83 = xor i32 %81, %82
  %84 = and i32 %83, 255
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %80, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = xor i64 %79, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @NBBY, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %76
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %70

96:                                               ; preds = %70
  br label %97

97:                                               ; preds = %96
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %61

102:                                              ; preds = %61
  br label %142

103:                                              ; preds = %31
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %9, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 1
  %115 = zext i1 %114 to i32
  %116 = call i32 @ASSERT(i32 %115)
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %136, %103
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load i32, i32* %4, align 4
  %123 = ashr i32 %122, 8
  %124 = sext i32 %123 to i64
  %125 = load i64*, i64** @zfs_crc64_table, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %126, %128
  %130 = and i32 %129, 255
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %125, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = xor i64 %124, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %121
  %137 = load i32*, i32** %9, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %9, align 8
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %117

141:                                              ; preds = %117
  br label %142

142:                                              ; preds = %141, %102
  br label %143

143:                                              ; preds = %142, %20
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = call i32 @zap_hashbits(%struct.TYPE_6__* %144)
  %146 = sub nsw i32 64, %145
  %147 = zext i32 %146 to i64
  %148 = shl i64 1, %147
  %149 = sub i64 %148, 1
  %150 = xor i64 %149, -1
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = and i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @zap_getflags(%struct.TYPE_6__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zap_hashbits(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
