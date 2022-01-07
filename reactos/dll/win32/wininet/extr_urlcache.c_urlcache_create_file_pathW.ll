; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_create_file_pathW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_create_file_pathW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CP_ACP = common dso_local global i32 0, align 4
@CACHE_CONTAINER_NO_SUBDIR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@DIR_LENGTH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i64, i8*, i32*, i64)* @urlcache_create_file_pathW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urlcache_create_file_pathW(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i64 %3, i8* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlenW(i32 %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* @CP_ACP, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @MultiByteToWideChar(i32 %24, i32 0, i32 %25, i32 -1, i8* null, i32 0)
  store i32 %26, i32* %18, align 4
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @CACHE_CONTAINER_NO_SUBDIR, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %7
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32*, i32** %14, align 8
  store i32 0, i32* %37, align 4
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %8, align 8
  br label %148

39:                                               ; preds = %30, %7
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @CACHE_CONTAINER_NO_SUBDIR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load i32, i32* @DIR_LENGTH, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %49, %39
  %59 = load i64, i64* %15, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %16, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %66, %61, %58
  %70 = load i32, i32* %16, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %70, %72
  br i1 %73, label %74, label %144

74:                                               ; preds = %69
  %75 = load i8*, i8** %13, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memcpy(i8* %75, i32 %78, i32 %82)
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @CACHE_CONTAINER_NO_SUBDIR, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %74
  %88 = load i32, i32* @CP_ACP, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DIR_LENGTH, align 4
  %97 = load i8*, i8** %13, align 8
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* @DIR_LENGTH, align 4
  %102 = call i32 @MultiByteToWideChar(i32 %88, i32 0, i32 %95, i32 %96, i8* %100, i32 %101)
  store i32 %102, i32* %19, align 4
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  store i8 92, i8* %108, align 1
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  br label %112

111:                                              ; preds = %74
  store i32 0, i32* %19, align 4
  br label %112

112:                                              ; preds = %111, %87
  %113 = load i32, i32* @CP_ACP, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i32*, i32** %14, align 8
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = udiv i64 %124, 4
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %125, %127
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 %128, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @MultiByteToWideChar(i32 %113, i32 0, i32 %114, i32 -1, i8* %121, i32 %132)
  %134 = load i8*, i8** %13, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = udiv i64 %137, 4
  %139 = sub i64 %138, 1
  %140 = getelementptr inbounds i8, i8* %134, i64 %139
  store i8 0, i8* %140, align 1
  %141 = load i32, i32* %16, align 4
  %142 = load i32*, i32** %14, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i64, i64* @TRUE, align 8
  store i64 %143, i64* %8, align 8
  br label %148

144:                                              ; preds = %69
  %145 = load i32, i32* %16, align 4
  %146 = load i32*, i32** %14, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i64, i64* @FALSE, align 8
  store i64 %147, i64* %8, align 8
  br label %148

148:                                              ; preds = %144, %112, %36
  %149 = load i64, i64* %8, align 8
  ret i64 %149
}

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
