; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_calc_and_alloc_stats_ex.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_calc_and_alloc_stats_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_array = type { i32, i64* }

@ZPOOL_CONFIG_VDEV_STATS_EX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stat_array* (i8**, i32, i32*, i32*)* @calc_and_alloc_stats_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stat_array* @calc_and_alloc_stats_ex(i8** %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.stat_array*, align 8
  %12 = alloca %struct.stat_array*, align 8
  %13 = alloca %struct.stat_array*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS_EX, align 4
  %23 = call i64 @nvlist_lookup_nvlist(i32* %21, i32 %22, i32** %10)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @verify(i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS_EX, align 4
  %32 = call i64 @nvlist_lookup_nvlist(i32* %30, i32 %31, i32** %9)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @verify(i32 %34)
  br label %36

36:                                               ; preds = %29, %4
  %37 = load i32, i32* %16, align 4
  %38 = call i8* @safe_malloc(i32 %37)
  %39 = bitcast i8* %38 to %struct.stat_array*
  store %struct.stat_array* %39, %struct.stat_array** %12, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i8* @safe_malloc(i32 %40)
  %42 = bitcast i8* %41 to %struct.stat_array*
  store %struct.stat_array* %42, %struct.stat_array** %11, align 8
  %43 = load i32, i32* %16, align 4
  %44 = call i8* @safe_malloc(i32 %43)
  %45 = bitcast i8* %44 to %struct.stat_array*
  store %struct.stat_array* %45, %struct.stat_array** %13, align 8
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %160, %36
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %163

50:                                               ; preds = %46
  %51 = load i32*, i32** %10, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.stat_array*, %struct.stat_array** %12, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %57, i64 %59
  %61 = call i64 @nvpair64_to_stat_array(i32* %51, i8* %56, %struct.stat_array* %60)
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @verify(i32 %63)
  %65 = load %struct.stat_array*, %struct.stat_array** %12, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %65, i64 %67
  %69 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.stat_array*, %struct.stat_array** %13, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %71, i64 %73
  %75 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 8
  %76 = load %struct.stat_array*, %struct.stat_array** %13, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %76, i64 %78
  %80 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i8* @safe_malloc(i32 %85)
  %87 = bitcast i8* %86 to i64*
  %88 = load %struct.stat_array*, %struct.stat_array** %13, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %88, i64 %90
  %92 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %91, i32 0, i32 1
  store i64* %87, i64** %92, align 8
  %93 = load %struct.stat_array*, %struct.stat_array** %13, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %93, i64 %95
  %97 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.stat_array*, %struct.stat_array** %12, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %99, i64 %101
  %103 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @memcpy(i64* %98, i64* %104, i32 %105)
  %107 = load i32*, i32** %9, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %159

109:                                              ; preds = %50
  %110 = load i32*, i32** %9, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.stat_array*, %struct.stat_array** %11, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %116, i64 %118
  %120 = call i64 @nvpair64_to_stat_array(i32* %110, i8* %115, %struct.stat_array* %119)
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @verify(i32 %122)
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %155, %109
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.stat_array*, %struct.stat_array** %11, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %126, i64 %128
  %130 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %125, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %124
  %134 = load %struct.stat_array*, %struct.stat_array** %11, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %134, i64 %136
  %138 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.stat_array*, %struct.stat_array** %13, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %144, i64 %146
  %148 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %153, %143
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %133
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %124

158:                                              ; preds = %124
  br label %159

159:                                              ; preds = %158, %50
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  br label %46

163:                                              ; preds = %46
  %164 = load %struct.stat_array*, %struct.stat_array** %12, align 8
  %165 = call i32 @free(%struct.stat_array* %164)
  %166 = load %struct.stat_array*, %struct.stat_array** %11, align 8
  %167 = call i32 @free(%struct.stat_array* %166)
  %168 = load %struct.stat_array*, %struct.stat_array** %13, align 8
  ret %struct.stat_array* %168
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i8* @safe_malloc(i32) #1

declare dso_local i64 @nvpair64_to_stat_array(i32*, i8*, %struct.stat_array*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @free(%struct.stat_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
