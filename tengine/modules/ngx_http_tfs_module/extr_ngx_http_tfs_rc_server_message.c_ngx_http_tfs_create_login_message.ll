; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_rc_server_message.c_ngx_http_tfs_create_login_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_rc_server_message.c_ngx_http_tfs_create_login_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_REQ_RC_LOGIN_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @ngx_http_tfs_create_login_message(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = add i64 44, %16
  %18 = add i64 %17, 1
  %19 = call %struct.TYPE_15__* @ngx_create_temp_buf(i32 %10, i64 %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %4, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %2, align 8
  br label %144

23:                                               ; preds = %1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %7, align 8
  %28 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 5
  store i32 %28, i32* %31, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add i64 4, %37
  %39 = add i64 %38, 4
  %40 = add i64 %39, 1
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load i32, i32* @NGX_HTTP_TFS_REQ_RC_LOGIN_MESSAGE, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 40
  store i8* %68, i8** %66, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ngx_memcpy(i8* %71, i32* %76, i32 %81)
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = sext i32 %87 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %89, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8 0, i8* %95, align 1
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %99, i8** %97, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  store %struct.sockaddr_in* %105, %struct.sockaddr_in** %6, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %110 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = call i32 @ngx_memcpy(i8* %108, i32* %111, i32 4)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  store i8* %116, i8** %114, align 8
  %117 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i64 1
  %121 = bitcast %struct.TYPE_21__* %120 to i8*
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @ngx_http_tfs_crc(i32 %117, i8* %121, i64 %125)
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call %struct.TYPE_24__* @ngx_alloc_chain_link(i32 %132)
  store %struct.TYPE_24__* %133, %struct.TYPE_24__** %5, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %135 = icmp eq %struct.TYPE_24__* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %23
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %2, align 8
  br label %144

137:                                              ; preds = %23
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  store %struct.TYPE_15__* %138, %struct.TYPE_15__** %140, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  store i32* null, i32** %142, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %143, %struct.TYPE_24__** %2, align 8
  br label %144

144:                                              ; preds = %137, %136, %22
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  ret %struct.TYPE_24__* %145
}

declare dso_local %struct.TYPE_15__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32 @ngx_memcpy(i8*, i32*, i32) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local %struct.TYPE_24__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
