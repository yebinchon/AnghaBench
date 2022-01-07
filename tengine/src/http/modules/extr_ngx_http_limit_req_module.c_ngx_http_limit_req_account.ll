; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req_account.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@ngx_current_msec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i64*, %struct.TYPE_11__**)* @ngx_http_limit_req_account to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_limit_req_account(%struct.TYPE_11__* %0, i64 %1, i64* %2, %struct.TYPE_11__** %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %8, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %48

27:                                               ; preds = %4
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %14, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %35, %39
  %41 = mul nsw i64 %40, 1000
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = sdiv i64 %41, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %27, %26
  br label %49

49:                                               ; preds = %161, %132, %66, %48
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %6, align 8
  %52 = icmp ne i64 %50, 0
  br i1 %52, label %53, label %162

53:                                               ; preds = %49
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %14, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %15, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %65 = icmp eq %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %49

67:                                               ; preds = %53
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = call i32 @ngx_shmtx_lock(i32* %71)
  %73 = load i32, i32* @ngx_current_msec, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, -60000
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  store i32 1, i32* %13, align 4
  br label %87

82:                                               ; preds = %67
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %85, %82
  br label %87

87:                                               ; preds = %86, %81
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sdiv i32 %95, 1000
  %97 = sub nsw i32 %90, %96
  %98 = add nsw i32 %97, 1000
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %87
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = call i32 @ngx_shmtx_unlock(i32* %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %123, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp sle i64 %125, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %109
  br label %49

133:                                              ; preds = %109
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %135, %140
  %142 = mul nsw i64 %141, 1000
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = sdiv i64 %142, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %133
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64*, i64** %7, align 8
  store i64 %155, i64* %156, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %158 = load i64, i64* %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i64 %158
  %160 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* %159, %struct.TYPE_11__** %160, align 8
  br label %161

161:                                              ; preds = %152, %133
  br label %49

162:                                              ; preds = %49
  %163 = load i32, i32* %12, align 4
  ret i32 %163
}

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
