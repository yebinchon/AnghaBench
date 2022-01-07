; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_FileNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_FileNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32 }

@HTTPD_MSG_HEAD = common dso_local global i32 0, align 4
@httpd_FileCallBack = common dso_local global i32 0, align 4
@HTTPD_MSG_GET = common dso_local global i32 0, align 4
@HTTPD_MSG_POST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @httpd_FileNew(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load i8*, i8** %11, align 8
  store i8* %19, i8** %16, align 8
  %20 = load i8*, i8** %16, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %7
  %23 = load i8*, i8** %16, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %7
  %29 = load i8*, i8** %10, align 8
  %30 = call i8* @vlc_mime_Ext2Mime(i8* %29)
  store i8* %30, i8** %16, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i8*, i8** %16, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %17, align 8
  %35 = add i64 24, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.TYPE_5__* @malloc(i32 %36)
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %18, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %39 = icmp eq %struct.TYPE_5__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  br label %98

44:                                               ; preds = %31
  %45 = load i32*, i32** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @httpd_UrlNew(i32* %45, i8* %46, i8* %47, i8* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %58 = call i32 @free(%struct.TYPE_5__* %57)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  br label %98

59:                                               ; preds = %44
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %16, align 8
  %70 = load i64, i64* %17, align 8
  %71 = add i64 %70, 1
  %72 = call i32 @memcpy(i32 %68, i8* %69, i64 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HTTPD_MSG_HEAD, align 4
  %77 = load i32, i32* @httpd_FileCallBack, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %79 = bitcast %struct.TYPE_5__* %78 to i32*
  %80 = call i32 @httpd_UrlCatch(i32 %75, i32 %76, i32 %77, i32* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @HTTPD_MSG_GET, align 4
  %85 = load i32, i32* @httpd_FileCallBack, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %87 = bitcast %struct.TYPE_5__* %86 to i32*
  %88 = call i32 @httpd_UrlCatch(i32 %83, i32 %84, i32 %85, i32* %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @HTTPD_MSG_POST, align 4
  %93 = load i32, i32* @httpd_FileCallBack, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %95 = bitcast %struct.TYPE_5__* %94 to i32*
  %96 = call i32 @httpd_UrlCatch(i32 %91, i32 %92, i32 %93, i32* %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %8, align 8
  br label %98

98:                                               ; preds = %59, %56, %43
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  ret %struct.TYPE_5__* %99
}

declare dso_local i8* @vlc_mime_Ext2Mime(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @httpd_UrlNew(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @httpd_UrlCatch(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
