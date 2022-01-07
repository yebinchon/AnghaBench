; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_iterate_deleted_livelists.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_iterate_deleted_livelists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_DELETED_CLONES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32 (%struct.TYPE_12__*, i8*)*, i8*)* @iterate_deleted_livelists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iterate_deleted_livelists(%struct.TYPE_11__* %0, i32 (%struct.TYPE_12__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32 (%struct.TYPE_12__*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 (%struct.TYPE_12__*, i8*)* %1, i32 (%struct.TYPE_12__*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %18 = load i32, i32* @DMU_POOL_DELETED_CLONES, align 4
  %19 = call i32 @zap_lookup(i32* %16, i32 %17, i32 %18, i32 4, i32 1, i32* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %47

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ASSERT0(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @zap_cursor_init(i32* %10, i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %43, %24
  %32 = call i64 @zap_cursor_retrieve(i32* %10, %struct.TYPE_10__* %11)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dsl_deadlist_open(%struct.TYPE_12__* %12, i32* %35, i32 %37)
  %39 = load i32 (%struct.TYPE_12__*, i8*)*, i32 (%struct.TYPE_12__*, i8*)** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 %39(%struct.TYPE_12__* %12, i8* %40)
  %42 = call i32 @dsl_deadlist_close(%struct.TYPE_12__* %12)
  br label %43

43:                                               ; preds = %34
  %44 = call i32 @zap_cursor_advance(i32* %10)
  br label %31

45:                                               ; preds = %31
  %46 = call i32 @zap_cursor_fini(i32* %10)
  br label %47

47:                                               ; preds = %45, %23
  ret void
}

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i32) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @dsl_deadlist_open(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @dsl_deadlist_close(%struct.TYPE_12__*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
