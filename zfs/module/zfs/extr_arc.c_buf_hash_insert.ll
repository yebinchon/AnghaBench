; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_buf_hash_insert.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_buf_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, i32, i32 }

@buf_hash_table = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ARC_FLAG_IN_HASH_TABLE = common dso_local global i32 0, align 4
@arcstat_hash_collisions = common dso_local global i32 0, align 4
@arcstat_hash_chains = common dso_local global i32 0, align 4
@arcstat_hash_chain_max = common dso_local global i32 0, align 4
@arcstat_hash_elements = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, i32**)* @buf_hash_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @buf_hash_insert(%struct.TYPE_8__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @BUF_HASH_INDEX(i32 %12, i32* %14, i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32* @BUF_HASH_LOCK(i64 %19)
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = call i32 @DVA_IS_EMPTY(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = call i32 @HDR_IN_HASH_TABLE(%struct.TYPE_8__* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32**, i32*** %5, align 8
  %41 = icmp ne i32** %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load i32*, i32** %7, align 8
  %44 = load i32**, i32*** %5, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @mutex_enter(i32* %45)
  br label %51

47:                                               ; preds = %2
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @MUTEX_HELD(i32* %48)
  %50 = call i32 @ASSERT(i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @buf_hash_table, i32 0, i32 0), align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %52, i64 %53
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %74, %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = icmp ne %struct.TYPE_8__* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = call i64 @HDR_EQUAL(i32 %62, i32* %64, i64 %67, %struct.TYPE_8__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %3, align 8
  br label %113

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %56

80:                                               ; preds = %56
  %81 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @buf_hash_table, i32 0, i32 0), align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %81, i64 %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @buf_hash_table, i32 0, i32 0), align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %88, i64 %89
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = load i32, i32* @ARC_FLAG_IN_HASH_TABLE, align 4
  %93 = call i32 @arc_hdr_set_flags(%struct.TYPE_8__* %91, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %80
  %97 = load i32, i32* @arcstat_hash_collisions, align 4
  %98 = call i32 @ARCSTAT_BUMP(i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @arcstat_hash_chains, align 4
  %103 = call i32 @ARCSTAT_BUMP(i32 %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* @arcstat_hash_chain_max, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @ARCSTAT_MAX(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %80
  %109 = load i32, i32* @arcstat_hash_elements, align 4
  %110 = call i32 @ARCSTAT_BUMP(i32 %109)
  %111 = load i32, i32* @arcstat_hash_elements, align 4
  %112 = call i32 @ARCSTAT_MAXSTAT(i32 %111)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %113

113:                                              ; preds = %108, %71
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %114
}

declare dso_local i64 @BUF_HASH_INDEX(i32, i32*, i64) #1

declare dso_local i32* @BUF_HASH_LOCK(i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DVA_IS_EMPTY(i32*) #1

declare dso_local i32 @HDR_IN_HASH_TABLE(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @HDR_EQUAL(i32, i32*, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @arc_hdr_set_flags(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ARCSTAT_BUMP(i32) #1

declare dso_local i32 @ARCSTAT_MAX(i32, i32) #1

declare dso_local i32 @ARCSTAT_MAXSTAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
