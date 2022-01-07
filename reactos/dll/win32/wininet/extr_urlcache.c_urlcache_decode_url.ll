; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_decode_url.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_decode_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i8* }

@INTERNET_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@INTERNET_SCHEME_HTTP = common dso_local global i64 0, align 8
@INTERNET_SCHEME_HTTPS = common dso_local global i64 0, align 8
@CP_UTF8 = common dso_local global i32 0, align 4
@ERROR_INTERNET_INVALID_URL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @urlcache_decode_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urlcache_decode_url(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 @memset(%struct.TYPE_4__* %8, i32 0, i32 24)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 24, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @InternetCrackUrlA(i8* %15, i32 0, i32 0, %struct.TYPE_4__* %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @INTERNET_SCHEME_UNKNOWN, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 %19, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INTERNET_SCHEME_HTTP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INTERNET_SCHEME_HTTPS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @CP_UTF8, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @MultiByteToWideChar(i32 %32, i32 0, i8* %33, i32 -1, i32* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %149

37:                                               ; preds = %26, %21
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* @CP_UTF8, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @MultiByteToWideChar(i32 %42, i32 0, i8* %43, i32 %50, i32* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %149

57:                                               ; preds = %41
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32* @heap_alloc(i32 %69)
  store i32* %70, i32** %11, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %149

74:                                               ; preds = %64
  %75 = load i32, i32* @CP_UTF8, align 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @MultiByteToWideChar(i32 %75, i32 0, i8* %77, i32 %79, i32* %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @heap_free(i32* %86)
  store i32 0, i32* %4, align 4
  br label %149

88:                                               ; preds = %74
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  br label %100

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %94
  %101 = phi i32* [ %98, %94 ], [ null, %99 ]
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @IdnToUnicode(i32 0, i32* %89, i32 %91, i32* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @heap_free(i32* %104)
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = load i32, i32* @ERROR_INTERNET_INVALID_URL, align 4
  %110 = call i32 @SetLastError(i32 %109)
  store i32 0, i32* %4, align 4
  br label %149

111:                                              ; preds = %100
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %117, %111
  %122 = load i32, i32* @CP_UTF8, align 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i32*, i32** %6, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  br label %137

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %136, %131
  %138 = phi i32* [ %135, %131 ], [ null, %136 ]
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @MultiByteToWideChar(i32 %122, i32 0, i8* %128, i32 -1, i32* %138, i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %149

144:                                              ; preds = %137
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %143, %108, %85, %73, %56, %31
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @InternetCrackUrlA(i8*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @IdnToUnicode(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
