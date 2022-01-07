; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_network.c_sendpacket.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_network.c_sendpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i64, i64, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i64* }
%struct.sockaddr_in = type { i32, i32, i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"O=>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendpacket(%struct.TYPE_13__* %0, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %138

21:                                               ; preds = %4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_INET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %138

34:                                               ; preds = %27, %21
  store i64 0, i64* %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_INET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %96

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AF_INET6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %40
  %47 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %47, %struct.sockaddr_in6** %11, align 8
  store i64 32, i64* %10, align 8
  %48 = load i64, i64* @AF_INET6, align 8
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 0, i64* %60, align 8
  %61 = call i64 @htonl(i32 65535)
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  store i64 %61, i64* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 3
  store i64 %68, i64* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %95

80:                                               ; preds = %40
  %81 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %81, %struct.sockaddr_in** %13, align 8
  store i64 16, i64* %10, align 8
  %82 = load i64, i64* @AF_INET, align 8
  %83 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %94 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %80, %46
  br label %123

96:                                               ; preds = %34
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AF_INET6, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %96
  %103 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %103, %struct.sockaddr_in6** %14, align 8
  store i64 32, i64* %10, align 8
  %104 = load i64, i64* @AF_INET6, align 8
  %105 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %106 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %110 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %116 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %118 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %120 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  br label %122

121:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %138

122:                                              ; preds = %102
  br label %123

123:                                              ; preds = %122, %95
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = bitcast i32* %127 to i8*
  %129 = load i32, i32* %8, align 4
  %130 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @sendto(i32 %126, i8* %128, i32 %129, i32 0, %struct.sockaddr* %130, i64 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @loglogdata(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %133, i32 %134, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %1, i32 %135)
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %123, %121, %33, %20
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i64) #1

declare dso_local i32 @loglogdata(i8*, i32*, i32, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
