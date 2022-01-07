; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_parse.c_ngx_http_parse_multi_header_lines.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_parse.c_ngx_http_parse_multi_header_lines.c"
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
define dso_local i64 @ngx_http_parse_multi_header_lines(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %15, align 8
  store %struct.TYPE_10__** %16, %struct.TYPE_10__*** %13, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %217, %3
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %220

23:                                               ; preds = %17
  %24 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %35, i64 %36
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = call i32 @ngx_log_debug2(i32 %24, i32 %29, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %34, %struct.TYPE_13__* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %44, i64 %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %43, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %23
  br label %217

53:                                               ; preds = %23
  %54 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %54, i64 %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %9, align 8
  %61 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %61, i64 %62
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %68, i64 %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8, i8* %67, i64 %74
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %215, %53
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ult i8* %77, %78
  br i1 %79, label %80, label %216

80:                                               ; preds = %76
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @ngx_strncasecmp(i8* %81, i8* %84, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %182

91:                                               ; preds = %80
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8* %96, i8** %9, align 8
  br label %97

97:                                               ; preds = %109, %91
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = icmp ult i8* %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i8*, i8** %9, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 32
  br label %106

106:                                              ; preds = %101, %97
  %107 = phi i1 [ false, %97 ], [ %105, %101 ]
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  br label %97

112:                                              ; preds = %106
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = icmp eq %struct.TYPE_11__* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = icmp eq i8* %116, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = load i8*, i8** %9, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 44
  br i1 %123, label %124, label %126

124:                                              ; preds = %119, %115
  %125 = load i64, i64* %8, align 8
  store i64 %125, i64* %4, align 8
  br label %222

126:                                              ; preds = %119
  br label %182

127:                                              ; preds = %112
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = icmp eq i8* %128, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %9, align 8
  %134 = load i8, i8* %132, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 61
  br i1 %136, label %137, label %138

137:                                              ; preds = %131, %127
  br label %182

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %150, %138
  %140 = load i8*, i8** %9, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = icmp ult i8* %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i8*, i8** %9, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 32
  br label %148

148:                                              ; preds = %143, %139
  %149 = phi i1 [ false, %139 ], [ %147, %143 ]
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %9, align 8
  br label %139

153:                                              ; preds = %148
  %154 = load i8*, i8** %9, align 8
  store i8* %154, i8** %10, align 8
  br label %155

155:                                              ; preds = %167, %153
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = icmp ult i8* %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i8*, i8** %10, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 59
  br label %164

164:                                              ; preds = %159, %155
  %165 = phi i1 [ false, %155 ], [ %163, %159 ]
  br i1 %165, label %166, label %170

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166
  %168 = load i8*, i8** %10, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %10, align 8
  br label %155

170:                                              ; preds = %164
  %171 = load i8*, i8** %10, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load i64, i64* %8, align 8
  store i64 %181, i64* %4, align 8
  br label %222

182:                                              ; preds = %137, %126, %90
  br label %183

183:                                              ; preds = %199, %182
  %184 = load i8*, i8** %9, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = icmp ult i8* %184, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %183
  %188 = load i8*, i8** %9, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %9, align 8
  %190 = load i8, i8* %188, align 1
  store i8 %190, i8* %12, align 1
  %191 = load i8, i8* %12, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 59
  br i1 %193, label %198, label %194

194:                                              ; preds = %187
  %195 = load i8, i8* %12, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 44
  br i1 %197, label %198, label %199

198:                                              ; preds = %194, %187
  br label %200

199:                                              ; preds = %194
  br label %183

200:                                              ; preds = %198, %183
  br label %201

201:                                              ; preds = %212, %200
  %202 = load i8*, i8** %9, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = icmp ult i8* %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load i8*, i8** %9, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 32
  br label %210

210:                                              ; preds = %205, %201
  %211 = phi i1 [ false, %201 ], [ %209, %205 ]
  br i1 %211, label %212, label %215

212:                                              ; preds = %210
  %213 = load i8*, i8** %9, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %9, align 8
  br label %201

215:                                              ; preds = %210
  br label %76

216:                                              ; preds = %76
  br label %217

217:                                              ; preds = %216, %52
  %218 = load i64, i64* %8, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %8, align 8
  br label %17

220:                                              ; preds = %17
  %221 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %221, i64* %4, align 8
  br label %222

222:                                              ; preds = %220, %170, %124
  %223 = load i64, i64* %4, align 8
  ret i64 %223
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @ngx_strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
