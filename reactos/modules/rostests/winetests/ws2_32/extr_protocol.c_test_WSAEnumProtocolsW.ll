; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_protocol.c_test_WSAEnumProtocolsW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_protocol.c_test_WSAEnumProtocolsW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WSAEnumProtocolsW() succeeded unexpectedly\0A\00", align 1
@WSAENOBUFS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected 10055, received %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"WSAEnumProtocolsW() failed unexpectedly: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"No protocol name found\0A\00", align 1
@WSAEFAULT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Expected at least 2 items, received %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Expected 2 bits represented as 0xA, received 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WSAEnumProtocolsW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WSAEnumProtocolsW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca [6 x i32], align 16
  store i64 0, i64* %5, align 8
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  store i32 57005, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 51966, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 48879, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %17, align 4
  %18 = call i32 @WSAEnumProtocolsW(i32* null, %struct.TYPE_5__* null, i64* %5)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @SOCKET_ERROR, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @WSAGetLastError()
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @WSAENOBUFS, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %6, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  store i64 0, i64* %5, align 8
  %32 = call i32 @WSAEnumProtocolsW(i32* null, %struct.TYPE_5__* %7, i64* %5)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @SOCKET_ERROR, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 (...) @WSAGetLastError()
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @WSAENOBUFS, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %6, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load i64, i64* %5, align 8
  %48 = call %struct.TYPE_5__* @HeapAlloc(i32 %46, i32 0, i64 %47)
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %8, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %111

51:                                               ; preds = %0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = call i32 @WSAEnumProtocolsW(i32* null, %struct.TYPE_5__* %52, i64* %5)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @SOCKET_ERROR, align 4
  %56 = icmp ne i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 (...) @WSAGetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %104, %51
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* %1, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %107

64:                                               ; preds = %60
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @lstrlenW(i32 %70)
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @test_service_flags(i32 %78, i32 %84, i32 %90, i32 %96, i32 %102)
  br label %104

104:                                              ; preds = %64
  %105 = load i32, i32* %2, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %2, align 4
  br label %60

107:                                              ; preds = %60
  %108 = call i32 (...) @GetProcessHeap()
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %110 = call i32 @HeapFree(i32 %108, i32 0, %struct.TYPE_5__* %109)
  br label %111

111:                                              ; preds = %107, %0
  %112 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %113 = call i32 @WSAEnumProtocolsW(i32* %112, %struct.TYPE_5__* null, i64* %5)
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* %1, align 4
  %115 = load i32, i32* @SOCKET_ERROR, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %119 = call i32 (...) @WSAGetLastError()
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* @WSAENOBUFS, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %131, label %124

124:                                              ; preds = %111
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @WSAEFAULT, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i64 @broken(i32 %128)
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %124, %111
  %132 = phi i1 [ true, %111 ], [ %130, %124 ]
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %6, align 8
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  %136 = call i32 (...) @GetProcessHeap()
  %137 = load i64, i64* %5, align 8
  %138 = call %struct.TYPE_5__* @HeapAlloc(i32 %136, i32 0, i64 %137)
  store %struct.TYPE_5__* %138, %struct.TYPE_5__** %8, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = icmp ne %struct.TYPE_5__* %139, null
  br i1 %140, label %141, label %199

141:                                              ; preds = %131
  %142 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %144 = call i32 @WSAEnumProtocolsW(i32* %142, %struct.TYPE_5__* %143, i64* %5)
  store i32 %144, i32* %1, align 4
  %145 = load i32, i32* %1, align 4
  %146 = load i32, i32* @SOCKET_ERROR, align 4
  %147 = icmp ne i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 (...) @WSAGetLastError()
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %1, align 4
  %152 = icmp sge i32 %151, 2
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %1, align 4
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %187, %141
  %157 = load i32, i32* %2, align 4
  %158 = load i32, i32* %1, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %190

160:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %183, %160
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp ult i64 %163, 6
  br i1 %164, label %165, label %186

165:                                              ; preds = %161
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %167 = load i32, i32* %2, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %3, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %171, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %165
  %178 = load i32, i32* %3, align 4
  %179 = shl i32 1, %178
  %180 = load i32, i32* %4, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %4, align 4
  br label %186

182:                                              ; preds = %165
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %161

186:                                              ; preds = %177, %161
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %2, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %2, align 4
  br label %156

190:                                              ; preds = %156
  %191 = load i32, i32* %4, align 4
  %192 = icmp eq i32 %191, 10
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %4, align 4
  %195 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  %196 = call i32 (...) @GetProcessHeap()
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %198 = call i32 @HeapFree(i32 %196, i32 0, %struct.TYPE_5__* %197)
  br label %199

199:                                              ; preds = %190, %131
  ret void
}

declare dso_local i32 @WSAEnumProtocolsW(i32*, %struct.TYPE_5__*, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @test_service_flags(i32, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
