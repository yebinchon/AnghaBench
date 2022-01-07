; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_match.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i64*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { i32, i64* }
%struct.TYPE_9__ = type { i32, i64* }

@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i64, %struct.TYPE_9__*)* @ngx_http_sub_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_sub_match(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %17, i64 %21
  store i64* %22, i64** %11, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64* %30, i64** %8, align 8
  br label %73

31:                                               ; preds = %3
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %35, i64 %40
  store i64* %41, i64** %9, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64* %44, i64** %8, align 8
  br label %45

45:                                               ; preds = %64, %31
  %46 = load i64*, i64** %8, align 8
  %47 = load i64*, i64** %9, align 8
  %48 = icmp ult i64* %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64*, i64** %10, align 8
  %51 = load i64*, i64** %11, align 8
  %52 = icmp ult i64* %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %69

55:                                               ; preds = %53
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @ngx_tolower(i64 %57)
  %59 = load i64*, i64** %10, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %63, i64* %4, align 8
  br label %110

64:                                               ; preds = %55
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %8, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %10, align 8
  br label %45

69:                                               ; preds = %53
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  store i64* %72, i64** %8, align 8
  br label %73

73:                                               ; preds = %69, %25
  br label %74

74:                                               ; preds = %97, %73
  %75 = load i64*, i64** %8, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = icmp ult i64* %75, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i64*, i64** %10, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = icmp ult i64* %83, %84
  br label %86

86:                                               ; preds = %82, %74
  %87 = phi i1 [ false, %74 ], [ %85, %82 ]
  br i1 %87, label %88, label %102

88:                                               ; preds = %86
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @ngx_tolower(i64 %90)
  %92 = load i64*, i64** %10, align 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %96, i64* %4, align 8
  br label %110

97:                                               ; preds = %88
  %98 = load i64*, i64** %8, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %8, align 8
  %100 = load i64*, i64** %10, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %10, align 8
  br label %74

102:                                              ; preds = %86
  %103 = load i64*, i64** %10, align 8
  %104 = load i64*, i64** %11, align 8
  %105 = icmp ne i64* %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %107, i64* %4, align 8
  br label %110

108:                                              ; preds = %102
  %109 = load i64, i64* @NGX_OK, align 8
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %108, %106, %95, %62
  %111 = load i64, i64* %4, align 8
  ret i64 %111
}

declare dso_local i64 @ngx_tolower(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
