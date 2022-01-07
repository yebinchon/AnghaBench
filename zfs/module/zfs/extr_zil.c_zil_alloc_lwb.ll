; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zil.c_zil_alloc_lwb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zil.c_zil_alloc_lwb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i8*, i64, i32*, i32*, i32*, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@zil_lwb_cache = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@LWB_STATE_CLOSED = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_ZILOG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i32*, i8*, i32, i8*)* @zil_alloc_lwb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @zil_alloc_lwb(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* @zil_lwb_cache, align 4
  %13 = load i32, i32* @KM_SLEEP, align 4
  %14 = call %struct.TYPE_8__* @kmem_cache_alloc(i32 %12, i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 16
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %17, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 15
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 14
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 13
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @LWB_STATE_CLOSED, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @BP_GET_LSIZE(i32* %31)
  %33 = call i32 @zio_buf_alloc(i8* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 10
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 9
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 7
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @BP_GET_CHECKSUM(i32* %47)
  %49 = load i64, i64* @ZIO_CHECKSUM_ZILOG2, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %5
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 4, i32* %53, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i8* @BP_GET_LSIZE(i32* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  br label %66

58:                                               ; preds = %5
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i8* @BP_GET_LSIZE(i32* %61)
  %63 = getelementptr i8, i8* %62, i64 -4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %58, %51
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 @mutex_enter(i32* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = call i32 @list_insert_tail(i32* %71, %struct.TYPE_8__* %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i32 @mutex_exit(i32* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = call i32 @MUTEX_HELD(i32* %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @ASSERT(i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = call i32 @avl_is_empty(i32* %85)
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = call i32 @list_is_empty(i32* %89)
  %91 = call i32 @VERIFY(i32 %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = call i32 @list_is_empty(i32* %93)
  %95 = call i32 @VERIFY(i32 %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  ret %struct.TYPE_8__* %96
}

declare dso_local %struct.TYPE_8__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @zio_buf_alloc(i8*) #1

declare dso_local i8* @BP_GET_LSIZE(i32*) #1

declare dso_local i64 @BP_GET_CHECKSUM(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @avl_is_empty(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @list_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
