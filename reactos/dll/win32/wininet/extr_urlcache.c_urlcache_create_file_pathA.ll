; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_create_file_pathA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_create_file_pathA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CACHE_CONTAINER_NO_SUBDIR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@DIR_LENGTH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i64, i8*, i32*)* @urlcache_create_file_pathA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urlcache_create_file_pathA(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i64 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @CACHE_CONTAINER_NO_SUBDIR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** %13, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %7, align 4
  br label %110

30:                                               ; preds = %21, %6
  %31 = load i32, i32* @CP_ACP, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WideCharToMultiByte(i32 %31, i32 0, i32 %34, i32 -1, i8* null, i32 0, i32* null, i32* null)
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @strlen(i32 %37)
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %16, align 4
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @CACHE_CONTAINER_NO_SUBDIR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @DIR_LENGTH, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %17, align 4
  br label %47

46:                                               ; preds = %30
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 1
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %56, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %47
  %61 = load i32, i32* @CP_ACP, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @WideCharToMultiByte(i32 %61, i32 0, i32 %64, i32 -1, i8* %65, i32 %66, i32* null, i32* null)
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %60
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %17, align 4
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @memcpy(i8* %74, i32 %81, i32 %83)
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %86, %87
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %85, i64 %90
  store i8 92, i8* %91, align 1
  br label %92

92:                                               ; preds = %70, %60
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @memcpy(i8* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = load i32*, i32** %13, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %7, align 4
  br label %110

106:                                              ; preds = %47
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %13, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %106, %92, %27
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
