; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_tcp.c_tcp_send.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_tcp.c_tcp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@INFINITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_send(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = call i32 @memset(i32* %9, i32 0, i32 4)
  br label %19

19:                                               ; preds = %70, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @WriteFile(i32 %28, i64 %34, i32 %37, i32* null, i32* %9)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @INFINITE, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @WaitForSingleObjectEx(i32 %43, i32 %44, i32 %45)
  switch i32 %46, label %49 [
    i32 129, label %47
    i32 128, label %48
    i32 130, label %52
  ]

47:                                               ; preds = %23
  br label %59

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %23, %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 772, i32* %51, align 8
  br label %52

52:                                               ; preds = %23, %49
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @CancelIo(i32 %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @GetOverlappedResult(i32 %64, i32* %9, i64* %8, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @False, align 4
  store i32 %69, i32* %3, align 4
  br label %78

70:                                               ; preds = %59
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  br label %19

76:                                               ; preds = %19
  %77 = load i32, i32* @True, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %68
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @WriteFile(i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @WaitForSingleObjectEx(i32, i32, i32) #1

declare dso_local i32 @CancelIo(i32) #1

declare dso_local i32 @GetOverlappedResult(i32, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
