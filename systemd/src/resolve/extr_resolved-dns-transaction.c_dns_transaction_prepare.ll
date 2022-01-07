; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-transaction.c_dns_transaction_prepare.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-transaction.c_dns_transaction_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i32, i8*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_16__*, i32, i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@DNS_TRANSACTION_NETWORK_DOWN = common dso_local global i32 0, align 4
@DNS_TRANSACTION_ATTEMPTS_MAX_REACHED = common dso_local global i32 0, align 4
@DNS_PROTOCOL_LLMNR = common dso_local global i64 0, align 8
@DNS_PROTOCOL_DNS = common dso_local global i64 0, align 8
@DNS_RCODE_SUCCESS = common dso_local global i64 0, align 8
@DNS_TRANSACTION_TRUST_ANCHOR = common dso_local global i8* null, align 8
@DNS_TRANSACTION_SUCCESS = common dso_local global i32 0, align 4
@DNS_TYPE_DS = common dso_local global i64 0, align 8
@DNSSEC_ALLOW_DOWNGRADE = common dso_local global i64 0, align 8
@DNS_TRANSACTION_NO_TRUST_ANCHOR = common dso_local global i32 0, align 4
@DNS_TRANSACTION_ZONE = common dso_local global i8* null, align 8
@DNS_TRANSACTION_CACHE = common dso_local global i8* null, align 8
@DNS_TRANSACTION_RCODE_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @dns_transaction_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_transaction_prepare(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_18__* %7)
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = call i32 @dns_transaction_stop_timeout(%struct.TYPE_18__* %9)
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 7
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = call i32 @dns_scope_network_good(%struct.TYPE_16__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = load i32, i32* @DNS_TRANSACTION_NETWORK_DOWN, align 4
  %19 = call i32 @dns_transaction_complete(%struct.TYPE_18__* %17, i32 %18)
  store i32 0, i32* %3, align 4
  br label %245

20:                                               ; preds = %2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @TRANSACTION_ATTEMPTS_MAX(i64 %28)
  %30 = icmp sge i64 %23, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = load i32, i32* @DNS_TRANSACTION_ATTEMPTS_MAX_REACHED, align 4
  %34 = call i32 @dns_transaction_complete(%struct.TYPE_18__* %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %245

35:                                               ; preds = %20
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 7
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DNS_PROTOCOL_LLMNR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 10
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = load i32, i32* @DNS_TRANSACTION_ATTEMPTS_MAX_REACHED, align 4
  %51 = call i32 @dns_transaction_complete(%struct.TYPE_18__* %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %245

52:                                               ; preds = %43, %35
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = call i32 @dns_transaction_reset_answer(%struct.TYPE_18__* %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = call i32 @dns_transaction_flush_dnssec_transactions(%struct.TYPE_18__* %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 7
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DNS_PROTOCOL_DNS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %144

71:                                               ; preds = %52
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 4
  %83 = call i32 @dns_trust_anchor_lookup_positive(i32* %77, %struct.TYPE_19__* %80, i32* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %245

88:                                               ; preds = %71
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i64, i64* @DNS_RCODE_SUCCESS, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i8*, i8** @DNS_TRANSACTION_TRUST_ANCHOR, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %101 = load i32, i32* @DNS_TRANSACTION_SUCCESS, align 4
  %102 = call i32 @dns_transaction_complete(%struct.TYPE_18__* %100, i32 %101)
  store i32 0, i32* %3, align 4
  br label %245

103:                                              ; preds = %88
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = call i32 @dns_resource_key_name(%struct.TYPE_19__* %106)
  %108 = call i64 @dns_name_is_root(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %143

110:                                              ; preds = %103
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 6
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DNS_TYPE_DS, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %110
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 7
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DNSSEC_ALLOW_DOWNGRADE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %118
  %127 = load i64, i64* @DNS_RCODE_SUCCESS, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load i8*, i8** @DNS_TRANSACTION_TRUST_ANCHOR, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  store i32 0, i32* %134, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = load i32, i32* @DNS_TRANSACTION_SUCCESS, align 4
  %137 = call i32 @dns_transaction_complete(%struct.TYPE_18__* %135, i32 %136)
  br label %142

138:                                              ; preds = %118
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = load i32, i32* @DNS_TRANSACTION_NO_TRUST_ANCHOR, align 4
  %141 = call i32 @dns_transaction_complete(%struct.TYPE_18__* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %126
  store i32 0, i32* %3, align 4
  br label %245

143:                                              ; preds = %110, %103
  br label %144

144:                                              ; preds = %143, %52
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @set_isempty(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %185

150:                                              ; preds = %144
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %156, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 7
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = call i32 @dns_scope_ifindex(%struct.TYPE_16__* %160)
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 4
  %164 = call i32 @dns_zone_lookup(i32* %154, %struct.TYPE_19__* %157, i32 %161, i32* %163, i32* null, i32* null)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %150
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %245

169:                                              ; preds = %150
  %170 = load i32, i32* %6, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = load i64, i64* @DNS_RCODE_SUCCESS, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load i8*, i8** @DNS_TRANSACTION_ZONE, align 8
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 3
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 2
  store i32 1, i32* %180, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = load i32, i32* @DNS_TRANSACTION_SUCCESS, align 4
  %183 = call i32 @dns_transaction_complete(%struct.TYPE_18__* %181, i32 %182)
  store i32 0, i32* %3, align 4
  br label %245

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184, %144
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @set_isempty(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %244

191:                                              ; preds = %185
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 7
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = call i32 @dns_scope_get_dns_server(%struct.TYPE_16__* %194)
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 2
  %200 = call i32 @dns_cache_prune(i32* %199)
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 7
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 6
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 2
  %217 = call i32 @dns_cache_lookup(i32* %204, %struct.TYPE_19__* %207, i32 %210, i64* %212, i32* %214, i32* %216)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %191
  %221 = load i32, i32* %6, align 4
  store i32 %221, i32* %3, align 4
  br label %245

222:                                              ; preds = %191
  %223 = load i32, i32* %6, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %243

225:                                              ; preds = %222
  %226 = load i8*, i8** @DNS_TRANSACTION_CACHE, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 3
  store i8* %226, i8** %228, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @DNS_RCODE_SUCCESS, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %225
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %236 = load i32, i32* @DNS_TRANSACTION_SUCCESS, align 4
  %237 = call i32 @dns_transaction_complete(%struct.TYPE_18__* %235, i32 %236)
  br label %242

238:                                              ; preds = %225
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %240 = load i32, i32* @DNS_TRANSACTION_RCODE_FAILURE, align 4
  %241 = call i32 @dns_transaction_complete(%struct.TYPE_18__* %239, i32 %240)
  br label %242

242:                                              ; preds = %238, %234
  store i32 0, i32* %3, align 4
  br label %245

243:                                              ; preds = %222
  br label %244

244:                                              ; preds = %243, %185
  store i32 1, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %242, %220, %172, %167, %142, %91, %86, %48, %31, %16
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @assert(%struct.TYPE_18__*) #1

declare dso_local i32 @dns_transaction_stop_timeout(%struct.TYPE_18__*) #1

declare dso_local i32 @dns_scope_network_good(%struct.TYPE_16__*) #1

declare dso_local i32 @dns_transaction_complete(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @TRANSACTION_ATTEMPTS_MAX(i64) #1

declare dso_local i32 @dns_transaction_reset_answer(%struct.TYPE_18__*) #1

declare dso_local i32 @dns_transaction_flush_dnssec_transactions(%struct.TYPE_18__*) #1

declare dso_local i32 @dns_trust_anchor_lookup_positive(i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i64 @dns_name_is_root(i32) #1

declare dso_local i32 @dns_resource_key_name(%struct.TYPE_19__*) #1

declare dso_local i64 @set_isempty(i32) #1

declare dso_local i32 @dns_zone_lookup(i32*, %struct.TYPE_19__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @dns_scope_ifindex(%struct.TYPE_16__*) #1

declare dso_local i32 @dns_scope_get_dns_server(%struct.TYPE_16__*) #1

declare dso_local i32 @dns_cache_prune(i32*) #1

declare dso_local i32 @dns_cache_lookup(i32*, %struct.TYPE_19__*, i32, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
