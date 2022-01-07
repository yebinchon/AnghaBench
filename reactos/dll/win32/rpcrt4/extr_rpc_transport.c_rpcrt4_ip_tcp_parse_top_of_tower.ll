; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ip_tcp_parse_top_of_tower.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ip_tcp_parse_top_of_tower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %d, %p, %p)\0A\00", align 1
@EPT_S_NOT_REGISTERED = common dso_local global i32 0, align 4
@EPM_PROTOCOL_IP = common dso_local global i64 0, align 8
@RPC_S_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"inet_ntop: %u\0A\00", align 1
@RPC_S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8**, i8, i8**)* @rpcrt4_ip_tcp_parse_top_of_tower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrt4_ip_tcp_parse_top_of_tower(i8* %0, i64 %1, i8** %2, i8 zeroext %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.in_addr, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8 %3, i8* %10, align 1
  store i8** %4, i8*** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8**, i8*** %11, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %19, i8** %20, i8** %21)
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %23, 16
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @EPT_S_NOT_REGISTERED, align 4
  store i32 %26, i32* %6, align 4
  br label %147

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 16
  store i8* %29, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %30, 16
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %32, 24
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @EPT_S_NOT_REGISTERED, align 4
  store i32 %35, i32* %6, align 4
  br label %147

36:                                               ; preds = %27
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %13, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 1
  br i1 %43, label %76, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 4
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %76, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 4
  br i1 %57, label %76, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 8
  br i1 %63, label %76, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @EPM_PROTOCOL_IP, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 4
  br i1 %75, label %76, label %78

76:                                               ; preds = %70, %64, %58, %52, %44, %36
  %77 = load i32, i32* @EPT_S_NOT_REGISTERED, align 4
  store i32 %77, i32* %6, align 4
  br label %147

78:                                               ; preds = %70
  %79 = load i8**, i8*** %11, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = call i8* @I_RpcAllocate(i32 6)
  %83 = load i8**, i8*** %11, align 8
  store i8* %82, i8** %83, align 8
  %84 = load i8**, i8*** %11, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @RPC_S_OUT_OF_RESOURCES, align 4
  store i32 %88, i32* %6, align 4
  br label %147

89:                                               ; preds = %81
  %90 = load i8**, i8*** %11, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ntohs(i32 %94)
  %96 = call i32 @sprintf(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %89, %78
  %98 = load i8**, i8*** %9, align 8
  %99 = icmp ne i8** %98, null
  br i1 %99, label %100, label %145

100:                                              ; preds = %97
  %101 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %102 = call i8* @I_RpcAllocate(i32 %101)
  %103 = load i8**, i8*** %9, align 8
  store i8* %102, i8** %103, align 8
  %104 = load i8**, i8*** %9, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %117, label %107

107:                                              ; preds = %100
  %108 = load i8**, i8*** %11, align 8
  %109 = icmp ne i8** %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i8**, i8*** %11, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @I_RpcFree(i8* %112)
  %114 = load i8**, i8*** %11, align 8
  store i8* null, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i32, i32* @RPC_S_OUT_OF_RESOURCES, align 4
  store i32 %116, i32* %6, align 4
  br label %147

117:                                              ; preds = %100
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @AF_INET, align 4
  %123 = load i8**, i8*** %9, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %126 = call i32 @inet_ntop(i32 %122, %struct.in_addr* %14, i8* %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %117
  %129 = call i32 (...) @WSAGetLastError()
  %130 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i8**, i8*** %9, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @I_RpcFree(i8* %132)
  %134 = load i8**, i8*** %9, align 8
  store i8* null, i8** %134, align 8
  %135 = load i8**, i8*** %11, align 8
  %136 = icmp ne i8** %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %128
  %138 = load i8**, i8*** %11, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @I_RpcFree(i8* %139)
  %141 = load i8**, i8*** %11, align 8
  store i8* null, i8** %141, align 8
  br label %142

142:                                              ; preds = %137, %128
  %143 = load i32, i32* @EPT_S_NOT_REGISTERED, align 4
  store i32 %143, i32* %6, align 4
  br label %147

144:                                              ; preds = %117
  br label %145

145:                                              ; preds = %144, %97
  %146 = load i32, i32* @RPC_S_OK, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %142, %115, %87, %76, %34, %25
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @TRACE(i8*, i8*, i32, i8**, i8**) #1

declare dso_local i8* @I_RpcAllocate(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @I_RpcFree(i8*) #1

declare dso_local i32 @inet_ntop(i32, %struct.in_addr*, i8*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
