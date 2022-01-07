; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_getaddrinfo.c_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_getaddrinfo.c_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i64, i32, i32, %struct.addrinfo* }
%struct.hostent = type { i32, i64, i8*, i64 }

@_AI_MASK = common dso_local global i32 0, align 4
@EAI_BADFLAGS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@EAI_FAMILY = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@EAI_SOCKTYPE = common dso_local global i32 0, align 4
@EAI_SERVICE = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AI_CANONNAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getaddrinfo(i8* %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo**, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.hostent*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %8, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %19 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %20 = icmp ne %struct.addrinfo* %19, null
  br i1 %20, label %21, label %73

21:                                               ; preds = %4
  %22 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @_AI_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @EAI_BADFLAGS, align 4
  store i32 %31, i32* %5, align 4
  br label %235

32:                                               ; preds = %21
  %33 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_INET, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @EAI_FAMILY, align 4
  store i32 %44, i32* %5, align 4
  br label %235

45:                                               ; preds = %37, %32
  %46 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %54 [
    i32 128, label %49
    i32 130, label %51
    i32 129, label %53
    i32 0, label %53
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %50, i32* %13, align 4
  br label %56

51:                                               ; preds = %45
  %52 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %52, i32* %13, align 4
  br label %56

53:                                               ; preds = %45, %45
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @EAI_SOCKTYPE, align 4
  store i32 %55, i32* %5, align 4
  br label %235

56:                                               ; preds = %53, %51, %49
  %57 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @EAI_SERVICE, align 4
  store i32 %71, i32* %5, align 4
  br label %235

72:                                               ; preds = %64, %61, %56
  br label %73

73:                                               ; preds = %72, %4
  %74 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %74, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @AI_PASSIVE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @INADDR_ANY, align 4
  %84 = call i32 @htonl(i32 %83)
  store i32 %84, i32* %11, align 4
  br label %88

85:                                               ; preds = %77
  %86 = load i32, i32* @INADDR_LOOPBACK, align 4
  %87 = call i32 @htonl(i32 %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %136

89:                                               ; preds = %73
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @inet_addr(i8* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* @INADDR_NONE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %135

94:                                               ; preds = %89
  store %struct.hostent* null, %struct.hostent** %16, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @AI_NUMERICHOST, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %6, align 8
  %101 = call %struct.hostent* @gethostbyname(i8* %100)
  store %struct.hostent* %101, %struct.hostent** %16, align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.hostent*, %struct.hostent** %16, align 8
  %104 = icmp eq %struct.hostent* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 (...) @gai_error_from_herrno()
  store i32 %106, i32* %5, align 4
  br label %235

107:                                              ; preds = %102
  %108 = load %struct.hostent*, %struct.hostent** %16, align 8
  %109 = getelementptr inbounds %struct.hostent, %struct.hostent* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 4
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load %struct.hostent*, %struct.hostent** %16, align 8
  %114 = getelementptr inbounds %struct.hostent, %struct.hostent* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @AF_INET, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112, %107
  %119 = load i32, i32* @EAI_FAMILY, align 4
  store i32 %119, i32* %5, align 4
  br label %235

120:                                              ; preds = %112
  %121 = load %struct.hostent*, %struct.hostent** %16, align 8
  %122 = getelementptr inbounds %struct.hostent, %struct.hostent* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @AI_CANONNAME, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = load %struct.hostent*, %struct.hostent** %16, align 8
  %132 = getelementptr inbounds %struct.hostent, %struct.hostent* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %15, align 8
  br label %134

134:                                              ; preds = %130, %120
  br label %135

135:                                              ; preds = %134, %89
  br label %136

136:                                              ; preds = %135, %88
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @AI_CANONNAME, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i8*, i8** %15, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i8*, i8** %6, align 8
  store i8* %145, i8** %15, align 8
  br label %146

146:                                              ; preds = %144, %141, %136
  %147 = load i8*, i8** %7, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i64 0, i64* %12, align 8
  br label %166

150:                                              ; preds = %146
  %151 = load i8*, i8** %7, align 8
  %152 = call i64 @strtoul(i8* %151, i8** %18, i32 0)
  store i64 %152, i64* %17, align 8
  %153 = load i8*, i8** %18, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %150
  %159 = load i64, i64* %17, align 8
  %160 = icmp ugt i64 %159, 65535
  br i1 %160, label %161, label %163

161:                                              ; preds = %158, %150
  %162 = load i32, i32* @EAI_SERVICE, align 4
  store i32 %162, i32* %5, align 4
  br label %235

163:                                              ; preds = %158
  %164 = load i64, i64* %17, align 8
  %165 = call i64 @htons(i64 %164)
  store i64 %165, i64* %12, align 8
  br label %166

166:                                              ; preds = %163, %149
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* @IPPROTO_UDP, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %198

173:                                              ; preds = %169, %166
  %174 = load i32, i32* @IPPROTO_UDP, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i64, i64* %12, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = call %struct.addrinfo* @makeipv4info(i32 130, i32 %174, i32 %175, i64 %176, i8* %177)
  store %struct.addrinfo* %178, %struct.addrinfo** %10, align 8
  %179 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %180 = icmp eq %struct.addrinfo* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = load i32, i32* @ENOMEM, align 4
  store i32 %182, i32* @errno, align 4
  %183 = load i32, i32* @EAI_SYSTEM, align 4
  store i32 %183, i32* %5, align 4
  br label %235

184:                                              ; preds = %173
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @AI_PASSIVE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load i32, i32* @AI_PASSIVE, align 4
  %191 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %192 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %189, %184
  %196 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %197 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %196, %struct.addrinfo** %197, align 8
  br label %198

198:                                              ; preds = %195, %169
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* @IPPROTO_TCP, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %234

205:                                              ; preds = %201, %198
  %206 = load i32, i32* @IPPROTO_TCP, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i64, i64* %12, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = call %struct.addrinfo* @makeipv4info(i32 128, i32 %206, i32 %207, i64 %208, i8* %209)
  store %struct.addrinfo* %210, %struct.addrinfo** %10, align 8
  %211 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %212 = icmp eq %struct.addrinfo* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load i32, i32* @ENOMEM, align 4
  store i32 %214, i32* @errno, align 4
  %215 = load i32, i32* @EAI_SYSTEM, align 4
  store i32 %215, i32* %5, align 4
  br label %235

216:                                              ; preds = %205
  %217 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %218 = load %struct.addrinfo*, %struct.addrinfo** %217, align 8
  %219 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %220 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %219, i32 0, i32 4
  store %struct.addrinfo* %218, %struct.addrinfo** %220, align 8
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* @AI_PASSIVE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %216
  %226 = load i32, i32* @AI_PASSIVE, align 4
  %227 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %228 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %225, %216
  %232 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %233 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %232, %struct.addrinfo** %233, align 8
  br label %234

234:                                              ; preds = %231, %201
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %234, %213, %181, %161, %118, %105, %70, %54, %43, %30
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @gai_error_from_herrno(...) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local %struct.addrinfo* @makeipv4info(i32, i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
