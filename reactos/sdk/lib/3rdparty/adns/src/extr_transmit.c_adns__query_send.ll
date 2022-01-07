; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_transmit.c_adns__query_send.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_transmit.c_adns__query_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i32, i32, %struct.timeval, i32, i64, %struct.TYPE_10__* }
%struct.timeval = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@query_tosend = common dso_local global i64 0, align 8
@adns_qf_usevc = common dso_local global i32 0, align 4
@DNS_MAXUDP = common dso_local global i32 0, align 4
@UDPMAXRETRIES = common dso_local global i64 0, align 8
@adns_s_timeout = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@DNS_PORT = common dso_local global i32 0, align 4
@ADNS_CLEAR_ERRNO = common dso_local global i32 0, align 4
@ADNS_CAPTURE_ERRNO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"sendto failed: %s (%d)\00", align 1
@UDPRETRYMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adns__query_send(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @query_tosend, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @adns_qf_usevc, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DNS_MAXUDP, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23, %2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @query_usetcp(%struct.TYPE_11__* %30, i32 %32)
  br label %143

34:                                               ; preds = %23
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UDPMAXRETRIES, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = load i32, i32* @adns_s_timeout, align 4
  %43 = call i32 @adns__query_fail(%struct.TYPE_11__* %41, i32 %42)
  br label %143

44:                                               ; preds = %34
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  %48 = call i32 @memset(%struct.sockaddr_in* %5, i32 0, i32 12)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %8, align 8
  %52 = load i32, i32* @AF_INET, align 4
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @DNS_PORT, align 4
  %64 = call i32 @htons(i32 %63)
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @ADNS_CLEAR_ERRNO, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %78 = call i32 @sendto(i32 %69, i8* %73, i32 %76, i32 0, %struct.sockaddr* %77, i32 12)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @ADNS_CAPTURE_ERRNO, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %44
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @EMSGSIZE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @query_usetcp(%struct.TYPE_11__* %89, i32 %91)
  br label %143

93:                                               ; preds = %82, %44
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @EAGAIN, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i64, i64* @errno, align 8
  %102 = load i64, i64* @EWOULDBLOCK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i64, i64* @errno, align 8
  %108 = call i32 @strerror(i64 %107)
  %109 = load i64, i64* @errno, align 8
  %110 = call i32 @adns__warn(%struct.TYPE_10__* %105, i32 %106, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %104, %100, %96, %93
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 5
  %114 = bitcast %struct.timeval* %113 to i8*
  %115 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 4 %115, i64 4, i1 false)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 5
  %118 = load i32, i32* @UDPRETRYMS, align 4
  %119 = call i32 @timevaladd(%struct.timeval* %117, i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = shl i32 1, %120
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = srem i32 %127, %130
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = call i32 @LIST_LINK_TAIL(i32 %140, %struct.TYPE_11__* %141)
  br label %143

143:                                              ; preds = %111, %86, %40, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @query_usetcp(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @adns__query_fail(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @adns__warn(%struct.TYPE_10__*, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @strerror(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timevaladd(%struct.timeval*, i32) #1

declare dso_local i32 @LIST_LINK_TAIL(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
