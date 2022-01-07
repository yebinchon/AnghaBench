; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_zpool_find_import_scan_add_slice.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_zpool_find_import_scan_add_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32, i64, i32*, i32*, i32*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@IMPORT_ORDER_SCAN_OFFSET = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i8*, i8*, i32)* @zpool_find_import_scan_add_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zpool_find_import_scan_add_slice(i32* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.TYPE_7__* @zutil_alloc(i32* %15, i32 56)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %14, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @asprintf(%struct.TYPE_7__** %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %25 = call i32 @free(%struct.TYPE_7__* %24)
  br label %68

26:                                               ; preds = %6
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @IMPORT_ORDER_SCAN_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @B_FALSE, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @pthread_mutex_lock(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %51 = call i64 @avl_find(i32* %49, %struct.TYPE_7__* %50, i32* %13)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %26
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @free(%struct.TYPE_7__* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %59 = call i32 @free(%struct.TYPE_7__* %58)
  br label %65

60:                                               ; preds = %26
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @avl_insert(i32* %61, %struct.TYPE_7__* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %53
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @pthread_mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %65, %23
  ret void
}

declare dso_local %struct.TYPE_7__* @zutil_alloc(i32*, i32) #1

declare dso_local i32 @asprintf(%struct.TYPE_7__**, i8*, i8*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @avl_find(i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
