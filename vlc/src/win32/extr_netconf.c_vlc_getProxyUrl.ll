; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_netconf.c_vlc_getProxyUrl.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_netconf.c_vlc_getProxyUrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"http-proxy\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"http-proxy-pwd\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_getProxyUrl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @VLC_UNUSED(i8* %8)
  %10 = call i8* @config_GetPsz(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %45

14:                                               ; preds = %1
  %15 = call i8* @config_GetPsz(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %2, align 8
  br label %45

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @vlc_UrlParse(%struct.TYPE_5__* %6, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = call i32 @vlc_UrlClean(%struct.TYPE_5__* %6)
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @free(i8* %28)
  store i8* null, i8** %2, align 8
  br label %45

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = call i8* @vlc_uri_compose(%struct.TYPE_5__* %6)
  store i8* %38, i8** %7, align 8
  %39 = call i32 @vlc_UrlClean(%struct.TYPE_5__* %6)
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %2, align 8
  br label %45

45:                                               ; preds = %37, %24, %18, %13
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i8* @config_GetPsz(i8*) #1

declare dso_local i64 @vlc_UrlParse(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_5__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @vlc_uri_compose(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
