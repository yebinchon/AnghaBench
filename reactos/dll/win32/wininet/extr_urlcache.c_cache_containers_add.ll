; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_containers_add.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_containers_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i32*, i8*, i32, i64, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"couldn't create mutex (error is %d)\0A\00", align 1
@UrlContainers = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @cache_containers_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_containers_add(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i8* @heap_alloc(i32 56)
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %91

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.TYPE_4__* @heap_strdupW(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %20
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = call i32 @heap_free(%struct.TYPE_4__* %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %5, align 4
  br label %91

40:                                               ; preds = %20
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i8* @heap_alloc(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @heap_free(%struct.TYPE_4__* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = call i32 @heap_free(%struct.TYPE_4__* %55)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %5, align 4
  br label %91

58:                                               ; preds = %40
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @memcpy(i8* %61, i8* %62, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @CharLowerW(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @cache_container_create_object_name(i32 %68, i8 signext 33)
  %70 = load i32, i32* @FALSE, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32* @CreateMutexW(i32* null, i32 %70, i32 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  %75 = icmp eq i32* %72, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %58
  %77 = call i32 (...) @GetLastError()
  %78 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i32 @heap_free(%struct.TYPE_4__* %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = call i32 @heap_free(%struct.TYPE_4__* %83)
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %5, align 4
  br label %91

86:                                               ; preds = %58
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = call i32 @list_add_head(i32* @UrlContainers, i32* %88)
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %86, %76, %50, %36, %18
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_4__* @heap_strdupW(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @CharLowerW(i32) #1

declare dso_local i32 @cache_container_create_object_name(i32, i8 signext) #1

declare dso_local i32* @CreateMutexW(i32*, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
