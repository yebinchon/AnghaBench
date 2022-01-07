; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_read_atom.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_read_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_12__*, i32)*, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mp4 atom end\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\22%s\22 mp4 atom is too small:%uL\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"mp4 atom: %*s @%O:%uL\00", align 1
@NGX_MAX_OFF_T_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"\22%s\22 mp4 atom too large:%uL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)* @ngx_http_mp4_read_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_mp4_read_atom(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %211, %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %212

28:                                               ; preds = %21
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = call i64 @ngx_http_mp4_read(%struct.TYPE_12__* %29, i32 4)
  %31 = load i64, i64* @NGX_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @NGX_ERROR, align 8
  store i64 %34, i64* %4, align 8
  br label %214

35:                                               ; preds = %28
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @ngx_mp4_get_32value(i32* %39)
  store i32 %40, i32* %12, align 4
  store i64 4, i64* %9, align 8
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ngx_log_debug0(i32 %44, i32 %48, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* @NGX_OK, align 8
  store i64 %50, i64* %4, align 8
  br label %214

51:                                               ; preds = %35
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 4
  br i1 %54, label %55, label %105

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %90

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = call i64 @ngx_http_mp4_read(%struct.TYPE_12__* %59, i32 4)
  %61 = load i64, i64* @NGX_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i64, i64* @NGX_ERROR, align 8
  store i64 %64, i64* %4, align 8
  br label %214

65:                                               ; preds = %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %10, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  %71 = call i32 @ngx_mp4_get_64value(i32* %70)
  store i32 %71, i32* %12, align 4
  store i64 4, i64* %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %73, 4
  br i1 %74, label %75, label %89

75:                                               ; preds = %65
  %76 = load i32, i32* @NGX_LOG_ERR, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @ngx_log_error(i32 %76, i32 %80, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i64, i64* @NGX_ERROR, align 8
  store i64 %88, i64* %4, align 8
  br label %214

89:                                               ; preds = %65
  br label %104

90:                                               ; preds = %55
  %91 = load i32, i32* @NGX_LOG_ERR, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @ngx_log_error(i32 %91, i32 %95, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load i64, i64* @NGX_ERROR, align 8
  store i64 %103, i64* %4, align 8
  br label %214

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104, %51
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = call i64 @ngx_http_mp4_read(%struct.TYPE_12__* %106, i32 4)
  %108 = load i64, i64* @NGX_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i64, i64* @NGX_ERROR, align 8
  store i64 %111, i64* %4, align 8
  br label %214

112:                                              ; preds = %105
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %10, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32* %117, i32** %11, align 8
  %118 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @ngx_log_debug4(i32 %118, i32 %122, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 4, i32* %123, i64 %127, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = load i64, i64* @NGX_MAX_OFF_T_VALUE, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %131, %135
  %137 = trunc i64 %136 to i32
  %138 = icmp sgt i32 %130, %137
  br i1 %138, label %149, label %139

139:                                              ; preds = %112
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load i64, i64* %8, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %139, %112
  %150 = load i32, i32* @NGX_LOG_ERR, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @ngx_log_error(i32 %150, i32 %154, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load i64, i64* @NGX_ERROR, align 8
  store i64 %162, i64* %4, align 8
  br label %214

163:                                              ; preds = %139
  store i64 0, i64* %14, align 8
  br label %164

164:                                              ; preds = %204, %163
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = load i64, i64* %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %207

171:                                              ; preds = %164
  %172 = load i32*, i32** %11, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %174 = load i64, i64* %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @ngx_strncmp(i32* %172, i64 %177, i32 4)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %203

180:                                              ; preds = %171
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = load i64, i64* %9, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 @ngx_mp4_atom_next(%struct.TYPE_12__* %181, i32 %183)
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %186 = load i64, i64* %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i64 (%struct.TYPE_12__*, i32)*, i64 (%struct.TYPE_12__*, i32)** %188, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %9, align 8
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  %196 = call i64 %189(%struct.TYPE_12__* %190, i32 %195)
  store i64 %196, i64* %13, align 8
  %197 = load i64, i64* %13, align 8
  %198 = load i64, i64* @NGX_OK, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %180
  %201 = load i64, i64* %13, align 8
  store i64 %201, i64* %4, align 8
  br label %214

202:                                              ; preds = %180
  br label %211

203:                                              ; preds = %171
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %14, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %14, align 8
  br label %164

207:                                              ; preds = %164
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @ngx_mp4_atom_next(%struct.TYPE_12__* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %202
  br label %21

212:                                              ; preds = %21
  %213 = load i64, i64* @NGX_OK, align 8
  store i64 %213, i64* %4, align 8
  br label %214

214:                                              ; preds = %212, %200, %149, %110, %90, %75, %63, %43, %33
  %215 = load i64, i64* %4, align 8
  ret i64 %215
}

declare dso_local i64 @ngx_http_mp4_read(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_mp4_get_32value(i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_mp4_get_64value(i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i64, i32*, i64, i32) #1

declare dso_local i64 @ngx_strncmp(i32*, i64, i32) #1

declare dso_local i32 @ngx_mp4_atom_next(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
