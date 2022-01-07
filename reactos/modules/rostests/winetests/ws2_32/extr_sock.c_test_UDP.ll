; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_UDP.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_UDP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_info = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@NUM_UDP_PEERS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"UDP: socket failed\0A\00", align 1
@SERVERIP = common dso_local global i32 0, align 4
@SERVERPORT = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"UDP: could not getsockname()\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"UDP: bind() did not associate port\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"UDP: getsockname returned incorrect peer port\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"UDP: sendto() sent wrong amount of data or socket error: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"UDP: recvfrom() received wrong amount of data or socket error: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"UDP: port numbers do not match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_UDP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UDP() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @NUM_UDP_PEERS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca %struct.sock_info, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 16)
  %14 = load i32, i32* @NUM_UDP_PEERS, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %99, %0
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %102

19:                                               ; preds = %16
  %20 = load i32, i32* @AF_INET, align 4
  %21 = load i32, i32* @SOCK_DGRAM, align 4
  %22 = call i32 @socket(i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %24
  %26 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @INVALID_SOCKET, align 4
  %28 = icmp ne i32 %22, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @AF_INET, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %33
  %35 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* @SERVERIP, align 4
  %38 = call i32 @inet_addr(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %40
  %42 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %38, i32* %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %19
  %48 = load i32, i32* @SERVERPORT, align 4
  %49 = call i64 @htons(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %51
  %53 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %49, i64* %54, align 8
  br label %62

55:                                               ; preds = %19
  %56 = call i64 @htons(i32 0)
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %58
  %60 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i64 %56, i64* %61, align 8
  br label %62

62:                                               ; preds = %55, %47
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %64
  %66 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %69
  %71 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %70, i32 0, i32 2
  %72 = bitcast %struct.TYPE_5__* %71 to %struct.sockaddr*
  %73 = call i32 @do_bind(i32 %67, %struct.sockaddr* %72, i32 16)
  store i32 16, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %75
  %77 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %80
  %82 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %81, i32 0, i32 2
  %83 = bitcast %struct.TYPE_5__* %82 to %struct.sockaddr*
  %84 = call i64 @getsockname(i32 %78, %struct.sockaddr* %83, i32* %4)
  %85 = load i64, i64* @SOCKET_ERROR, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %90
  %92 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @htons(i32 0)
  %96 = icmp ne i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %62
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %5, align 4
  br label %16

102:                                              ; preds = %16
  %103 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 0
  %104 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @SERVERPORT, align 4
  %108 = call i64 @htons(i32 %107)
  %109 = icmp eq i64 %106, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %140, %102
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @NUM_UDP_PEERS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %143

116:                                              ; preds = %112
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %119
  %121 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = call i32 @memcpy(i8* %117, i64* %122, i32 8)
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 %125
  %127 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %130 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 0
  %131 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %130, i32 0, i32 2
  %132 = bitcast %struct.TYPE_5__* %131 to %struct.sockaddr*
  %133 = call i32 @sendto(i32 %128, i8* %129, i32 16, i32 0, %struct.sockaddr* %132, i32 16)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp eq i64 %135, 16
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %7, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %116
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %112

143:                                              ; preds = %112
  store i32 1, i32* %5, align 4
  br label %144

144:                                              ; preds = %171, %143
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @NUM_UDP_PEERS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %174

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 0
  %150 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %153 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 0
  %154 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %153, i32 0, i32 0
  %155 = bitcast %struct.TYPE_6__* %154 to %struct.sockaddr*
  %156 = call i32 @recvfrom(i32 %151, i8* %152, i32 16, i32 0, %struct.sockaddr* %155, i32* %4)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp eq i64 %158, 16
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %6, align 4
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  %163 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %11, i64 0
  %164 = getelementptr inbounds %struct.sock_info, %struct.sock_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %167 = call i64 @memcmp(i32* %165, i8* %166, i32 8)
  %168 = icmp eq i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %171

171:                                              ; preds = %148
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %144

174:                                              ; preds = %144
  %175 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %175)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @inet_addr(i32) #2

declare dso_local i64 @htons(i32) #2

declare dso_local i32 @do_bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @memcpy(i8*, i64*, i32) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
