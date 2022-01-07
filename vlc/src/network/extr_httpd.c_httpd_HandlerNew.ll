; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_HandlerNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_HandlerNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32 }

@HTTPD_MSG_HEAD = common dso_local global i32 0, align 4
@httpd_HandlerCallBack = common dso_local global i32 0, align 4
@HTTPD_MSG_GET = common dso_local global i32 0, align 4
@HTTPD_MSG_POST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @httpd_HandlerNew(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = call %struct.TYPE_5__* @malloc(i32 24)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %66

19:                                               ; preds = %6
  %20 = load i32*, i32** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @httpd_UrlNew(i32* %20, i8* %21, i8* %22, i8* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %33 = call i32 @free(%struct.TYPE_5__* %32)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %66

34:                                               ; preds = %19
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @HTTPD_MSG_HEAD, align 4
  %45 = load i32, i32* @httpd_HandlerCallBack, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %47 = bitcast %struct.TYPE_5__* %46 to i32*
  %48 = call i32 @httpd_UrlCatch(i32 %43, i32 %44, i32 %45, i32* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @HTTPD_MSG_GET, align 4
  %53 = load i32, i32* @httpd_HandlerCallBack, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %55 = bitcast %struct.TYPE_5__* %54 to i32*
  %56 = call i32 @httpd_UrlCatch(i32 %51, i32 %52, i32 %53, i32* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HTTPD_MSG_POST, align 4
  %61 = load i32, i32* @httpd_HandlerCallBack, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = bitcast %struct.TYPE_5__* %62 to i32*
  %64 = call i32 @httpd_UrlCatch(i32 %59, i32 %60, i32 %61, i32* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %7, align 8
  br label %66

66:                                               ; preds = %34, %31, %18
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %67
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @httpd_UrlNew(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @httpd_UrlCatch(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
