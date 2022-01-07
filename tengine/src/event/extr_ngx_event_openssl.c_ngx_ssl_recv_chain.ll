; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_openssl.c_ngx_ssl_recv_chain.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_openssl.c_ngx_ssl_recv_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32*, i32* }

@NGX_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_ssl_recv_chain(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %12, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  br label %19

19:                                               ; preds = %81, %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %19
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  store i64 %35, i64* %4, align 8
  br label %101

36:                                               ; preds = %30
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %7, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @ngx_ssl_recv(%struct.TYPE_9__* %48, i32* %49, i64 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %47
  %55 = load i64, i64* %9, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 %55
  store i32* %57, i32** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %10, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %54
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %6, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = icmp eq %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %4, align 8
  br label %101

74:                                               ; preds = %66
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %12, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %8, align 8
  br label %81

81:                                               ; preds = %74, %54
  br label %19

82:                                               ; preds = %47
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load i64, i64* %9, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @NGX_ERROR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88, %85
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %88
  %98 = load i64, i64* %10, align 8
  store i64 %98, i64* %4, align 8
  br label %101

99:                                               ; preds = %82
  %100 = load i64, i64* %9, align 8
  store i64 %100, i64* %4, align 8
  br label %101

101:                                              ; preds = %99, %97, %72, %34
  %102 = load i64, i64* %4, align 8
  ret i64 %102
}

declare dso_local i64 @ngx_ssl_recv(%struct.TYPE_9__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
