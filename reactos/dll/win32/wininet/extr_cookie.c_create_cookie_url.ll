; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_cookie.c_create_cookie_url.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_cookie.c_create_cookie_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@UNLEN = common dso_local global i32 0, align 4
@create_cookie_url.cookie_prefix = internal constant [7 x i8] c"Cookie:", align 1
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32, i8*, %struct.TYPE_5__*)* @create_cookie_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @create_cookie_url(i32 %0, i8* %1, i32 %2, i8* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = bitcast %struct.TYPE_5__* %7 to { i32, i8* }*
  %19 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %18, i32 0, i32 0
  store i32 %0, i32* %19, align 8
  %20 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %18, i32 0, i32 1
  store i8* %1, i8** %20, align 8
  %21 = bitcast %struct.TYPE_5__* %8 to { i32, i8* }*
  %22 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %21, i32 0, i32 0
  store i32 %2, i32* %22, align 8
  %23 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %21, i32 0, i32 1
  store i8* %3, i8** %23, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %9, align 8
  %24 = load i32, i32* @UNLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = udiv i64 %25, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = call i32 @GetUserNameW(i8* %27, i32* %15)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %5
  %33 = load i8*, i8** @FALSE, align 8
  store i8* %33, i8** %6, align 8
  store i32 1, i32* %17, align 4
  br label %124

34:                                               ; preds = %5
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 7, %38
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add i64 %40, %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add i64 %44, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i8* @heap_alloc(i32 %54)
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %34
  store i8* null, i8** %6, align 8
  store i32 1, i32* %17, align 4
  br label %124

59:                                               ; preds = %34
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @memcpy(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @create_cookie_url.cookie_prefix, i64 0, i64 0), i32 7)
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 7
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(i8* %64, i8* %27, i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %12, align 8
  store i8 64, i8* %74, align 1
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 1
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memcpy(i8* %76, i8* %78, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %12, align 8
  store i32 0, i32* %16, align 4
  br label %90

90:                                               ; preds = %107, %59
  %91 = load i32, i32* %16, align 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = call signext i8 @tolowerW(i8 signext %101)
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 %102, i8* %106, align 1
  br label %107

107:                                              ; preds = %95
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %16, align 4
  br label %90

110:                                              ; preds = %90
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %12, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i8*, i8** %13, align 8
  store i8* %123, i8** %6, align 8
  store i32 1, i32* %17, align 4
  br label %124

124:                                              ; preds = %110, %58, %32
  %125 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i8*, i8** %6, align 8
  ret i8* %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetUserNameW(i8*, i32*) #2

declare dso_local i8* @heap_alloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local signext i8 @tolowerW(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
