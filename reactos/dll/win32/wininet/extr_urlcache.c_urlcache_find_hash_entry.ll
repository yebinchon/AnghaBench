; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_find_hash_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_find_hash_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.hash_entry = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.hash_entry*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

@HASHTABLE_NUM_ENTRIES = common dso_local global i32 0, align 4
@HASHTABLE_BLOCKSIZE = common dso_local global i32 0, align 4
@HASHTABLE_FLAG_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Error: not right hash table number (%d) expected %d\0A\00", align 1
@HASH_SIGNATURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Error: not right signature (\22%.4s\22) - expected \22HASH\22\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.hash_entry**)* @urlcache_find_hash_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urlcache_find_hash_entry(%struct.TYPE_8__* %0, i32 %1, %struct.hash_entry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_entry**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hash_entry*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hash_entry** %2, %struct.hash_entry*** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @urlcache_hash_key(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @HASHTABLE_NUM_ENTRIES, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  %20 = load i32, i32* @HASHTABLE_BLOCKSIZE, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @HASHTABLE_FLAG_BITS, align 4
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_9__* @urlcache_get_hash_table(%struct.TYPE_8__* %25, i32 %28)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %10, align 8
  br label %30

30:                                               ; preds = %91, %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %97

33:                                               ; preds = %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = sext i32 %37 to i64
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %45)
  br label %91

47:                                               ; preds = %33
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HASH_SIGNATURE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = ptrtoint i64* %57 to i32
  %59 = sext i32 %58 to i64
  %60 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  br label %91

61:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %87, %61
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @HASHTABLE_BLOCKSIZE, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.hash_entry*, %struct.hash_entry** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %69, i64 %73
  store %struct.hash_entry* %74, %struct.hash_entry** %13, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %77 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @HASHTABLE_FLAG_BITS, align 4
  %80 = ashr i32 %78, %79
  %81 = icmp eq i32 %75, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %84 = load %struct.hash_entry**, %struct.hash_entry*** %7, align 8
  store %struct.hash_entry* %83, %struct.hash_entry** %84, align 8
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %4, align 4
  br label %99

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %62

90:                                               ; preds = %62
  br label %91

91:                                               ; preds = %90, %54, %41
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.TYPE_9__* @urlcache_get_hash_table(%struct.TYPE_8__* %92, i32 %95)
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %10, align 8
  br label %30

97:                                               ; preds = %30
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %82
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @urlcache_hash_key(i32) #1

declare dso_local %struct.TYPE_9__* @urlcache_get_hash_table(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
