; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_user_agent_module/extr_ngx_http_user_agent_module.c_ngx_http_user_agent_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_user_agent_module/extr_ngx_http_user_agent_module.c_ngx_http_user_agent_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_20__* (%struct.TYPE_15__*, %struct.TYPE_16__*, i64*, i32)* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_15__* }

@NGX_TRIE_REVERSE = common dso_local global i32 0, align 4
@NGX_HTTP_UA_MAX_INT64 = common dso_local global i32 0, align 4
@NGX_HTTP_UA_MAX_OFFSET = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i32*, i64)* @ngx_http_user_agent_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_user_agent_variable(%struct.TYPE_19__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %18, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %16, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = icmp eq %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %222

31:                                               ; preds = %3
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %15, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__* (%struct.TYPE_15__*, %struct.TYPE_16__*, i64*, i32)*, %struct.TYPE_20__* (%struct.TYPE_15__*, %struct.TYPE_16__*, i64*, i32)** %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %42 = load i32, i32* @NGX_TRIE_REVERSE, align 4
  %43 = call %struct.TYPE_20__* %39(%struct.TYPE_15__* %40, %struct.TYPE_16__* %41, i64* %13, i32 %42)
  store %struct.TYPE_20__* %43, %struct.TYPE_20__** %17, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %45 = icmp eq %struct.TYPE_20__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %31
  %47 = load i64, i64* %13, align 8
  %48 = icmp ult i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %31
  br label %222

50:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  %51 = load i32, i32* @NGX_HTTP_UA_MAX_INT64, align 4
  store i32 %51, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %14, align 8
  br label %52

52:                                               ; preds = %112, %50
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %52
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sge i32 %65, 48
  br i1 %66, label %67, label %77

67:                                               ; preds = %58
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp sle i32 %74, 57
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %117

77:                                               ; preds = %67, %58
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 59
  br i1 %85, label %104, label %86

86:                                               ; preds = %77
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %13, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 40
  br i1 %94, label %104, label %95

95:                                               ; preds = %86
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 41
  br i1 %103, label %104, label %105

104:                                              ; preds = %95, %86, %77
  br label %117

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* @NGX_HTTP_UA_MAX_OFFSET, align 8
  %109 = icmp uge i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %117

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %13, align 8
  %115 = load i64, i64* %14, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %14, align 8
  br label %52

117:                                              ; preds = %110, %104, %76, %52
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  store %struct.TYPE_17__* %120, %struct.TYPE_17__** %19, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %12, align 8
  br label %124

124:                                              ; preds = %179, %117
  %125 = load i64, i64* %13, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %125, %128
  br i1 %129, label %130, label %182

130:                                              ; preds = %124
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 46
  br i1 %138, label %139, label %147

139:                                              ; preds = %130
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = sdiv i32 %145, 10000
  store i32 %146, i32* %9, align 4
  br label %179

147:                                              ; preds = %130
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* %13, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp sge i32 %154, 48
  br i1 %155, label %156, label %177

156:                                              ; preds = %147
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load i64, i64* %13, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sle i32 %163, 57
  br i1 %164, label %165, label %177

165:                                              ; preds = %156
  %166 = load i32, i32* %8, align 4
  %167 = mul nsw i32 %166, 10
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i64, i64* %13, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = add nsw i32 %167, %174
  %176 = sub nsw i32 %175, 48
  store i32 %176, i32* %8, align 4
  br label %179

177:                                              ; preds = %156, %147
  br label %178

178:                                              ; preds = %177
  br label %182

179:                                              ; preds = %165, %139
  %180 = load i64, i64* %13, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %13, align 8
  br label %124

182:                                              ; preds = %178, %124
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %188

188:                                              ; preds = %218, %182
  %189 = load i64, i64* %11, align 8
  %190 = load i64, i64* %12, align 8
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %192, label %221

192:                                              ; preds = %188
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %195 = load i64, i64* %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sge i32 %193, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %192
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %203 = load i64, i64* %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp sle i32 %201, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %200
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %210 = load i64, i64* %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %6, align 8
  store i32 %214, i32* %215, align 4
  %216 = load i64, i64* @NGX_OK, align 8
  store i64 %216, i64* %4, align 8
  br label %229

217:                                              ; preds = %200, %192
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %11, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %11, align 8
  br label %188

221:                                              ; preds = %188
  br label %222

222:                                              ; preds = %221, %49, %30
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %6, align 8
  store i32 %226, i32* %227, align 4
  %228 = load i64, i64* @NGX_OK, align 8
  store i64 %228, i64* %4, align 8
  br label %229

229:                                              ; preds = %222, %208
  %230 = load i64, i64* %4, align 8
  ret i64 %230
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
