; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_v2_read.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_v2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i8*, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unknown PROXY protocol version: %ui\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"header is too large\00", align 1
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"PROXY protocol v2 unsupported command %ui\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"PROXY protocol v2 unsupported transport %ui\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"PROXY protocol v2 unsupported address family %ui\00", align 1
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"PROXY protocol v2 address: %V %d\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"PROXY protocol v2 %z bytes of tlv ignored\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, i32*, i32*)* @ngx_proxy_protocol_v2_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_proxy_protocol_v2_read(%struct.TYPE_16__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %16, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 12
  store i32* %21, i32** %6, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i32, i32* @NGX_LOG_ERR, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %29, i32 %32, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32* null, i32** %4, align 8
  br label %188

35:                                               ; preds = %3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @ngx_proxy_protocol_parse_uint16(i32 %38)
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %9, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = load i64, i64* %9, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %35
  %50 = load i32, i32* @NGX_LOG_ERR, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %50, i32 %53, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %188

55:                                               ; preds = %35
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %8, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 15
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @ngx_log_debug1(i32 %66, i32 %69, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %8, align 8
  store i32* %72, i32** %4, align 8
  br label %188

73:                                               ; preds = %55
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @ngx_log_debug1(i32 %81, i32 %84, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %8, align 8
  store i32* %87, i32** %4, align 8
  br label %188

88:                                               ; preds = %73
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 4
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  switch i32 %93, label %125 [
    i32 129, label %94
  ]

94:                                               ; preds = %88
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = ptrtoint i32* %95 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  %101 = icmp ult i64 %100, 8
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i32* null, i32** %4, align 8
  br label %188

103:                                              ; preds = %94
  %104 = load i32*, i32** %6, align 8
  %105 = bitcast i32* %104 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %17, align 8
  %106 = load i32, i32* @AF_INET, align 4
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @memcpy(i32* %112, i32 %115, i32 4)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @ngx_proxy_protocol_parse_uint16(i32 %119)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  store i32 4, i32* %10, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 8
  store i32* %124, i32** %6, align 8
  br label %133

125:                                              ; preds = %88
  %126 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @ngx_log_debug1(i32 %126, i32 %129, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32*, i32** %8, align 8
  store i32* %132, i32** %4, align 8
  br label %188

133:                                              ; preds = %103
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %138 = call i32* @ngx_pnalloc(i32 %136, i32 %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  store i32* %138, i32** %141, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %133
  store i32* null, i32** %4, align 8
  br label %188

148:                                              ; preds = %133
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %156 = call i32 @ngx_sock_ntop(i32* %149, i32 %150, i32* %154, i32 %155, i32 0)
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @ngx_log_debug2(i32 %160, i32 %163, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_17__* %165, i8* %168)
  %170 = load i32*, i32** %6, align 8
  %171 = load i32*, i32** %8, align 8
  %172 = icmp ult i32* %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %148
  %174 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = ptrtoint i32* %178 to i64
  %181 = ptrtoint i32* %179 to i64
  %182 = sub i64 %180, %181
  %183 = sdiv exact i64 %182, 4
  %184 = trunc i64 %183 to i32
  %185 = call i32 @ngx_log_debug1(i32 %174, i32 %177, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %173, %148
  %187 = load i32*, i32** %8, align 8
  store i32* %187, i32** %4, align 8
  br label %188

188:                                              ; preds = %186, %147, %125, %102, %80, %65, %49, %28
  %189 = load i32*, i32** %4, align 8
  ret i32* %189
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i8* @ngx_proxy_protocol_parse_uint16(i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_sock_ntop(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
