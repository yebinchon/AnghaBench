; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_transmit.c_adns__querysend_tcp.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_transmit.c_adns__querysend_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__, i32, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.timeval = type { i32 }
%struct.iovec = type { i8*, i32 }

@server_ok = common dso_local global i64 0, align 8
@query_tcpw = common dso_local global i64 0, align 8
@ADNS_CLEAR_ERRNO = common dso_local global i32 0, align 4
@ADNS_CAPTURE_ERRNO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adns__querysend_tcp(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x %struct.iovec], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @server_ok, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %179

19:                                               ; preds = %2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @query_tcpw, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 65280
  %31 = lshr i32 %30, 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %9, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %46, %50
  %52 = add nsw i64 %51, 2
  %53 = call i32 @adns__vbuf_ensure(%struct.TYPE_13__* %42, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %19
  br label %179

56:                                               ; preds = %19
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %141

73:                                               ; preds = %56
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %75 = bitcast i32* %74 to i8*
  %76 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 16
  %78 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %79 = getelementptr inbounds %struct.iovec, %struct.iovec* %78, i32 0, i32 1
  store i32 2, i32* %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 1
  %85 = getelementptr inbounds %struct.iovec, %struct.iovec* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 16
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 1
  %90 = getelementptr inbounds %struct.iovec, %struct.iovec* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = call i32 @adns__sigpipe_protect(%struct.TYPE_11__* %93)
  %95 = load i32, i32* @ADNS_CLEAR_ERRNO, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %102 = call i32 @writev(i32 %100, %struct.iovec* %101, i32 2)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @ADNS_CAPTURE_ERRNO, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = call i32 @adns__sigpipe_unprotect(%struct.TYPE_11__* %106)
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %73
  %111 = load i64, i64* @errno, align 8
  %112 = load i64, i64* @EAGAIN, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %139, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* @errno, align 8
  %116 = load i64, i64* @EWOULDBLOCK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %139, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @EINTR, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %139, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* @errno, align 8
  %124 = load i64, i64* @ENOSPC, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %139, label %126

126:                                              ; preds = %122
  %127 = load i64, i64* @errno, align 8
  %128 = load i64, i64* @ENOBUFS, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = load i64, i64* @errno, align 8
  %132 = load i64, i64* @ENOMEM, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %136 = load i64, i64* @errno, align 8
  %137 = call i32 @strerror(i64 %136)
  %138 = call i32 @adns__tcp_broken(%struct.TYPE_11__* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %179

139:                                              ; preds = %130, %126, %122, %118, %114, %110
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %139, %73
  br label %141

141:                                              ; preds = %140, %72
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %148 = load i32, i32* %7, align 4
  %149 = sub nsw i32 2, %148
  %150 = call i32 @adns__vbuf_append(%struct.TYPE_13__* %146, i32* %147, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @assert(i32 %151)
  store i32 0, i32* %7, align 4
  br label %156

153:                                              ; preds = %141
  %154 = load i32, i32* %7, align 4
  %155 = sub nsw i32 %154, 2
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %153, %144
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %156
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %173, %174
  %176 = call i32 @adns__vbuf_append(%struct.TYPE_13__* %164, i32* %170, i32 %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @assert(i32 %177)
  br label %179

179:                                              ; preds = %18, %55, %134, %162, %156
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @adns__vbuf_ensure(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @adns__sigpipe_protect(%struct.TYPE_11__*) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @adns__sigpipe_unprotect(%struct.TYPE_11__*) #1

declare dso_local i32 @adns__tcp_broken(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @adns__vbuf_append(%struct.TYPE_13__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
