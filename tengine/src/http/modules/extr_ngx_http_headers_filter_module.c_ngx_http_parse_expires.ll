; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_parse_expires.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_parse_expires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@NGX_HTTP_EXPIRES_MODIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"epoch\00", align 1
@NGX_HTTP_EXPIRES_EPOCH = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@NGX_HTTP_EXPIRES_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_HTTP_EXPIRES_OFF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"daily time cannot be used with \22modified\22 parameter\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_EXPIRES_DAILY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"daily time value must be less than 24 hours\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64*, i32*, i8**)* @ngx_http_parse_expires to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_parse_expires(%struct.TYPE_4__* %0, i64* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NGX_HTTP_EXPIRES_MODIFIED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @ngx_strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @NGX_HTTP_EXPIRES_EPOCH, align 8
  %28 = load i64*, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* @NGX_OK, align 8
  store i64 %29, i64* %5, align 8
  br label %174

30:                                               ; preds = %20, %15
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @ngx_strncmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* @NGX_HTTP_EXPIRES_MAX, align 8
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* @NGX_OK, align 8
  store i64 %44, i64* %5, align 8
  br label %174

45:                                               ; preds = %35, %30
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @ngx_strncmp(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i64, i64* @NGX_HTTP_EXPIRES_OFF, align 8
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* @NGX_OK, align 8
  store i64 %59, i64* %5, align 8
  br label %174

60:                                               ; preds = %50, %45
  br label %61

61:                                               ; preds = %60, %4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 64
  br i1 %73, label %74, label %93

74:                                               ; preds = %66
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %76, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 8
  store i32 0, i32* %10, align 4
  %83 = load i64*, i64** %7, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NGX_HTTP_EXPIRES_MODIFIED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8** %88, align 8
  %89 = load i64, i64* @NGX_ERROR, align 8
  store i64 %89, i64* %5, align 8
  br label %174

90:                                               ; preds = %74
  %91 = load i64, i64* @NGX_HTTP_EXPIRES_DAILY, align 8
  %92 = load i64*, i64** %7, align 8
  store i64 %91, i64* %92, align 8
  br label %140

93:                                               ; preds = %66, %61
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 43
  br i1 %105, label %106, label %115

106:                                              ; preds = %98
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %108, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %112, align 8
  store i32 0, i32* %10, align 4
  br label %139

115:                                              ; preds = %98, %93
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %115
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 45
  br i1 %127, label %128, label %137

128:                                              ; preds = %120
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %130, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 8
  store i32 1, i32* %10, align 4
  br label %138

137:                                              ; preds = %120, %115
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %137, %128
  br label %139

139:                                              ; preds = %138, %106
  br label %140

140:                                              ; preds = %139, %90
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = call i32 @ngx_parse_time(%struct.TYPE_4__* %141, i32 1)
  %143 = load i32*, i32** %8, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* @NGX_ERROR, align 8
  %147 = trunc i64 %146 to i32
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %150, align 8
  %151 = load i64, i64* @NGX_ERROR, align 8
  store i64 %151, i64* %5, align 8
  br label %174

152:                                              ; preds = %140
  %153 = load i64*, i64** %7, align 8
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @NGX_HTTP_EXPIRES_DAILY, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 86400
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8** %162, align 8
  %163 = load i64, i64* @NGX_ERROR, align 8
  store i64 %163, i64* %5, align 8
  br label %174

164:                                              ; preds = %157, %152
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 0, %169
  %171 = load i32*, i32** %8, align 8
  store i32 %170, i32* %171, align 4
  br label %172

172:                                              ; preds = %167, %164
  %173 = load i64, i64* @NGX_OK, align 8
  store i64 %173, i64* %5, align 8
  br label %174

174:                                              ; preds = %172, %161, %149, %87, %56, %41, %26
  %175 = load i64, i64* %5, align 8
  ret i64 %175
}

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_parse_time(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
