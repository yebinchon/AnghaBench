; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_log_spacemaps.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_log_spacemaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@SPA_FEATURE_LOG_SPACEMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\0ALog Space Maps in Pool:\0A\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Log Spacemap object %llu txg %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @dump_log_spacemaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_log_spacemaps(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = load i32, i32* @SPA_FEATURE_LOG_SPACEMAP, align 4
  %7 = call i32 @spa_feature_is_active(%struct.TYPE_9__* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %51

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = call %struct.TYPE_10__* @avl_first(i32* %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %3, align 8
  br label %15

15:                                               ; preds = %44, %10
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  store i32* null, i32** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = call i32 @spa_meta_objset(%struct.TYPE_9__* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @UINT64_MAX, align 4
  %25 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %26 = call i32 @space_map_open(i32** %4, i32 %20, i64 %23, i32 0, i32 %24, i32 %25)
  %27 = call i32 @VERIFY0(i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @dump_spacemap(i32 %39, i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @space_map_close(i32* %42)
  br label %44

44:                                               ; preds = %18
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = call %struct.TYPE_10__* @AVL_NEXT(i32* %46, %struct.TYPE_10__* %47)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %3, align 8
  br label %15

49:                                               ; preds = %15
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %9
  ret void
}

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_10__* @avl_first(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @space_map_open(i32**, i32, i64, i32, i32, i32) #1

declare dso_local i32 @spa_meta_objset(%struct.TYPE_9__*) #1

declare dso_local i32 @dump_spacemap(i32, i32*) #1

declare dso_local i32 @space_map_close(i32*) #1

declare dso_local %struct.TYPE_10__* @AVL_NEXT(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
