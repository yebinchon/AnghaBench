; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_allocate_scopes.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_allocate_scopes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i8*, %struct.TYPE_10__*, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@DNS_PROTOCOL_DNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate DNS scope: %m\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@RESOLVE_SUPPORT_NO = common dso_local global i64 0, align 8
@DNS_PROTOCOL_LLMNR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to allocate LLMNR IPv4 scope: %m\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to allocate LLMNR IPv6 scope: %m\00", align 1
@DNS_PROTOCOL_MDNS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to allocate mDNS IPv4 scope: %m\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to allocate mDNS IPv6 scope: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_allocate_scopes(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_9__* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = load i32, i32* @AF_UNSPEC, align 4
  %9 = call i32 @link_relevant(%struct.TYPE_9__* %7, i32 %8, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dns_server_reset_features_all(i64 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dns_server_reset_features_all(i64 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %15
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = call i32 @dns_cache_flush(i32* %43)
  br label %45

45:                                               ; preds = %37, %15
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %79, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 9
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dns_server_reset_features_all(i64 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = load i32, i32* @DNS_PROTOCOL_DNS, align 4
  %71 = load i32, i32* @AF_UNSPEC, align 4
  %72 = call i32 @dns_scope_new(%struct.TYPE_10__* %66, i8** %68, %struct.TYPE_9__* %69, i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @log_warning_errno(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %59
  br label %79

79:                                               ; preds = %78, %54
  br label %87

80:                                               ; preds = %49, %46
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @dns_scope_free(i8* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 8
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %80, %79
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = load i32, i32* @AF_INET, align 4
  %90 = call i32 @link_relevant(%struct.TYPE_9__* %88, i32 %89, i32 1)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %87
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %128

98:                                               ; preds = %92
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %128

106:                                              ; preds = %98
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 7
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %127, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 7
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %118 = load i32, i32* @DNS_PROTOCOL_LLMNR, align 4
  %119 = load i32, i32* @AF_INET, align 4
  %120 = call i32 @dns_scope_new(%struct.TYPE_10__* %114, i8** %116, %struct.TYPE_9__* %117, i32 %118, i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %111
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @log_warning_errno(i32 %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %111
  br label %127

127:                                              ; preds = %126, %106
  br label %135

128:                                              ; preds = %98, %92, %87
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 7
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @dns_scope_free(i8* %131)
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 7
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %128, %127
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %137 = load i32, i32* @AF_INET6, align 4
  %138 = call i32 @link_relevant(%struct.TYPE_9__* %136, i32 %137, i32 1)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %179

140:                                              ; preds = %135
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %179

146:                                              ; preds = %140
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %179

154:                                              ; preds = %146
  %155 = call i64 (...) @socket_ipv6_is_supported()
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %179

157:                                              ; preds = %154
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 6
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %178, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 6
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %169 = load i32, i32* @DNS_PROTOCOL_LLMNR, align 4
  %170 = load i32, i32* @AF_INET6, align 4
  %171 = call i32 @dns_scope_new(%struct.TYPE_10__* %165, i8** %167, %struct.TYPE_9__* %168, i32 %169, i32 %170)
  store i32 %171, i32* %4, align 4
  %172 = load i32, i32* %4, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %162
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @log_warning_errno(i32 %175, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %162
  br label %178

178:                                              ; preds = %177, %157
  br label %186

179:                                              ; preds = %154, %146, %140, %135
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 6
  %182 = load i8*, i8** %181, align 8
  %183 = call i8* @dns_scope_free(i8* %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 6
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %179, %178
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %188 = load i32, i32* @AF_INET, align 4
  %189 = call i32 @link_relevant(%struct.TYPE_9__* %187, i32 %188, i32 1)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %227

191:                                              ; preds = %186
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %227

197:                                              ; preds = %191
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %227

205:                                              ; preds = %197
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 5
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %226, label %210

210:                                              ; preds = %205
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 5
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %217 = load i32, i32* @DNS_PROTOCOL_MDNS, align 4
  %218 = load i32, i32* @AF_INET, align 4
  %219 = call i32 @dns_scope_new(%struct.TYPE_10__* %213, i8** %215, %struct.TYPE_9__* %216, i32 %217, i32 %218)
  store i32 %219, i32* %4, align 4
  %220 = load i32, i32* %4, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %210
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @log_warning_errno(i32 %223, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %210
  br label %226

226:                                              ; preds = %225, %205
  br label %234

227:                                              ; preds = %197, %191, %186
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 5
  %230 = load i8*, i8** %229, align 8
  %231 = call i8* @dns_scope_free(i8* %230)
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 5
  store i8* %231, i8** %233, align 8
  br label %234

234:                                              ; preds = %227, %226
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %236 = load i32, i32* @AF_INET6, align 4
  %237 = call i32 @link_relevant(%struct.TYPE_9__* %235, i32 %236, i32 1)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %275

239:                                              ; preds = %234
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %275

245:                                              ; preds = %239
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @RESOLVE_SUPPORT_NO, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %275

253:                                              ; preds = %245
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 3
  %256 = load i8*, i8** %255, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %274, label %258

258:                                              ; preds = %253
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 4
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %260, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 3
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %265 = load i32, i32* @DNS_PROTOCOL_MDNS, align 4
  %266 = load i32, i32* @AF_INET6, align 4
  %267 = call i32 @dns_scope_new(%struct.TYPE_10__* %261, i8** %263, %struct.TYPE_9__* %264, i32 %265, i32 %266)
  store i32 %267, i32* %4, align 4
  %268 = load i32, i32* %4, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %258
  %271 = load i32, i32* %4, align 4
  %272 = call i32 @log_warning_errno(i32 %271, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270, %258
  br label %274

274:                                              ; preds = %273, %253
  br label %282

275:                                              ; preds = %245, %239, %234
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 3
  %278 = load i8*, i8** %277, align 8
  %279 = call i8* @dns_scope_free(i8* %278)
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 3
  store i8* %279, i8** %281, align 8
  br label %282

282:                                              ; preds = %275, %274
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @link_relevant(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @dns_server_reset_features_all(i64) #1

declare dso_local i32 @dns_cache_flush(i32*) #1

declare dso_local i32 @dns_scope_new(%struct.TYPE_10__*, i8**, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i8* @dns_scope_free(i8*) #1

declare dso_local i64 @socket_ipv6_is_supported(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
