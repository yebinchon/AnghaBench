; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_cookie.c_get_cookie_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_cookie.c_get_cookie_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@get_cookie_header.cookieW = internal constant [8 x i8] c"Cookie: ", align 1
@cookie_cs = common dso_local global i32 0, align 4
@INTERNET_COOKIE_HTTPONLY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_cookie_header(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = call i32 @EnterCriticalSection(i32* @cookie_cs)
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @substrz(i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @substrz(i8* %16)
  %18 = load i32, i32* @INTERNET_COOKIE_HTTPONLY, align 4
  %19 = call i64 @get_cookie(i32 %15, i32 %17, i32 %18, %struct.TYPE_4__* %8)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = call i32 @LeaveCriticalSection(i32* @cookie_cs)
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %4, align 8
  br label %72

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 1
  %36 = add i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = call i8* @heap_alloc(i32 %37)
  store i8* %38, i8** %10, align 8
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %30
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @memcpy(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_cookie_header.cookieW, i64 0, i64 0), i32 8)
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 8
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @cookie_set_to_string(%struct.TYPE_4__* %8, i8* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @heap_free(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  store i8 13, i8* %56, align 1
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %11, align 8
  store i8 10, i8* %58, align 1
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %11, align 8
  store i8 0, i8* %60, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = load i8**, i8*** %7, align 8
  store i8* %62, i8** %63, align 8
  br label %66

64:                                               ; preds = %30
  %65 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %64, %41
  br label %69

67:                                               ; preds = %26
  %68 = load i8**, i8*** %7, align 8
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %67, %66
  %70 = call i32 @LeaveCriticalSection(i32* @cookie_cs)
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %69, %23
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @EnterCriticalSection(i32*) #2

declare dso_local i64 @get_cookie(i32, i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @substrz(i8*) #2

declare dso_local i32 @LeaveCriticalSection(i32*) #2

declare dso_local i8* @heap_alloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @cookie_set_to_string(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @heap_free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
