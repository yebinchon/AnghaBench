; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_request.c_secure_proxy_connect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_request.c_secure_proxy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@secure_proxy_connect.verbConnect = internal constant [8 x i8] c"CONNECT\00", align 1
@secure_proxy_connect.fmt = internal constant [6 x i8] c"%s:%u\00", align 1
@FALSE = common dso_local global i32 0, align 4
@http1_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @secure_proxy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secure_proxy_connect(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlenW(i32 %16)
  %18 = add nsw i32 %17, 13
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 1
  %21 = trunc i64 %20 to i32
  %22 = call i64 @heap_alloc(i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sprintfW(i64 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @secure_proxy_connect.fmt, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i32, i32* @http1_1, align 4
  %37 = call i64 @build_header_request_string(%struct.TYPE_6__* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @secure_proxy_connect.verbConnect, i64 0, i64 0), i64 %35, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @heap_free(i64 %38)
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %25
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @strdupWA(i64 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @heap_free(i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @strlen(i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @netconn_send(i32 %54, i64 %55, i32 %56, i32* %9)
  store i32 %57, i32* %3, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @heap_free(i64 %58)
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = call i32 @read_reply(%struct.TYPE_6__* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %49
  br label %66

66:                                               ; preds = %65, %42
  br label %67

67:                                               ; preds = %66, %25
  br label %68

68:                                               ; preds = %67, %1
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @heap_alloc(i32) #1

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @sprintfW(i64, i8*, i32, i32) #1

declare dso_local i64 @build_header_request_string(%struct.TYPE_6__*, i8*, i64, i32) #1

declare dso_local i32 @heap_free(i64) #1

declare dso_local i64 @strdupWA(i64) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @netconn_send(i32, i64, i32, i32*) #1

declare dso_local i32 @read_reply(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
