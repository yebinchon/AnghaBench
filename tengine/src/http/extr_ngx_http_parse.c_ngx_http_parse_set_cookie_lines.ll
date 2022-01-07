; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_parse.c_ngx_http_parse_set_cookie_lines.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_parse.c_ngx_http_parse_set_cookie_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_10__** }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i8* }
%struct.TYPE_11__ = type { i64, i8* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"parse header: \22%V: %V\22\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_parse_set_cookie_lines(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  store %struct.TYPE_10__** %15, %struct.TYPE_10__*** %12, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %161, %3
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %164

22:                                               ; preds = %16
  %23 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %29, i64 %30
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %34, i64 %35
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = call i32 @ngx_log_debug2(i32 %23, i32 %28, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %33, %struct.TYPE_13__* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %43, i64 %44
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %42, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %22
  br label %161

52:                                               ; preds = %22
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %53, i64 %54
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %60, i64 %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %67, i64 %68
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* %66, i64 %73
  store i8* %74, i8** %11, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @ngx_strncasecmp(i8* %75, i8* %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %52
  br label %161

85:                                               ; preds = %52
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %90, i8** %9, align 8
  br label %91

91:                                               ; preds = %103, %85
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ult i8* %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 32
  br label %100

100:                                              ; preds = %95, %91
  %101 = phi i1 [ false, %91 ], [ %99, %95 ]
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  br label %91

106:                                              ; preds = %100
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = icmp eq i8* %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %9, align 8
  %113 = load i8, i8* %111, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 61
  br i1 %115, label %116, label %117

116:                                              ; preds = %110, %106
  br label %161

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %129, %117
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = icmp ult i8* %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i8*, i8** %9, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 32
  br label %127

127:                                              ; preds = %122, %118
  %128 = phi i1 [ false, %118 ], [ %126, %122 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %9, align 8
  br label %118

132:                                              ; preds = %127
  %133 = load i8*, i8** %9, align 8
  store i8* %133, i8** %10, align 8
  br label %134

134:                                              ; preds = %146, %132
  %135 = load i8*, i8** %10, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = icmp ult i8* %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i8*, i8** %10, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 59
  br label %143

143:                                              ; preds = %138, %134
  %144 = phi i1 [ false, %134 ], [ %142, %138 ]
  br i1 %144, label %145, label %149

145:                                              ; preds = %143
  br label %146

146:                                              ; preds = %145
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %10, align 8
  br label %134

149:                                              ; preds = %143
  %150 = load i8*, i8** %10, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load i64, i64* %8, align 8
  store i64 %160, i64* %4, align 8
  br label %166

161:                                              ; preds = %116, %84, %51
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %8, align 8
  br label %16

164:                                              ; preds = %16
  %165 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %165, i64* %4, align 8
  br label %166

166:                                              ; preds = %164, %149
  %167 = load i64, i64* %4, align 8
  ret i64 %167
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @ngx_strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
