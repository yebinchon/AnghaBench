; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_list.c_uu_list_pool_create.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_list.c_uu_list_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_7__, i32, i64, i32*, i32 }
%struct.TYPE_7__ = type { i8*, i8* }

@UU_NAME_DOMAIN = common dso_local global i32 0, align 4
@UU_ERROR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UU_LIST_POOL_DEBUG = common dso_local global i32 0, align 4
@UU_ERROR_UNKNOWN_FLAG = common dso_local global i32 0, align 4
@UU_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@uu_lpool_list_lock = common dso_local global i32 0, align 4
@uu_null_lpool = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @uu_list_pool_create(i8* %0, i64 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @UU_NAME_DOMAIN, align 4
  %20 = call i32 @uu_check_name(i8* %18, i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 4
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17, %5
  %28 = load i32, i32* @UU_ERROR_INVALID_ARGUMENT, align 4
  %29 = call i32 @uu_set_error(i32 %28)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %102

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @UU_LIST_POOL_DEBUG, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @UU_ERROR_UNKNOWN_FLAG, align 4
  %38 = call i32 @uu_set_error(i32 %37)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %102

39:                                               ; preds = %30
  %40 = call %struct.TYPE_6__* @uu_zalloc(i32 88)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %12, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @UU_ERROR_NO_MEMORY, align 4
  %45 = call i32 @uu_set_error(i32 %44)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %102

46:                                               ; preds = %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @strlcpy(i32 %49, i8* %50, i32 4)
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 8
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @UU_LIST_POOL_DEBUG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %46
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %46
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 7
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 6
  %73 = call i32 @pthread_mutex_init(i32* %72, i32* null)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = call i8* @UU_PTR_ENCODE(%struct.TYPE_7__* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = call i8* @UU_PTR_ENCODE(%struct.TYPE_7__* %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  %86 = call i32 @pthread_mutex_lock(i32* @uu_lpool_list_lock)
  store %struct.TYPE_6__* @uu_null_lpool, %struct.TYPE_6__** %13, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store %struct.TYPE_6__* @uu_null_lpool, %struct.TYPE_6__** %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %14, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %93, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %99, align 8
  %100 = call i32 @pthread_mutex_unlock(i32* @uu_lpool_list_lock)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %6, align 8
  br label %102

102:                                              ; preds = %68, %43, %36, %27
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %103
}

declare dso_local i32 @uu_check_name(i8*, i32) #1

declare dso_local i32 @uu_set_error(i32) #1

declare dso_local %struct.TYPE_6__* @uu_zalloc(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i8* @UU_PTR_ENCODE(%struct.TYPE_7__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
