; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_compile_pattern.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_compile_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__**, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i64 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"lua tcp socket read until recovering point: on state %d (%*s), if next is '%c', then recover to state %d (%*s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, %struct.TYPE_7__*, i32*)* @ngx_http_lua_socket_compile_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_compile_pattern(i64* %0, i64 %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_8__**, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_8__** null, %struct.TYPE_8__*** %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ule i64 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @NGX_OK, align 4
  store i32 %25, i32* %5, align 4
  br label %196

26:                                               ; preds = %4
  store i64 1, i64* %10, align 8
  br label %27

27:                                               ; preds = %191, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %194

31:                                               ; preds = %27
  store i64 1, i64* %11, align 8
  br label %32

32:                                               ; preds = %59, %31
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub i64 %34, %35
  %37 = sub i64 %36, 1
  %38 = icmp ule i64 %33, %37
  br i1 %38, label %39, label %190

39:                                               ; preds = %32
  %40 = load i64*, i64** %6, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @ngx_memcmp(i64* %40, i64* %43, i64 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %189

47:                                               ; preds = %39
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %53, %54
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %51, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %11, align 8
  br label %32

62:                                               ; preds = %47
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %14, align 4
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %15, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %71, align 8
  %73 = icmp eq %struct.TYPE_8__** %72, null
  br i1 %73, label %74, label %97

74:                                               ; preds = %62
  %75 = load i64, i64* %7, align 8
  %76 = sub i64 %75, 2
  %77 = mul i64 8, %76
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %9, align 8
  %81 = call i8* @ngx_alloc(i32 %79, i32* %80)
  %82 = bitcast i8* %81 to %struct.TYPE_8__**
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store %struct.TYPE_8__** %82, %struct.TYPE_8__*** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %86, align 8
  %88 = icmp eq %struct.TYPE_8__** %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %74
  %90 = load i32, i32* @NGX_ERROR, align 4
  store i32 %90, i32* %5, align 4
  br label %196

91:                                               ; preds = %74
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @ngx_memzero(%struct.TYPE_8__** %94, i64 %95)
  br label %97

97:                                               ; preds = %91, %62
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %100, i64 %103
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %16, align 8
  store i32 0, i32* %13, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %107 = icmp eq %struct.TYPE_8__* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %97
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %111, i64 %114
  store %struct.TYPE_8__** %115, %struct.TYPE_8__*** %17, align 8
  br label %148

116:                                              ; preds = %97
  br label %117

117:                                              ; preds = %143, %116
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %119 = icmp ne %struct.TYPE_8__* %118, null
  br i1 %119, label %120, label %147

120:                                              ; preds = %117
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store %struct.TYPE_8__** %122, %struct.TYPE_8__*** %17, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %6, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %125, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %120
  store i32 1, i32* %13, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %137, %131
  br label %147

142:                                              ; preds = %120
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  store %struct.TYPE_8__* %146, %struct.TYPE_8__** %16, align 8
  br label %117

147:                                              ; preds = %141, %117
  br label %148

148:                                              ; preds = %147, %108
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %188, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64*, i64** %6, align 8
  %158 = load i64*, i64** %6, align 8
  %159 = load i64, i64* %11, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = load i64*, i64** %6, align 8
  %166 = call i32 @ngx_log_debug7(i32 %152, i32* %153, i32 0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0), i32 %154, i64 %156, i64* %157, i64 %161, i32 %162, i64 %164, i64* %165)
  %167 = load i32*, i32** %9, align 8
  %168 = call i8* @ngx_alloc(i32 24, i32* %167)
  %169 = bitcast i8* %168 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %169, %struct.TYPE_8__** %16, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %171 = icmp eq %struct.TYPE_8__* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %151
  %173 = load i32, i32* @NGX_ERROR, align 4
  store i32 %173, i32* %5, align 4
  br label %196

174:                                              ; preds = %151
  %175 = load i64*, i64** %6, align 8
  %176 = load i64, i64* %11, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  %181 = load i32, i32* %15, align 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %185, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %187 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %17, align 8
  store %struct.TYPE_8__* %186, %struct.TYPE_8__** %187, align 8
  br label %188

188:                                              ; preds = %174, %148
  br label %190

189:                                              ; preds = %39
  br label %190

190:                                              ; preds = %189, %188, %32
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %10, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %10, align 8
  br label %27

194:                                              ; preds = %27
  %195 = load i32, i32* @NGX_OK, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %194, %172, %89, %24
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i64 @ngx_memcmp(i64*, i64*, i64) #1

declare dso_local i8* @ngx_alloc(i32, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_8__**, i64) #1

declare dso_local i32 @ngx_log_debug7(i32, i32*, i32, i8*, i32, i64, i64*, i64, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
