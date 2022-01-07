; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_net.c_netconn_send.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_net.c_netconn_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netconn_send(%struct.TYPE_6__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %37, %16
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @min(i64 %24, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @send_ssl_chunk(%struct.TYPE_6__* %30, i32* %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %5, align 4
  br label %68

37:                                               ; preds = %23
  %38 = load i64, i64* %11, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, %38
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %20

50:                                               ; preds = %20
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %5, align 4
  br label %68

52:                                               ; preds = %4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @sock_send(i32 %55, i8* %56, i64 %57, i32 0)
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %60 = icmp eq i32 %58, -1
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @sock_get_error(i32 %62)
  %64 = call i32 @set_last_error(i32 %63)
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %52
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %61, %50, %35
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @send_ssl_chunk(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i32 @sock_send(i32, i8*, i64, i32) #1

declare dso_local i32 @set_last_error(i32) #1

declare dso_local i32 @sock_get_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
