; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_RedirectNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_RedirectNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@HTTPD_MSG_HEAD = common dso_local global i32 0, align 4
@httpd_RedirectCallBack = common dso_local global i32 0, align 4
@HTTPD_MSG_GET = common dso_local global i32 0, align 4
@HTTPD_MSG_POST = common dso_local global i32 0, align 4
@HTTPD_MSG_DESCRIBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @httpd_RedirectNew(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = add i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.TYPE_5__* @malloc(i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %9, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %76

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @httpd_UrlNew(i32* %23, i8* %24, i32* null, i32* null)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = call i32 @free(%struct.TYPE_5__* %33)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %76

35:                                               ; preds = %22
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  %42 = call i32 @memcpy(i32 %38, i8* %39, i64 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HTTPD_MSG_HEAD, align 4
  %47 = load i32, i32* @httpd_RedirectCallBack, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = bitcast %struct.TYPE_5__* %48 to i32*
  %50 = call i32 @httpd_UrlCatch(i32 %45, i32 %46, i32 %47, i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HTTPD_MSG_GET, align 4
  %55 = load i32, i32* @httpd_RedirectCallBack, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = bitcast %struct.TYPE_5__* %56 to i32*
  %58 = call i32 @httpd_UrlCatch(i32 %53, i32 %54, i32 %55, i32* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HTTPD_MSG_POST, align 4
  %63 = load i32, i32* @httpd_RedirectCallBack, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = bitcast %struct.TYPE_5__* %64 to i32*
  %66 = call i32 @httpd_UrlCatch(i32 %61, i32 %62, i32 %63, i32* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HTTPD_MSG_DESCRIBE, align 4
  %71 = load i32, i32* @httpd_RedirectCallBack, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = bitcast %struct.TYPE_5__* %72 to i32*
  %74 = call i32 @httpd_UrlCatch(i32 %69, i32 %70, i32 %71, i32* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %4, align 8
  br label %76

76:                                               ; preds = %35, %32, %21
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %77
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @httpd_UrlNew(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @httpd_UrlCatch(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
