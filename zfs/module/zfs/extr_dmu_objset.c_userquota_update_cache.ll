; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_userquota_update_cache.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_userquota_update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @userquota_update_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @userquota_update_cache(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 4
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.TYPE_5__* @avl_find(i32* %15, i8* %16, i32* %8)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load i32, i32* @KM_SLEEP, align 4
  %22 = call %struct.TYPE_5__* @kmem_zalloc(i32 8, i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %7, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlcpy(i32 %25, i8* %26, i32 4)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @avl_insert(i32* %28, %struct.TYPE_5__* %29, i32 %30)
  br label %32

32:                                               ; preds = %20, %3
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @avl_find(i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
