; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_hash_entry_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_hash_entry_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.hash_entry*, %struct.TYPE_10__, i32 }
%struct.hash_entry = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@HASHTABLE_NUM_ENTRIES = common dso_local global i32 0, align 4
@HASHTABLE_BLOCKSIZE = common dso_local global i32 0, align 4
@HASHTABLE_FLAG_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"not right hash table number (%d) expected %d\0A\00", align 1
@HASH_SIGNATURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"not right signature (\22%.4s\22) - expected \22HASH\22\0A\00", align 1
@HASHTABLE_FREE = common dso_local global i32 0, align 4
@HASHTABLE_DEL = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32)* @urlcache_hash_entry_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urlcache_hash_entry_create(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hash_entry*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @urlcache_hash_key(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @HASHTABLE_NUM_ENTRIES, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  %24 = load i32, i32* @HASHTABLE_BLOCKSIZE, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @HASHTABLE_FLAG_BITS, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32, i32* @HASHTABLE_FLAG_BITS, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_12__* @urlcache_get_hash_table(%struct.TYPE_11__* %33, i32 %36)
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %12, align 8
  br label %38

38:                                               ; preds = %108, %4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %114

41:                                               ; preds = %38
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %13, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  %48 = sext i32 %46 to i64
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %54)
  br label %114

56:                                               ; preds = %41
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HASH_SIGNATURE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = ptrtoint i64* %66 to i32
  %68 = sext i32 %67 to i64
  %69 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  br label %114

70:                                               ; preds = %56
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %104, %70
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @HASHTABLE_BLOCKSIZE, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %71
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load %struct.hash_entry*, %struct.hash_entry** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %78, i64 %82
  store %struct.hash_entry* %83, %struct.hash_entry** %17, align 8
  %84 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %85 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @HASHTABLE_FREE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %75
  %90 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %91 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @HASHTABLE_DEL, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89, %75
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %101 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %102, i32* %5, align 4
  br label %141

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %71

107:                                              ; preds = %71
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.TYPE_12__* @urlcache_get_hash_table(%struct.TYPE_11__* %109, i32 %112)
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %12, align 8
  br label %38

114:                                              ; preds = %63, %50, %38
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %117 = call i32 @urlcache_create_hash_table(%struct.TYPE_11__* %115, %struct.TYPE_12__* %116, %struct.TYPE_12__** %12)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @ERROR_SUCCESS, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %5, align 4
  br label %141

123:                                              ; preds = %114
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load %struct.hash_entry*, %struct.hash_entry** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %127, i64 %129
  %131 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %130, i32 0, i32 0
  store i32 %124, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load %struct.hash_entry*, %struct.hash_entry** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %135, i64 %137
  %139 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %138, i32 0, i32 1
  store i32 %132, i32* %139, align 4
  %140 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %123, %121, %95
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @urlcache_hash_key(i32) #1

declare dso_local %struct.TYPE_12__* @urlcache_get_hash_table(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i32 @urlcache_create_hash_table(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
