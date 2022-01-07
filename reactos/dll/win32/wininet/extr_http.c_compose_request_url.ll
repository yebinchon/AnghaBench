; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_compose_request_url.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_compose_request_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i64 }

@compose_request_url.http = internal constant [8 x i8] c"http://\00", align 1
@compose_request_url.https = internal constant [9 x i8] c"https://\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*)* @compose_request_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compose_request_url(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @compose_request_url.https, i64 0, i64 0), i8** %4, align 8
  br label %21

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @compose_request_url.http, i64 0, i64 0), i8** %4, align 8
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strlenW(i8* %22)
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strlenW(i8* %24)
  %26 = add nsw i32 %23, %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 47
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = add nsw i32 %26, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlenW(i8* %39)
  %41 = add nsw i32 %36, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  %45 = mul i64 %44, 1
  %46 = call i8* @heap_alloc(i64 %45)
  store i8* %46, i8** %5, align 8
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %88

49:                                               ; preds = %21
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcpyW(i8* %50, i8* %51)
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strlenW(i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @strcpyW(i8* %58, i8* %59)
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @strlenW(i8* %61)
  %63 = load i8*, i8** %6, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %6, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 47
  br i1 %72, label %73, label %76

73:                                               ; preds = %49
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  store i8 47, i8* %74, align 1
  br label %76

76:                                               ; preds = %73, %49
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcpyW(i8* %77, i8* %80)
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @strlenW(i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %6, align 8
  %87 = load i8*, i8** %6, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %76, %21
  %89 = load i8*, i8** %5, align 8
  ret i8* %89
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @heap_alloc(i64) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
