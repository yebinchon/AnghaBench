; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_validate_host.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_validate_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @ngx_http_validate_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_validate_host(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %79, %3
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %23
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %64 [
    i32 46, label %35
    i32 58, label %44
    i32 91, label %50
    i32 93, label %55
    i32 0, label %62
  ]

35:                                               ; preds = %29
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub i64 %37, 1
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %41, i32* %4, align 4
  br label %122

42:                                               ; preds = %35
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %11, align 8
  br label %78

44:                                               ; preds = %29
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* %10, align 8
  store i64 %48, i64* %12, align 8
  store i32 2, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %44
  br label %78

50:                                               ; preds = %29
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %50
  br label %78

55:                                               ; preds = %29
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %12, align 8
  store i32 2, i32* %13, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %78

62:                                               ; preds = %29
  %63 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %63, i32* %4, align 4
  br label %122

64:                                               ; preds = %29
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ngx_path_separator(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %69, i32* %4, align 4
  br label %122

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = icmp sge i32 %71, 65
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = icmp sle i32 %74, 90
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %73, %70
  br label %78

78:                                               ; preds = %77, %61, %54, %49, %42
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %23

82:                                               ; preds = %23
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = sub i64 %84, 1
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i64, i64* %12, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %94, i32* %4, align 4
  br label %122

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i32* @ngx_pnalloc(i32* %99, i64 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32* %101, i32** %103, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, i32* @NGX_ERROR, align 4
  store i32 %109, i32* %4, align 4
  br label %122

110:                                              ; preds = %98
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @ngx_strlow(i32* %113, i32* %114, i64 %115)
  br label %117

117:                                              ; preds = %110, %95
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* @NGX_OK, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %108, %93, %68, %62, %40
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @ngx_path_separator(i32) #1

declare dso_local i32* @ngx_pnalloc(i32*, i64) #1

declare dso_local i32 @ngx_strlow(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
