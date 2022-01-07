; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_do_TCP_connection.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_do_TCP_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32 }

@TCP_CLIENT_DISCONNECTED = common dso_local global i64 0, align 8
@TCP_CLIENT_PROXY_HTTP_CONNECTING = common dso_local global i64 0, align 8
@TCP_CLIENT_CONNECTING = common dso_local global i64 0, align 8
@TCP_CLIENT_PROXY_SOCKS5_CONNECTING = common dso_local global i64 0, align 8
@TCP_CLIENT_PROXY_SOCKS5_UNCONFIRMED = common dso_local global i64 0, align 8
@TCP_CLIENT_UNCONFIRMED = common dso_local global i64 0, align 8
@TCP_SERVER_HANDSHAKE_SIZE = common dso_local global i32 0, align 4
@TCP_CLIENT_CONFIRMED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_TCP_connection(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = call i32 (...) @unix_time_update()
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TCP_CLIENT_DISCONNECTED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %186

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TCP_CLIENT_PROXY_HTTP_CONNECTING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = call i64 @send_pending_data(%struct.TYPE_11__* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = call i32 @proxy_http_read_connection_response(%struct.TYPE_11__* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = load i64, i64* @TCP_CLIENT_DISCONNECTED, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = call i32 @generate_handshake(%struct.TYPE_11__* %41)
  %43 = load i64, i64* @TCP_CLIENT_CONNECTING, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %37
  br label %47

47:                                               ; preds = %46, %22
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TCP_CLIENT_PROXY_SOCKS5_CONNECTING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = call i64 @send_pending_data(%struct.TYPE_11__* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = call i32 @socks5_read_handshake_response(%struct.TYPE_11__* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  %66 = load i64, i64* @TCP_CLIENT_DISCONNECTED, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = call i32 @proxy_socks5_generate_connection_request(%struct.TYPE_11__* %73)
  %75 = load i64, i64* @TCP_CLIENT_PROXY_SOCKS5_UNCONFIRMED, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %69
  br label %79

79:                                               ; preds = %78, %54
  br label %80

80:                                               ; preds = %79, %48
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TCP_CLIENT_PROXY_SOCKS5_UNCONFIRMED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %88 = call i64 @send_pending_data(%struct.TYPE_11__* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %86
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %92 = call i32 @proxy_socks5_read_connection_response(%struct.TYPE_11__* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 8
  %98 = load i64, i64* @TCP_CLIENT_DISCONNECTED, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %106 = call i32 @generate_handshake(%struct.TYPE_11__* %105)
  %107 = load i64, i64* @TCP_CLIENT_CONNECTING, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %101
  br label %111

111:                                              ; preds = %110, %86
  br label %112

112:                                              ; preds = %111, %80
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TCP_CLIENT_CONNECTING, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %120 = call i64 @send_pending_data(%struct.TYPE_11__* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i64, i64* @TCP_CLIENT_UNCONFIRMED, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %112
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TCP_CLIENT_UNCONFIRMED, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %127
  %134 = load i32, i32* @TCP_SERVER_HANDSHAKE_SIZE, align 4
  %135 = zext i32 %134 to i64
  %136 = call i8* @llvm.stacksave()
  store i8* %136, i8** %6, align 8
  %137 = alloca i32, i64 %135, align 16
  store i64 %135, i64* %7, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = mul nuw i64 4, %135
  %142 = trunc i64 %141 to i32
  %143 = call i32 @read_TCP_packet(i32 %140, i32* %137, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = mul nuw i64 4, %135
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp eq i64 %144, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %133
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %150 = call i64 @handle_handshake(%struct.TYPE_11__* %149, i32* %137)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  store i32 -1, i32* %154, align 8
  %155 = load i64, i64* @TCP_CLIENT_CONFIRMED, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %164

158:                                              ; preds = %148
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  store i32 0, i32* %160, align 8
  %161 = load i64, i64* @TCP_CLIENT_DISCONNECTED, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %158, %152
  br label %165

165:                                              ; preds = %164, %133
  %166 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %166)
  br label %167

167:                                              ; preds = %165, %127
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @TCP_CLIENT_CONFIRMED, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %175 = call i32 @do_confirmed_TCP(%struct.TYPE_11__* %174)
  br label %176

176:                                              ; preds = %173, %167
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (...) @unix_time()
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i64, i64* @TCP_CLIENT_DISCONNECTED, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %15, %182, %176
  ret void
}

declare dso_local i32 @unix_time_update(...) #1

declare dso_local i64 @send_pending_data(%struct.TYPE_11__*) #1

declare dso_local i32 @proxy_http_read_connection_response(%struct.TYPE_11__*) #1

declare dso_local i32 @generate_handshake(%struct.TYPE_11__*) #1

declare dso_local i32 @socks5_read_handshake_response(%struct.TYPE_11__*) #1

declare dso_local i32 @proxy_socks5_generate_connection_request(%struct.TYPE_11__*) #1

declare dso_local i32 @proxy_socks5_read_connection_response(%struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @read_TCP_packet(i32, i32*, i32) #1

declare dso_local i64 @handle_handshake(%struct.TYPE_11__*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @do_confirmed_TCP(%struct.TYPE_11__*) #1

declare dso_local i32 @unix_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
