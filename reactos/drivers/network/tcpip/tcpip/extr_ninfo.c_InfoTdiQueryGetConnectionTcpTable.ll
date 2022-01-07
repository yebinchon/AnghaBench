; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_ninfo.c_InfoTdiQueryGetConnectionTcpTable.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_ninfo.c_InfoTdiQueryGetConnectionTcpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_20__*, i8*, %struct.TYPE_14__, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i64*, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }

@TDI_INVALID_REQUEST = common dso_local global i32 0, align 4
@DEBUG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@TcpUdpClassOwnerPid = common dso_local global i64 0, align 8
@TcpUdpClassOwner = common dso_local global i64 0, align 8
@MIB_TCP_STATE_LISTEN = common dso_local global i32 0, align 4
@TDI_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TDI_ADDRESS_LENGTH_IP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Returning %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfoTdiQueryGetConnectionTcpTable(%struct.TYPE_18__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* @TDI_INVALID_REQUEST, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @DEBUG_INFO, align 4
  %16 = call i32 @TI_DbgPrint(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @TcpUdpClassOwnerPid, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 4, i32* %9, align 4
  br label %28

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @TcpUdpClassOwner, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 56, i32* %9, align 4
  br label %27

26:                                               ; preds = %21
  store i32 4, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %20
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @HandleToUlong(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 7
  store i32 %32, i32* %33, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 6
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %28
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %12, align 8
  %48 = load i32, i32* @MIB_TCP_STATE_LISTEN, align 4
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 5
  store i32 %54, i32* %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  store i8* %58, i8** %59, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  store i32 %64, i32* %65, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %70, i32* %11, align 4
  br label %181

71:                                               ; preds = %28
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = icmp ne %struct.TYPE_20__* %74, null
  br i1 %75, label %76, label %180

76:                                               ; preds = %71
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %180

83:                                               ; preds = %76
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = ptrtoint %struct.TYPE_17__* %13 to i32
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @TCPGetSockAddress(%struct.TYPE_20__* %86, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @NT_SUCCESS(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %179

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %95, 1
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TDI_ADDRESS_LENGTH_IP, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 5
  store i32 %115, i32* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @ntohs(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  store i8* %125, i8** %126, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = ptrtoint %struct.TYPE_17__* %13 to i32
  %131 = load i32, i32* @TRUE, align 4
  %132 = call i32 @TCPGetSockAddress(%struct.TYPE_20__* %129, i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @NT_SUCCESS(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %178

136:                                              ; preds = %93
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sge i32 %138, 1
  %140 = zext i1 %139 to i32
  %141 = call i32 @ASSERT(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @TDI_ADDRESS_LENGTH_IP, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @ASSERT(i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  store i32 %158, i32* %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @ntohs(i32 %167)
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i8* %168, i8** %169, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %174 = call i32 @TCPGetSocketStatus(%struct.TYPE_20__* %172, i32* %173)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @NT_SUCCESS(i32 %175)
  %177 = call i32 @ASSERT(i32 %176)
  br label %178

178:                                              ; preds = %136, %93
  br label %179

179:                                              ; preds = %178, %83
  br label %180

180:                                              ; preds = %179, %76, %71
  br label %181

181:                                              ; preds = %180, %42
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @NT_SUCCESS(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %181
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* @TcpUdpClassOwner, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  %193 = call i32 @RtlZeroMemory(i64* %192, i32 8)
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 0
  store i64 %196, i64* %199, align 8
  br label %200

200:                                              ; preds = %189, %185
  %201 = ptrtoint %struct.TYPE_19__* %10 to i32
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @InfoCopyOut(i32 %201, i32 %202, i32 %203, i32 %204)
  store i32 %205, i32* %11, align 4
  br label %206

206:                                              ; preds = %200, %181
  %207 = load i32, i32* @DEBUG_INFO, align 4
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i8*
  %211 = call i32 @TI_DbgPrint(i32 %207, i8* %210)
  %212 = load i32, i32* %11, align 4
  ret i32 %212
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @HandleToUlong(i32) #1

declare dso_local i32 @TCPGetSockAddress(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @TCPGetSocketStatus(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @RtlZeroMemory(i64*, i32) #1

declare dso_local i32 @InfoCopyOut(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
