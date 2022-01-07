; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_udp.c_net_OpenDgram.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_udp.c_net_OpenDgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i32, i64, i32, i32, %struct.addrinfo* }

@.str = private unnamed_addr constant [40 x i8] c"net: connecting to [%s]:%u from [%s]:%u\00", align 1
@SOCK_DGRAM = common dso_local global i64 0, align 8
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@AI_IDN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot resolve %s port %u : %s\00", align 1
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot connect to %s port %u: %s\00", align 1
@net_errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_OpenDgram(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.addrinfo, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.addrinfo*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.addrinfo*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %6
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23, %6
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @net_ListenSingle(i32* %30, i8* %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %209

35:                                               ; preds = %23
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @msg_Dbg(i32* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38, i8* %39, i32 %40)
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  %43 = load i64, i64* @SOCK_DGRAM, align 8
  store i64 %43, i64* %42, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 1
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 2
  %47 = load i32, i32* @AI_NUMERICSERV, align 4
  %48 = load i32, i32* @AI_IDN, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 4
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 5
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 6
  store %struct.addrinfo* null, %struct.addrinfo** %53, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @vlc_getaddrinfo(i8* %54, i32 %55, %struct.addrinfo* %14, %struct.addrinfo** %16)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %35
  %60 = load i32*, i32** %8, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @gai_strerror(i32 %63)
  %65 = call i32 @msg_Err(i32* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %62, i32 %64)
  store i32 -1, i32* %7, align 4
  br label %209

66:                                               ; preds = %35
  %67 = load i32, i32* @AI_PASSIVE, align 4
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @vlc_getaddrinfo(i8* %71, i32 %72, %struct.addrinfo* %14, %struct.addrinfo** %15)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i32*, i32** %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @gai_strerror(i32 %80)
  %82 = call i32 @msg_Err(i32* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %78, i32 %79, i32 %81)
  %83 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %84 = call i32 @freeaddrinfo(%struct.addrinfo* %83)
  store i32 -1, i32* %7, align 4
  br label %209

85:                                               ; preds = %66
  store i32 -1, i32* %17, align 4
  %86 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  store %struct.addrinfo* %86, %struct.addrinfo** %18, align 8
  br label %87

87:                                               ; preds = %199, %85
  %88 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %89 = icmp ne %struct.addrinfo* %88, null
  br i1 %89, label %90, label %203

90:                                               ; preds = %87
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %93 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @net_Socket(i32* %91, i64 %94, i64 %97, i32 %100)
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %90
  br label %199

105:                                              ; preds = %90
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %109 = call i32 @net_SetupDgramSocket(i32* %106, i32 %107, %struct.addrinfo* %108)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %199

113:                                              ; preds = %105
  %114 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  store %struct.addrinfo* %114, %struct.addrinfo** %20, align 8
  br label %115

115:                                              ; preds = %188, %113
  %116 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %117 = icmp ne %struct.addrinfo* %116, null
  br i1 %117, label %118, label %192

118:                                              ; preds = %115
  %119 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %120 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %123 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %142, label %126

126:                                              ; preds = %118
  %127 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %128 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %131 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %142, label %134

134:                                              ; preds = %126
  %135 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %139 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %134, %126, %118
  br label %188

143:                                              ; preds = %134
  %144 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %145 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %148 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @net_SockAddrIsMulticast(i32 %146, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %169

152:                                              ; preds = %143
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %19, align 4
  %155 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %156 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %159 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %162 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %165 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @net_SourceSubscribe(i32* %153, i32 %154, i32 %157, i32 %160, i32 %163, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %179, label %186

169:                                              ; preds = %143
  %170 = load i32, i32* %19, align 4
  %171 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %172 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %175 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @connect(i32 %170, i32 %173, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %169, %152
  %180 = load i32*, i32** %8, align 8
  %181 = load i8*, i8** %11, align 8
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @net_errno, align 4
  %184 = call i32 @vlc_strerror_c(i32 %183)
  %185 = call i32 @msg_Err(i32* %180, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %181, i32 %182, i32 %184)
  br label %188

186:                                              ; preds = %169, %152
  %187 = load i32, i32* %19, align 4
  store i32 %187, i32* %17, align 4
  br label %192

188:                                              ; preds = %179, %142
  %189 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %190 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %189, i32 0, i32 6
  %191 = load %struct.addrinfo*, %struct.addrinfo** %190, align 8
  store %struct.addrinfo* %191, %struct.addrinfo** %20, align 8
  br label %115

192:                                              ; preds = %186, %115
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %193, -1
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %203

196:                                              ; preds = %192
  %197 = load i32, i32* %19, align 4
  %198 = call i32 @net_Close(i32 %197)
  br label %199

199:                                              ; preds = %196, %112, %104
  %200 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %201 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %200, i32 0, i32 6
  %202 = load %struct.addrinfo*, %struct.addrinfo** %201, align 8
  store %struct.addrinfo* %202, %struct.addrinfo** %18, align 8
  br label %87

203:                                              ; preds = %195, %87
  %204 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %205 = call i32 @freeaddrinfo(%struct.addrinfo* %204)
  %206 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %207 = call i32 @freeaddrinfo(%struct.addrinfo* %206)
  %208 = load i32, i32* %17, align 4
  store i32 %208, i32* %7, align 4
  br label %209

209:                                              ; preds = %203, %76, %59, %29
  %210 = load i32, i32* %7, align 4
  ret i32 %210
}

declare dso_local i32 @net_ListenSingle(i32*, i8*, i32, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @vlc_getaddrinfo(i8*, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @net_Socket(i32*, i64, i64, i32) #1

declare dso_local i32 @net_SetupDgramSocket(i32*, i32, %struct.addrinfo*) #1

declare dso_local i64 @net_SockAddrIsMulticast(i32, i32) #1

declare dso_local i64 @net_SourceSubscribe(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @net_Close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
