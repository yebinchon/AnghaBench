; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_secure_link_module.c_ngx_http_secure_link_old_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_secure_link_module.c_ngx_http_secure_link_old_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64*, i64 }
%struct.TYPE_11__ = type { i64, i32, i32, i64*, i64 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, i64)* @ngx_http_secure_link_old_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_secure_link_old_variable(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [16 x i64], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  store i64* %23, i64** %10, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %27, i64 %31
  store i64* %32, i64** %13, align 8
  br label %33

33:                                               ; preds = %44, %4
  %34 = load i64*, i64** %10, align 8
  %35 = load i64*, i64** %13, align 8
  %36 = icmp ult i64* %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i64*, i64** %10, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %10, align 8
  %40 = load i64, i64* %38, align 8
  %41 = icmp eq i64 %40, 47
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64*, i64** %10, align 8
  store i64* %43, i64** %11, align 8
  br label %46

44:                                               ; preds = %37
  br label %33

45:                                               ; preds = %33
  br label %134

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i64*, i64** %10, align 8
  %49 = load i64*, i64** %13, align 8
  %50 = icmp ult i64* %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i64*, i64** %10, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %10, align 8
  %54 = load i64, i64* %52, align 8
  %55 = icmp eq i64 %54, 47
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i64*, i64** %10, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 -1
  store i64* %58, i64** %12, align 8
  br label %61

59:                                               ; preds = %51
  br label %47

60:                                               ; preds = %47
  br label %134

61:                                               ; preds = %56
  %62 = load i64*, i64** %13, align 8
  %63 = load i64*, i64** %10, align 8
  %64 = ptrtoint i64* %62 to i64
  %65 = ptrtoint i64* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 8
  store i64 %67, i64* %14, align 8
  %68 = load i64*, i64** %12, align 8
  %69 = load i64*, i64** %11, align 8
  %70 = ptrtoint i64* %68 to i64
  %71 = ptrtoint i64* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 8
  %74 = icmp ne i64 %73, 32
  br i1 %74, label %78, label %75

75:                                               ; preds = %61
  %76 = load i64, i64* %14, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %61
  br label %134

79:                                               ; preds = %75
  %80 = call i32 @ngx_md5_init(i32* %17)
  %81 = load i64*, i64** %10, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @ngx_md5_update(i32* %17, i64* %81, i64 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ngx_md5_update(i32* %17, i64* %87, i64 %91)
  %93 = getelementptr inbounds [16 x i64], [16 x i64]* %18, i64 0, i64 0
  %94 = call i32 @ngx_md5_final(i64* %93, i32* %17)
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %117, %79
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %96, 16
  br i1 %97, label %98, label %120

98:                                               ; preds = %95
  %99 = load i64*, i64** %11, align 8
  %100 = load i32, i32* %16, align 4
  %101 = mul nsw i32 2, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = call i64 @ngx_hextoi(i64* %103, i32 2)
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* @NGX_ERROR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %98
  %109 = load i64, i64* %15, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [16 x i64], [16 x i64]* %18, i64 0, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %109, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %98
  br label %134

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %95

120:                                              ; preds = %95
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 4
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  store i32 0, i32* %129, align 4
  %130 = load i64*, i64** %10, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  store i64* %130, i64** %132, align 8
  %133 = load i64, i64* @NGX_OK, align 8
  store i64 %133, i64* %5, align 8
  br label %138

134:                                              ; preds = %115, %78, %60, %45
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  store i32 1, i32* %136, align 4
  %137 = load i64, i64* @NGX_OK, align 8
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %134, %120
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local i32 @ngx_md5_init(i32*) #1

declare dso_local i32 @ngx_md5_update(i32*, i64*, i64) #1

declare dso_local i32 @ngx_md5_final(i64*, i32*) #1

declare dso_local i64 @ngx_hextoi(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
