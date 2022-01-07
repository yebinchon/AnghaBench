; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_gethostbyname.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_gethostbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64 }
%struct.in_addr = type { i32 }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_12__, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"gethostname() call failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"gethostbyname(\22%s\22) failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"List of local IPs:\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"expected 127.0.0.1 to be the only IP returned\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Only the loopback address is present, skipping tests\0A\00", align 1
@ERROR_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"GetAdaptersInfo failed with a different error: %d\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"GetIpForwardTable failed with a different error: %d\0A\00", align 1
@NO_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"GetAdaptersInfo failed, error: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"GetIpForwardTable failed, error: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Only one IP is present, skipping tests\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"failed to find the first IP from gethostbyname!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gethostbyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gethostbyname() #0 {
  %1 = alloca %struct.hostent*, align 8
  %2 = alloca %struct.in_addr**, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %20 = call i32 @gethostname(i8* %19, i32 256)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 (...) @WSAGetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %27 = call %struct.hostent* @gethostbyname(i8* %26)
  store %struct.hostent* %27, %struct.hostent** %1, align 8
  %28 = load %struct.hostent*, %struct.hostent** %1, align 8
  %29 = icmp ne %struct.hostent* %28, null
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %32 = call i32 (...) @WSAGetLastError()
  %33 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32)
  %34 = load %struct.hostent*, %struct.hostent** %1, align 8
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.in_addr**
  store %struct.in_addr** %37, %struct.in_addr*** %2, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %39 = load %struct.in_addr**, %struct.in_addr*** %2, align 8
  %40 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %39, i64 0
  %41 = load %struct.in_addr*, %struct.in_addr** %40, align 8
  %42 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @inet_ntoa(i32 %43)
  %45 = call i32 @strcpy(i8* %38, i8* %44)
  %46 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %71, %0
  %48 = load %struct.in_addr**, %struct.in_addr*** %2, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %48, i64 %50
  %52 = load %struct.in_addr*, %struct.in_addr** %51, align 8
  %53 = icmp ne %struct.in_addr* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %47
  %55 = load %struct.in_addr**, %struct.in_addr*** %2, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %55, i64 %57
  %59 = load %struct.in_addr*, %struct.in_addr** %58, align 8
  %60 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @inet_ntoa(i32 %61)
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %66, %54
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %47

74:                                               ; preds = %47
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %82 = call i32 @skip(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %204

83:                                               ; preds = %74
  %84 = call i32 @pGetAdaptersInfo(%struct.TYPE_13__* null, i32* %11)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @FALSE, align 4
  %92 = call i32 @pGetIpForwardTable(%struct.TYPE_13__* null, i32* %12, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  %99 = call i32 (...) @GetProcessHeap()
  %100 = load i32, i32* %11, align 4
  %101 = call %struct.TYPE_13__* @HeapAlloc(i32 %99, i32 0, i32 %100)
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %9, align 8
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load i32, i32* %12, align 4
  %104 = call %struct.TYPE_13__* @HeapAlloc(i32 %102, i32 0, i32 %103)
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %8, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = call i32 @pGetAdaptersInfo(%struct.TYPE_13__* %105, i32* %11)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @NO_ERROR, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %5, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32 @pGetIpForwardTable(%struct.TYPE_13__* %113, i32* %12, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @NO_ERROR, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %5, align 4
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = icmp eq %struct.TYPE_13__* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %83
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 @skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %197

131:                                              ; preds = %126, %83
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %191, %131
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br label %141

141:                                              ; preds = %135, %132
  %142 = phi i1 [ false, %132 ], [ %140, %135 ]
  br i1 %142, label %143, label %194

143:                                              ; preds = %141
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %191

154:                                              ; preds = %143
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %155, %struct.TYPE_13__** %10, align 8
  br label %156

156:                                              ; preds = %186, %154
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %158 = icmp ne %struct.TYPE_13__* %157, null
  br i1 %158, label %159, label %190

159:                                              ; preds = %156
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %162, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %159
  br label %186

173:                                              ; preds = %159
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  store i8* %178, i8** %16, align 8
  %179 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %180 = load i8*, i8** %16, align 8
  %181 = call i32 @strcmp(i8* %179, i8* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %173
  %184 = load i32, i32* @TRUE, align 4
  store i32 %184, i32* %13, align 4
  br label %190

185:                                              ; preds = %173
  br label %186

186:                                              ; preds = %185, %172
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  store %struct.TYPE_13__* %189, %struct.TYPE_13__** %10, align 8
  br label %156

190:                                              ; preds = %183, %156
  br label %191

191:                                              ; preds = %190, %153
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %132

194:                                              ; preds = %141
  %195 = load i32, i32* %13, align 4
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %129
  %198 = call i32 (...) @GetProcessHeap()
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %200 = call i32 @HeapFree(i32 %198, i32 0, %struct.TYPE_13__* %199)
  %201 = call i32 (...) @GetProcessHeap()
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %203 = call i32 @HeapFree(i32 %201, i32 0, %struct.TYPE_13__* %202)
  br label %204

204:                                              ; preds = %197, %77
  ret void
}

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @pGetAdaptersInfo(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @pGetIpForwardTable(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local %struct.TYPE_13__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
