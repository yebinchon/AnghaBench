; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_StreamNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_StreamNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32*, i64, i64, i32, i32*, i64, i32, i32 }

@HTTPD_MSG_HEAD = common dso_local global i32 0, align 4
@httpd_StreamCallBack = common dso_local global i32 0, align 4
@HTTPD_MSG_GET = common dso_local global i32 0, align 4
@HTTPD_MSG_POST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @httpd_StreamNew(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = call %struct.TYPE_5__* @malloc(i32 80)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %101

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @httpd_UrlNew(i32* %18, i8* %19, i8* %20, i8* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %31 = call i32 @free(%struct.TYPE_5__* %30)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %101

32:                                               ; preds = %17
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 12
  %35 = call i32 @vlc_mutex_init(i32* %34)
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %32
  %45 = load i8*, i8** %8, align 8
  %46 = call i8* @vlc_mime_Ext2Mime(i8* %45)
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @xstrdup(i8* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 10
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 9
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 5000000, i32* %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @xmalloc(i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 5
  store i32* null, i32** %75, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @HTTPD_MSG_HEAD, align 4
  %80 = load i32, i32* @httpd_StreamCallBack, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %82 = bitcast %struct.TYPE_5__* %81 to i32*
  %83 = call i32 @httpd_UrlCatch(i32 %78, i32 %79, i32 %80, i32* %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @HTTPD_MSG_GET, align 4
  %88 = load i32, i32* @httpd_StreamCallBack, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %90 = bitcast %struct.TYPE_5__* %89 to i32*
  %91 = call i32 @httpd_UrlCatch(i32 %86, i32 %87, i32 %88, i32* %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @HTTPD_MSG_POST, align 4
  %96 = load i32, i32* @httpd_StreamCallBack, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %98 = bitcast %struct.TYPE_5__* %97 to i32*
  %99 = call i32 @httpd_UrlCatch(i32 %94, i32 %95, i32 %96, i32* %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %6, align 8
  br label %101

101:                                              ; preds = %47, %29, %16
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %102
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @httpd_UrlNew(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i8* @vlc_mime_Ext2Mime(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @xmalloc(i32) #1

declare dso_local i32 @httpd_UrlCatch(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
