; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_session.c_run_script.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_session.c_run_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AUTO_PROXY_SCRIPT_BUFFER = type { i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*)* @run_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_script(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.AUTO_PROXY_SCRIPT_BUFFER, align 8
  %15 = alloca %struct.TYPE_4__, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = getelementptr inbounds %struct.AUTO_PROXY_SCRIPT_BUFFER, %struct.AUTO_PROXY_SCRIPT_BUFFER* %14, i32 0, i32 0
  store i32 24, i32* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds %struct.AUTO_PROXY_SCRIPT_BUFFER, %struct.AUTO_PROXY_SCRIPT_BUFFER* %14, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.AUTO_PROXY_SCRIPT_BUFFER, %struct.AUTO_PROXY_SCRIPT_BUFFER* %14, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i8* @strdupWA(i32* %22)
  store i8* %23, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %5, align 4
  br label %68

27:                                               ; preds = %4
  %28 = call i32 @InternetInitializeAutoProxyDll(i32 0, i32* null, i32* null, i32* null, %struct.AUTO_PROXY_SCRIPT_BUFFER* %14)
  store i32 %28, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @heap_free(i8* %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %5, align 4
  br label %68

34:                                               ; preds = %27
  %35 = call i32 @memset(%struct.TYPE_4__* %15, i32 0, i32 12)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 12, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @WinHttpCrackUrl(i32* %38, i32 0, i32 0, %struct.TYPE_4__* %15)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @strdupWA_sized(i32 %43, i32 %45)
  store i8* %46, i8** %16, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = load i8*, i8** %16, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i32 @InternetGetProxyInfo(i8* %47, i32 %49, i8* %50, i32 %52, i8** %11, i32* %13)
  store i32 %53, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load i8*, i8** %11, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @parse_script_result(i8* %56, i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @heap_free(i8* %59)
  br label %61

61:                                               ; preds = %55, %41
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 @heap_free(i8* %62)
  br label %64

64:                                               ; preds = %61, %34
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @heap_free(i8* %65)
  %67 = call i32 @InternetDeInitializeAutoProxyDll(i32* null, i32 0)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %30, %25
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @strdupWA(i32*) #1

declare dso_local i32 @InternetInitializeAutoProxyDll(i32, i32*, i32*, i32*, %struct.AUTO_PROXY_SCRIPT_BUFFER*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @WinHttpCrackUrl(i32*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i8* @strdupWA_sized(i32, i32) #1

declare dso_local i32 @InternetGetProxyInfo(i8*, i32, i8*, i32, i8**, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_script_result(i8*, i32*) #1

declare dso_local i32 @InternetDeInitializeAutoProxyDll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
