; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_variables.c_ngx_http_variable_unknown_header.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_variables.c_ngx_http_variable_unknown_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i64, i8* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i8* }

@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_variable_unknown_header(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %13, align 8
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %152, %4
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = icmp eq %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %155

29:                                               ; preds = %23
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %8, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %13, align 8
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %29, %17
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %152

44:                                               ; preds = %36
  store i64 0, i64* %12, align 8
  br label %45

45:                                               ; preds = %107, %44
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %46, %47
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %54, %60
  br label %62

62:                                               ; preds = %53, %45
  %63 = phi i1 [ false, %45 ], [ %61, %53 ]
  br i1 %63, label %64, label %110

64:                                               ; preds = %62
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  store i8 %73, i8* %10, align 1
  %74 = load i8, i8* %10, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sge i32 %75, 65
  br i1 %76, label %77, label %86

77:                                               ; preds = %64
  %78 = load i8, i8* %10, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp sle i32 %79, 90
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i8, i8* %10, align 1
  %83 = sext i8 %82 to i32
  %84 = or i32 %83, 32
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %10, align 1
  br label %92

86:                                               ; preds = %77, %64
  %87 = load i8, i8* %10, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 45
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i8 95, i8* %10, align 1
  br label %91

91:                                               ; preds = %90, %86
  br label %92

92:                                               ; preds = %91, %81
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %96, %97
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* %10, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %110

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %12, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %12, align 8
  br label %45

110:                                              ; preds = %105, %62
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %111, %112
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %110
  %119 = load i64, i64* %12, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %119, %125
  br i1 %126, label %127, label %151

127:                                              ; preds = %118
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %129 = load i64, i64* %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* @NGX_OK, align 4
  store i32 %150, i32* %5, align 4
  br label %159

151:                                              ; preds = %118, %110
  br label %152

152:                                              ; preds = %151, %43
  %153 = load i64, i64* %11, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %11, align 8
  br label %17

155:                                              ; preds = %28
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  store i32 1, i32* %157, align 4
  %158 = load i32, i32* @NGX_OK, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %127
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
