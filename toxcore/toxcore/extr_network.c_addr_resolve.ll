; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_network.c_addr_resolve.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_network.c_addr_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.addrinfo = type { i32, i32, i64, %struct.addrinfo*, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@TOX_ADDR_RESOLVE_INET = common dso_local global i32 0, align 4
@TOX_ADDR_RESOLVE_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_resolve(i8* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca %struct.sockaddr_in*, align 8
  %18 = alloca %struct.sockaddr_in*, align 8
  %19 = alloca %struct.sockaddr_in6*, align 8
  %20 = alloca %struct.sockaddr_in6*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %3
  store i32 0, i32* %4, align 4
  br label %198

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %31 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 32)
  %32 = load i64, i64* %8, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @SOCK_DGRAM, align 4
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = call i64 (...) @networking_at_startup()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %198

40:                                               ; preds = %27
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @getaddrinfo(i8* %41, i32* null, %struct.addrinfo* %11, %struct.addrinfo** %9)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %198

46:                                               ; preds = %40
  %47 = call i32 @ip_init(%struct.TYPE_11__* %15, i32 0)
  %48 = call i32 @ip_init(%struct.TYPE_11__* %16, i32 1)
  %49 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %49, %struct.addrinfo** %10, align 8
  br label %50

50:                                               ; preds = %156, %46
  %51 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %52 = icmp ne %struct.addrinfo* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %59, label %160

59:                                               ; preds = %57
  %60 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %155 [
    i32 129, label %63
    i32 128, label %102
  ]

63:                                               ; preds = %59
  %64 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %74, %struct.sockaddr_in** %17, align 8
  %75 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @TOX_ADDR_RESOLVE_INET, align 4
  store i32 %81, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %101

82:                                               ; preds = %63
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @TOX_ADDR_RESOLVE_INET, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %82
  %88 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %91, %struct.sockaddr_in** %18, align 8
  %92 = load %struct.sockaddr_in*, %struct.sockaddr_in** %18, align 8
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @TOX_ADDR_RESOLVE_INET, align 4
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %87, %82
  br label %101

101:                                              ; preds = %100, %70
  br label %155

102:                                              ; preds = %59
  %103 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %8, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %102
  %110 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp eq i64 %113, 4
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %117 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %119, %struct.sockaddr_in6** %19, align 8
  %120 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %121 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* @TOX_ADDR_RESOLVE_INET6, align 4
  store i32 %126, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %127

127:                                              ; preds = %115, %109
  br label %154

128:                                              ; preds = %102
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @TOX_ADDR_RESOLVE_INET6, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %153, label %133

133:                                              ; preds = %128
  %134 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %135 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp eq i64 %137, 4
  br i1 %138, label %139, label %152

139:                                              ; preds = %133
  %140 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %141 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %143, %struct.sockaddr_in6** %20, align 8
  %144 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %20, align 8
  %145 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @TOX_ADDR_RESOLVE_INET6, align 4
  %150 = load i32, i32* %13, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %139, %133
  br label %153

153:                                              ; preds = %152, %128
  br label %154

154:                                              ; preds = %153, %127
  br label %155

155:                                              ; preds = %59, %154, %101
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %158 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %157, i32 0, i32 3
  %159 = load %struct.addrinfo*, %struct.addrinfo** %158, align 8
  store %struct.addrinfo* %159, %struct.addrinfo** %10, align 8
  br label %50

160:                                              ; preds = %57
  %161 = load i64, i64* %8, align 8
  %162 = load i64, i64* @AF_UNSPEC, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %194

164:                                              ; preds = %160
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @TOX_ADDR_RESOLVE_INET6, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %164
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %171 = call i32 @ip_copy(%struct.TYPE_11__* %170, %struct.TYPE_11__* %16)
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* @TOX_ADDR_RESOLVE_INET, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %178 = icmp ne %struct.TYPE_11__* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %181 = call i32 @ip_copy(%struct.TYPE_11__* %180, %struct.TYPE_11__* %15)
  br label %182

182:                                              ; preds = %179, %176, %169
  br label %193

183:                                              ; preds = %164
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @TOX_ADDR_RESOLVE_INET, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %190 = call i32 @ip_copy(%struct.TYPE_11__* %189, %struct.TYPE_11__* %15)
  br label %192

191:                                              ; preds = %183
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %191, %188
  br label %193

193:                                              ; preds = %192, %182
  br label %194

194:                                              ; preds = %193, %160
  %195 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %196 = call i32 @freeaddrinfo(%struct.addrinfo* %195)
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %194, %45, %39, %26
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @networking_at_startup(...) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ip_init(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ip_copy(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
