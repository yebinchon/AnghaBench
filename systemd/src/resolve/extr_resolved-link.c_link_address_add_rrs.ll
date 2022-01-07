; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_address_add_rrs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_address_add_rrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_15__, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i64, i64, i32, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@RESOLVE_SUPPORT_YES = common dso_local global i64 0, align 8
@DNS_CLASS_IN = common dso_local global i32 0, align 4
@DNS_TYPE_A = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LLMNR_DEFAULT_TTL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Failed to add A record to LLMNR zone: %m\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to add IPv4 PTR record to LLMNR zone: %m\00", align 1
@MDNS_DEFAULT_TTL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to add A record to MDNS zone: %m\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to add IPv4 PTR record to MDNS zone: %m\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@DNS_TYPE_AAAA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to add AAAA record to LLMNR zone: %m\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to add IPv6 PTR record to LLMNR zone: %m\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed to add AAAA record to MDNS zone: %m\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Failed to add IPv6 PTR record to MDNS zone: %m\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to update address RRs: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_address_add_rrs(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_20__* %6)
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_INET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %504

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %195, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = call i64 @link_address_relevant(%struct.TYPE_20__* %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %195

20:                                               ; preds = %16
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = icmp ne %struct.TYPE_22__* %25, null
  br i1 %26, label %27, label %195

27:                                               ; preds = %20
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RESOLVE_SUPPORT_YES, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %195

35:                                               ; preds = %27
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RESOLVE_SUPPORT_YES, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %195

45:                                               ; preds = %35
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 7
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %83, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @DNS_CLASS_IN, align 4
  %56 = load i32, i32* @DNS_TYPE_A, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @dns_resource_key_new(i32 %55, i32 %56, i32 %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 7
  store i8* %64, i8** %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 7
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %54
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %1002

82:                                               ; preds = %54
  br label %83

83:                                               ; preds = %82, %45
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = icmp ne %struct.TYPE_21__* %86, null
  br i1 %87, label %122, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 7
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @dns_resource_record_new(i8* %95)
  %97 = bitcast i8* %96 to %struct.TYPE_21__*
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 6
  store %struct.TYPE_21__* %97, %struct.TYPE_21__** %99, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = icmp ne %struct.TYPE_21__* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %88
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %1002

107:                                              ; preds = %88
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 4
  %117 = load i8*, i8** @LLMNR_DEFAULT_TTL, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  store i8* %117, i8** %121, align 8
  br label %122

122:                                              ; preds = %107, %83
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %124, align 8
  %126 = icmp ne %struct.TYPE_21__* %125, null
  br i1 %126, label %152, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dns_resource_record_new_reverse(%struct.TYPE_21__** %129, i64 %132, %struct.TYPE_15__* %134, i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %127
  br label %1002

146:                                              ; preds = %127
  %147 = load i8*, i8** @LLMNR_DEFAULT_TTL, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  store i8* %147, i8** %151, align 8
  br label %152

152:                                              ; preds = %146, %122
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 6
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %162, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %165, align 8
  %167 = call i32 @dns_zone_put(i32* %158, %struct.TYPE_22__* %163, %struct.TYPE_21__* %166, i32 1)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %152
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @log_warning_errno(i32 %171, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %152
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 6
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %183, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 5
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %186, align 8
  %188 = call i32 @dns_zone_put(i32* %179, %struct.TYPE_22__* %184, %struct.TYPE_21__* %187, i32 0)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %173
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @log_warning_errno(i32 %192, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %173
  br label %258

195:                                              ; preds = %35, %27, %20, %16, %13
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  %199 = icmp ne %struct.TYPE_21__* %198, null
  br i1 %199, label %200, label %226

200:                                              ; preds = %195
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 6
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %204, align 8
  %206 = icmp ne %struct.TYPE_22__* %205, null
  br i1 %206, label %207, label %218

207:                                              ; preds = %200
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 6
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 6
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %215, align 8
  %217 = call i32 @dns_zone_remove_rr(i32* %213, %struct.TYPE_21__* %216)
  br label %218

218:                                              ; preds = %207, %200
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 6
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %220, align 8
  %222 = call i8* @dns_resource_record_unref(%struct.TYPE_21__* %221)
  %223 = bitcast i8* %222 to %struct.TYPE_21__*
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 6
  store %struct.TYPE_21__* %223, %struct.TYPE_21__** %225, align 8
  br label %226

226:                                              ; preds = %218, %195
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 5
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = icmp ne %struct.TYPE_21__* %229, null
  br i1 %230, label %231, label %257

231:                                              ; preds = %226
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 6
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %235, align 8
  %237 = icmp ne %struct.TYPE_22__* %236, null
  br i1 %237, label %238, label %249

238:                                              ; preds = %231
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 6
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 5
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %246, align 8
  %248 = call i32 @dns_zone_remove_rr(i32* %244, %struct.TYPE_21__* %247)
  br label %249

249:                                              ; preds = %238, %231
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 5
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %251, align 8
  %253 = call i8* @dns_resource_record_unref(%struct.TYPE_21__* %252)
  %254 = bitcast i8* %253 to %struct.TYPE_21__*
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 5
  store %struct.TYPE_21__* %254, %struct.TYPE_21__** %256, align 8
  br label %257

257:                                              ; preds = %249, %226
  br label %258

258:                                              ; preds = %257, %194
  %259 = load i32, i32* %4, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %440, label %261

261:                                              ; preds = %258
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %263 = call i64 @link_address_relevant(%struct.TYPE_20__* %262, i32 1)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %440

265:                                              ; preds = %261
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 5
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %269, align 8
  %271 = icmp ne %struct.TYPE_22__* %270, null
  br i1 %271, label %272, label %440

272:                                              ; preds = %265
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @RESOLVE_SUPPORT_YES, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %440

280:                                              ; preds = %272
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @RESOLVE_SUPPORT_YES, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %440

290:                                              ; preds = %280
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 3
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 6
  %297 = load i8*, i8** %296, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %328, label %299

299:                                              ; preds = %290
  %300 = load i32, i32* @DNS_CLASS_IN, align 4
  %301 = load i32, i32* @DNS_TYPE_A, align 4
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 3
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = call i8* @dns_resource_key_new(i32 %300, i32 %301, i32 %308)
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 3
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 6
  store i8* %309, i8** %315, align 8
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 2
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 3
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 6
  %322 = load i8*, i8** %321, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %327, label %324

324:                                              ; preds = %299
  %325 = load i32, i32* @ENOMEM, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %5, align 4
  br label %1002

327:                                              ; preds = %299
  br label %328

328:                                              ; preds = %327, %290
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 3
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %330, align 8
  %332 = icmp ne %struct.TYPE_21__* %331, null
  br i1 %332, label %367, label %333

333:                                              ; preds = %328
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 3
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 6
  %340 = load i8*, i8** %339, align 8
  %341 = call i8* @dns_resource_record_new(i8* %340)
  %342 = bitcast i8* %341 to %struct.TYPE_21__*
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 3
  store %struct.TYPE_21__* %342, %struct.TYPE_21__** %344, align 8
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 3
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %346, align 8
  %348 = icmp ne %struct.TYPE_21__* %347, null
  br i1 %348, label %352, label %349

349:                                              ; preds = %333
  %350 = load i32, i32* @ENOMEM, align 4
  %351 = sub nsw i32 0, %350
  store i32 %351, i32* %5, align 4
  br label %1002

352:                                              ; preds = %333
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 3
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 0
  store i32 %356, i32* %361, align 4
  %362 = load i8*, i8** @MDNS_DEFAULT_TTL, align 8
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 3
  %365 = load %struct.TYPE_21__*, %struct.TYPE_21__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 0
  store i8* %362, i8** %366, align 8
  br label %367

367:                                              ; preds = %352, %328
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %369, align 8
  %371 = icmp ne %struct.TYPE_21__* %370, null
  br i1 %371, label %397, label %372

372:                                              ; preds = %367
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 1
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 4
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i32 0, i32 2
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 3
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @dns_resource_record_new_reverse(%struct.TYPE_21__** %374, i64 %377, %struct.TYPE_15__* %379, i32 %386)
  store i32 %387, i32* %5, align 4
  %388 = load i32, i32* %5, align 4
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %372
  br label %1002

391:                                              ; preds = %372
  %392 = load i8*, i8** @MDNS_DEFAULT_TTL, align 8
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %395, i32 0, i32 0
  store i8* %392, i8** %396, align 8
  br label %397

397:                                              ; preds = %391, %367
  %398 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %398, i32 0, i32 2
  %400 = load %struct.TYPE_19__*, %struct.TYPE_19__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 5
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 0
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 2
  %406 = load %struct.TYPE_19__*, %struct.TYPE_19__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 5
  %408 = load %struct.TYPE_22__*, %struct.TYPE_22__** %407, align 8
  %409 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %409, i32 0, i32 3
  %411 = load %struct.TYPE_21__*, %struct.TYPE_21__** %410, align 8
  %412 = call i32 @dns_zone_put(i32* %403, %struct.TYPE_22__* %408, %struct.TYPE_21__* %411, i32 1)
  store i32 %412, i32* %5, align 4
  %413 = load i32, i32* %5, align 4
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %415, label %418

415:                                              ; preds = %397
  %416 = load i32, i32* %5, align 4
  %417 = call i32 @log_warning_errno(i32 %416, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %418

418:                                              ; preds = %415, %397
  %419 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 2
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 5
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 2
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i32 0, i32 5
  %429 = load %struct.TYPE_22__*, %struct.TYPE_22__** %428, align 8
  %430 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_21__*, %struct.TYPE_21__** %431, align 8
  %433 = call i32 @dns_zone_put(i32* %424, %struct.TYPE_22__* %429, %struct.TYPE_21__* %432, i32 0)
  store i32 %433, i32* %5, align 4
  %434 = load i32, i32* %5, align 4
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %439

436:                                              ; preds = %418
  %437 = load i32, i32* %5, align 4
  %438 = call i32 @log_warning_errno(i32 %437, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %439

439:                                              ; preds = %436, %418
  br label %503

440:                                              ; preds = %280, %272, %265, %261, %258
  %441 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %441, i32 0, i32 3
  %443 = load %struct.TYPE_21__*, %struct.TYPE_21__** %442, align 8
  %444 = icmp ne %struct.TYPE_21__* %443, null
  br i1 %444, label %445, label %471

445:                                              ; preds = %440
  %446 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %446, i32 0, i32 2
  %448 = load %struct.TYPE_19__*, %struct.TYPE_19__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %448, i32 0, i32 5
  %450 = load %struct.TYPE_22__*, %struct.TYPE_22__** %449, align 8
  %451 = icmp ne %struct.TYPE_22__* %450, null
  br i1 %451, label %452, label %463

452:                                              ; preds = %445
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 2
  %455 = load %struct.TYPE_19__*, %struct.TYPE_19__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %455, i32 0, i32 5
  %457 = load %struct.TYPE_22__*, %struct.TYPE_22__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %457, i32 0, i32 0
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 3
  %461 = load %struct.TYPE_21__*, %struct.TYPE_21__** %460, align 8
  %462 = call i32 @dns_zone_remove_rr(i32* %458, %struct.TYPE_21__* %461)
  br label %463

463:                                              ; preds = %452, %445
  %464 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %464, i32 0, i32 3
  %466 = load %struct.TYPE_21__*, %struct.TYPE_21__** %465, align 8
  %467 = call i8* @dns_resource_record_unref(%struct.TYPE_21__* %466)
  %468 = bitcast i8* %467 to %struct.TYPE_21__*
  %469 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %470 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %469, i32 0, i32 3
  store %struct.TYPE_21__* %468, %struct.TYPE_21__** %470, align 8
  br label %471

471:                                              ; preds = %463, %440
  %472 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %472, i32 0, i32 1
  %474 = load %struct.TYPE_21__*, %struct.TYPE_21__** %473, align 8
  %475 = icmp ne %struct.TYPE_21__* %474, null
  br i1 %475, label %476, label %502

476:                                              ; preds = %471
  %477 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %477, i32 0, i32 2
  %479 = load %struct.TYPE_19__*, %struct.TYPE_19__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %479, i32 0, i32 5
  %481 = load %struct.TYPE_22__*, %struct.TYPE_22__** %480, align 8
  %482 = icmp ne %struct.TYPE_22__* %481, null
  br i1 %482, label %483, label %494

483:                                              ; preds = %476
  %484 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %485 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %484, i32 0, i32 2
  %486 = load %struct.TYPE_19__*, %struct.TYPE_19__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %486, i32 0, i32 5
  %488 = load %struct.TYPE_22__*, %struct.TYPE_22__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %488, i32 0, i32 0
  %490 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %490, i32 0, i32 1
  %492 = load %struct.TYPE_21__*, %struct.TYPE_21__** %491, align 8
  %493 = call i32 @dns_zone_remove_rr(i32* %489, %struct.TYPE_21__* %492)
  br label %494

494:                                              ; preds = %483, %476
  %495 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %495, i32 0, i32 1
  %497 = load %struct.TYPE_21__*, %struct.TYPE_21__** %496, align 8
  %498 = call i8* @dns_resource_record_unref(%struct.TYPE_21__* %497)
  %499 = bitcast i8* %498 to %struct.TYPE_21__*
  %500 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %500, i32 0, i32 1
  store %struct.TYPE_21__* %499, %struct.TYPE_21__** %501, align 8
  br label %502

502:                                              ; preds = %494, %471
  br label %503

503:                                              ; preds = %502, %439
  br label %504

504:                                              ; preds = %503, %2
  %505 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = load i64, i64* @AF_INET6, align 8
  %509 = icmp eq i64 %507, %508
  br i1 %509, label %510, label %1001

510:                                              ; preds = %504
  %511 = load i32, i32* %4, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %692, label %513

513:                                              ; preds = %510
  %514 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %515 = call i64 @link_address_relevant(%struct.TYPE_20__* %514, i32 1)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %692

517:                                              ; preds = %513
  %518 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %519 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %518, i32 0, i32 2
  %520 = load %struct.TYPE_19__*, %struct.TYPE_19__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %520, i32 0, i32 4
  %522 = load %struct.TYPE_22__*, %struct.TYPE_22__** %521, align 8
  %523 = icmp ne %struct.TYPE_22__* %522, null
  br i1 %523, label %524, label %692

524:                                              ; preds = %517
  %525 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %525, i32 0, i32 2
  %527 = load %struct.TYPE_19__*, %struct.TYPE_19__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %527, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = load i64, i64* @RESOLVE_SUPPORT_YES, align 8
  %531 = icmp eq i64 %529, %530
  br i1 %531, label %532, label %692

532:                                              ; preds = %524
  %533 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %533, i32 0, i32 2
  %535 = load %struct.TYPE_19__*, %struct.TYPE_19__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %535, i32 0, i32 3
  %537 = load %struct.TYPE_18__*, %struct.TYPE_18__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = load i64, i64* @RESOLVE_SUPPORT_YES, align 8
  %541 = icmp eq i64 %539, %540
  br i1 %541, label %542, label %692

542:                                              ; preds = %532
  %543 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %543, i32 0, i32 2
  %545 = load %struct.TYPE_19__*, %struct.TYPE_19__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %545, i32 0, i32 3
  %547 = load %struct.TYPE_18__*, %struct.TYPE_18__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %547, i32 0, i32 5
  %549 = load i8*, i8** %548, align 8
  %550 = icmp ne i8* %549, null
  br i1 %550, label %580, label %551

551:                                              ; preds = %542
  %552 = load i32, i32* @DNS_CLASS_IN, align 4
  %553 = load i32, i32* @DNS_TYPE_AAAA, align 4
  %554 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %555 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %554, i32 0, i32 2
  %556 = load %struct.TYPE_19__*, %struct.TYPE_19__** %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %556, i32 0, i32 3
  %558 = load %struct.TYPE_18__*, %struct.TYPE_18__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %558, i32 0, i32 4
  %560 = load i32, i32* %559, align 8
  %561 = call i8* @dns_resource_key_new(i32 %552, i32 %553, i32 %560)
  %562 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %563 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %562, i32 0, i32 2
  %564 = load %struct.TYPE_19__*, %struct.TYPE_19__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %564, i32 0, i32 3
  %566 = load %struct.TYPE_18__*, %struct.TYPE_18__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %566, i32 0, i32 5
  store i8* %561, i8** %567, align 8
  %568 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %569 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %568, i32 0, i32 2
  %570 = load %struct.TYPE_19__*, %struct.TYPE_19__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %570, i32 0, i32 3
  %572 = load %struct.TYPE_18__*, %struct.TYPE_18__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %572, i32 0, i32 5
  %574 = load i8*, i8** %573, align 8
  %575 = icmp ne i8* %574, null
  br i1 %575, label %579, label %576

576:                                              ; preds = %551
  %577 = load i32, i32* @ENOMEM, align 4
  %578 = sub nsw i32 0, %577
  store i32 %578, i32* %5, align 4
  br label %1002

579:                                              ; preds = %551
  br label %580

580:                                              ; preds = %579, %542
  %581 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %582 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %581, i32 0, i32 6
  %583 = load %struct.TYPE_21__*, %struct.TYPE_21__** %582, align 8
  %584 = icmp ne %struct.TYPE_21__* %583, null
  br i1 %584, label %619, label %585

585:                                              ; preds = %580
  %586 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %587 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %586, i32 0, i32 2
  %588 = load %struct.TYPE_19__*, %struct.TYPE_19__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %588, i32 0, i32 3
  %590 = load %struct.TYPE_18__*, %struct.TYPE_18__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %590, i32 0, i32 5
  %592 = load i8*, i8** %591, align 8
  %593 = call i8* @dns_resource_record_new(i8* %592)
  %594 = bitcast i8* %593 to %struct.TYPE_21__*
  %595 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %596 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %595, i32 0, i32 6
  store %struct.TYPE_21__* %594, %struct.TYPE_21__** %596, align 8
  %597 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %598 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %597, i32 0, i32 6
  %599 = load %struct.TYPE_21__*, %struct.TYPE_21__** %598, align 8
  %600 = icmp ne %struct.TYPE_21__* %599, null
  br i1 %600, label %604, label %601

601:                                              ; preds = %585
  %602 = load i32, i32* @ENOMEM, align 4
  %603 = sub nsw i32 0, %602
  store i32 %603, i32* %5, align 4
  br label %1002

604:                                              ; preds = %585
  %605 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %606 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %605, i32 0, i32 4
  %607 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 8
  %609 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %610 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %609, i32 0, i32 6
  %611 = load %struct.TYPE_21__*, %struct.TYPE_21__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %612, i32 0, i32 0
  store i32 %608, i32* %613, align 8
  %614 = load i8*, i8** @LLMNR_DEFAULT_TTL, align 8
  %615 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %616 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %615, i32 0, i32 6
  %617 = load %struct.TYPE_21__*, %struct.TYPE_21__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %617, i32 0, i32 0
  store i8* %614, i8** %618, align 8
  br label %619

619:                                              ; preds = %604, %580
  %620 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %621 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %620, i32 0, i32 5
  %622 = load %struct.TYPE_21__*, %struct.TYPE_21__** %621, align 8
  %623 = icmp ne %struct.TYPE_21__* %622, null
  br i1 %623, label %649, label %624

624:                                              ; preds = %619
  %625 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %626 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %625, i32 0, i32 5
  %627 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %628 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %627, i32 0, i32 0
  %629 = load i64, i64* %628, align 8
  %630 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %631 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %630, i32 0, i32 4
  %632 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %633 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %632, i32 0, i32 2
  %634 = load %struct.TYPE_19__*, %struct.TYPE_19__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %634, i32 0, i32 3
  %636 = load %struct.TYPE_18__*, %struct.TYPE_18__** %635, align 8
  %637 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %636, i32 0, i32 4
  %638 = load i32, i32* %637, align 8
  %639 = call i32 @dns_resource_record_new_reverse(%struct.TYPE_21__** %626, i64 %629, %struct.TYPE_15__* %631, i32 %638)
  store i32 %639, i32* %5, align 4
  %640 = load i32, i32* %5, align 4
  %641 = icmp slt i32 %640, 0
  br i1 %641, label %642, label %643

642:                                              ; preds = %624
  br label %1002

643:                                              ; preds = %624
  %644 = load i8*, i8** @LLMNR_DEFAULT_TTL, align 8
  %645 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %646 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %645, i32 0, i32 5
  %647 = load %struct.TYPE_21__*, %struct.TYPE_21__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %647, i32 0, i32 0
  store i8* %644, i8** %648, align 8
  br label %649

649:                                              ; preds = %643, %619
  %650 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %651 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %650, i32 0, i32 2
  %652 = load %struct.TYPE_19__*, %struct.TYPE_19__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %652, i32 0, i32 4
  %654 = load %struct.TYPE_22__*, %struct.TYPE_22__** %653, align 8
  %655 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %654, i32 0, i32 0
  %656 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %657 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %656, i32 0, i32 2
  %658 = load %struct.TYPE_19__*, %struct.TYPE_19__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %658, i32 0, i32 4
  %660 = load %struct.TYPE_22__*, %struct.TYPE_22__** %659, align 8
  %661 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %662 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %661, i32 0, i32 6
  %663 = load %struct.TYPE_21__*, %struct.TYPE_21__** %662, align 8
  %664 = call i32 @dns_zone_put(i32* %655, %struct.TYPE_22__* %660, %struct.TYPE_21__* %663, i32 1)
  store i32 %664, i32* %5, align 4
  %665 = load i32, i32* %5, align 4
  %666 = icmp slt i32 %665, 0
  br i1 %666, label %667, label %670

667:                                              ; preds = %649
  %668 = load i32, i32* %5, align 4
  %669 = call i32 @log_warning_errno(i32 %668, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %670

670:                                              ; preds = %667, %649
  %671 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %672 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %671, i32 0, i32 2
  %673 = load %struct.TYPE_19__*, %struct.TYPE_19__** %672, align 8
  %674 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %673, i32 0, i32 4
  %675 = load %struct.TYPE_22__*, %struct.TYPE_22__** %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %675, i32 0, i32 0
  %677 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %678 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %677, i32 0, i32 2
  %679 = load %struct.TYPE_19__*, %struct.TYPE_19__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %679, i32 0, i32 4
  %681 = load %struct.TYPE_22__*, %struct.TYPE_22__** %680, align 8
  %682 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %683 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %682, i32 0, i32 5
  %684 = load %struct.TYPE_21__*, %struct.TYPE_21__** %683, align 8
  %685 = call i32 @dns_zone_put(i32* %676, %struct.TYPE_22__* %681, %struct.TYPE_21__* %684, i32 0)
  store i32 %685, i32* %5, align 4
  %686 = load i32, i32* %5, align 4
  %687 = icmp slt i32 %686, 0
  br i1 %687, label %688, label %691

688:                                              ; preds = %670
  %689 = load i32, i32* %5, align 4
  %690 = call i32 @log_warning_errno(i32 %689, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %691

691:                                              ; preds = %688, %670
  br label %755

692:                                              ; preds = %532, %524, %517, %513, %510
  %693 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %694 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %693, i32 0, i32 6
  %695 = load %struct.TYPE_21__*, %struct.TYPE_21__** %694, align 8
  %696 = icmp ne %struct.TYPE_21__* %695, null
  br i1 %696, label %697, label %723

697:                                              ; preds = %692
  %698 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %699 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %698, i32 0, i32 2
  %700 = load %struct.TYPE_19__*, %struct.TYPE_19__** %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %700, i32 0, i32 4
  %702 = load %struct.TYPE_22__*, %struct.TYPE_22__** %701, align 8
  %703 = icmp ne %struct.TYPE_22__* %702, null
  br i1 %703, label %704, label %715

704:                                              ; preds = %697
  %705 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %706 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %705, i32 0, i32 2
  %707 = load %struct.TYPE_19__*, %struct.TYPE_19__** %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %707, i32 0, i32 4
  %709 = load %struct.TYPE_22__*, %struct.TYPE_22__** %708, align 8
  %710 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %709, i32 0, i32 0
  %711 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %712 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %711, i32 0, i32 6
  %713 = load %struct.TYPE_21__*, %struct.TYPE_21__** %712, align 8
  %714 = call i32 @dns_zone_remove_rr(i32* %710, %struct.TYPE_21__* %713)
  br label %715

715:                                              ; preds = %704, %697
  %716 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %717 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %716, i32 0, i32 6
  %718 = load %struct.TYPE_21__*, %struct.TYPE_21__** %717, align 8
  %719 = call i8* @dns_resource_record_unref(%struct.TYPE_21__* %718)
  %720 = bitcast i8* %719 to %struct.TYPE_21__*
  %721 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %722 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %721, i32 0, i32 6
  store %struct.TYPE_21__* %720, %struct.TYPE_21__** %722, align 8
  br label %723

723:                                              ; preds = %715, %692
  %724 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %725 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %724, i32 0, i32 5
  %726 = load %struct.TYPE_21__*, %struct.TYPE_21__** %725, align 8
  %727 = icmp ne %struct.TYPE_21__* %726, null
  br i1 %727, label %728, label %754

728:                                              ; preds = %723
  %729 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %730 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %729, i32 0, i32 2
  %731 = load %struct.TYPE_19__*, %struct.TYPE_19__** %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %731, i32 0, i32 4
  %733 = load %struct.TYPE_22__*, %struct.TYPE_22__** %732, align 8
  %734 = icmp ne %struct.TYPE_22__* %733, null
  br i1 %734, label %735, label %746

735:                                              ; preds = %728
  %736 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %737 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %736, i32 0, i32 2
  %738 = load %struct.TYPE_19__*, %struct.TYPE_19__** %737, align 8
  %739 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %738, i32 0, i32 4
  %740 = load %struct.TYPE_22__*, %struct.TYPE_22__** %739, align 8
  %741 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %740, i32 0, i32 0
  %742 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %743 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %742, i32 0, i32 5
  %744 = load %struct.TYPE_21__*, %struct.TYPE_21__** %743, align 8
  %745 = call i32 @dns_zone_remove_rr(i32* %741, %struct.TYPE_21__* %744)
  br label %746

746:                                              ; preds = %735, %728
  %747 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %748 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %747, i32 0, i32 5
  %749 = load %struct.TYPE_21__*, %struct.TYPE_21__** %748, align 8
  %750 = call i8* @dns_resource_record_unref(%struct.TYPE_21__* %749)
  %751 = bitcast i8* %750 to %struct.TYPE_21__*
  %752 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %753 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %752, i32 0, i32 5
  store %struct.TYPE_21__* %751, %struct.TYPE_21__** %753, align 8
  br label %754

754:                                              ; preds = %746, %723
  br label %755

755:                                              ; preds = %754, %691
  %756 = load i32, i32* %4, align 4
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %937, label %758

758:                                              ; preds = %755
  %759 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %760 = call i64 @link_address_relevant(%struct.TYPE_20__* %759, i32 1)
  %761 = icmp ne i64 %760, 0
  br i1 %761, label %762, label %937

762:                                              ; preds = %758
  %763 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %764 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %763, i32 0, i32 2
  %765 = load %struct.TYPE_19__*, %struct.TYPE_19__** %764, align 8
  %766 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %765, i32 0, i32 2
  %767 = load %struct.TYPE_22__*, %struct.TYPE_22__** %766, align 8
  %768 = icmp ne %struct.TYPE_22__* %767, null
  br i1 %768, label %769, label %937

769:                                              ; preds = %762
  %770 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %771 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %770, i32 0, i32 2
  %772 = load %struct.TYPE_19__*, %struct.TYPE_19__** %771, align 8
  %773 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %772, i32 0, i32 1
  %774 = load i64, i64* %773, align 8
  %775 = load i64, i64* @RESOLVE_SUPPORT_YES, align 8
  %776 = icmp eq i64 %774, %775
  br i1 %776, label %777, label %937

777:                                              ; preds = %769
  %778 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %779 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %778, i32 0, i32 2
  %780 = load %struct.TYPE_19__*, %struct.TYPE_19__** %779, align 8
  %781 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %780, i32 0, i32 3
  %782 = load %struct.TYPE_18__*, %struct.TYPE_18__** %781, align 8
  %783 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %782, i32 0, i32 1
  %784 = load i64, i64* %783, align 8
  %785 = load i64, i64* @RESOLVE_SUPPORT_YES, align 8
  %786 = icmp eq i64 %784, %785
  br i1 %786, label %787, label %937

787:                                              ; preds = %777
  %788 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %789 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %788, i32 0, i32 2
  %790 = load %struct.TYPE_19__*, %struct.TYPE_19__** %789, align 8
  %791 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %790, i32 0, i32 3
  %792 = load %struct.TYPE_18__*, %struct.TYPE_18__** %791, align 8
  %793 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %792, i32 0, i32 3
  %794 = load i8*, i8** %793, align 8
  %795 = icmp ne i8* %794, null
  br i1 %795, label %825, label %796

796:                                              ; preds = %787
  %797 = load i32, i32* @DNS_CLASS_IN, align 4
  %798 = load i32, i32* @DNS_TYPE_AAAA, align 4
  %799 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %800 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %799, i32 0, i32 2
  %801 = load %struct.TYPE_19__*, %struct.TYPE_19__** %800, align 8
  %802 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %801, i32 0, i32 3
  %803 = load %struct.TYPE_18__*, %struct.TYPE_18__** %802, align 8
  %804 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %803, i32 0, i32 2
  %805 = load i32, i32* %804, align 8
  %806 = call i8* @dns_resource_key_new(i32 %797, i32 %798, i32 %805)
  %807 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %808 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %807, i32 0, i32 2
  %809 = load %struct.TYPE_19__*, %struct.TYPE_19__** %808, align 8
  %810 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %809, i32 0, i32 3
  %811 = load %struct.TYPE_18__*, %struct.TYPE_18__** %810, align 8
  %812 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %811, i32 0, i32 3
  store i8* %806, i8** %812, align 8
  %813 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %814 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %813, i32 0, i32 2
  %815 = load %struct.TYPE_19__*, %struct.TYPE_19__** %814, align 8
  %816 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %815, i32 0, i32 3
  %817 = load %struct.TYPE_18__*, %struct.TYPE_18__** %816, align 8
  %818 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %817, i32 0, i32 3
  %819 = load i8*, i8** %818, align 8
  %820 = icmp ne i8* %819, null
  br i1 %820, label %824, label %821

821:                                              ; preds = %796
  %822 = load i32, i32* @ENOMEM, align 4
  %823 = sub nsw i32 0, %822
  store i32 %823, i32* %5, align 4
  br label %1002

824:                                              ; preds = %796
  br label %825

825:                                              ; preds = %824, %787
  %826 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %827 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %826, i32 0, i32 3
  %828 = load %struct.TYPE_21__*, %struct.TYPE_21__** %827, align 8
  %829 = icmp ne %struct.TYPE_21__* %828, null
  br i1 %829, label %864, label %830

830:                                              ; preds = %825
  %831 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %832 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %831, i32 0, i32 2
  %833 = load %struct.TYPE_19__*, %struct.TYPE_19__** %832, align 8
  %834 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %833, i32 0, i32 3
  %835 = load %struct.TYPE_18__*, %struct.TYPE_18__** %834, align 8
  %836 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %835, i32 0, i32 3
  %837 = load i8*, i8** %836, align 8
  %838 = call i8* @dns_resource_record_new(i8* %837)
  %839 = bitcast i8* %838 to %struct.TYPE_21__*
  %840 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %841 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %840, i32 0, i32 3
  store %struct.TYPE_21__* %839, %struct.TYPE_21__** %841, align 8
  %842 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %843 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %842, i32 0, i32 3
  %844 = load %struct.TYPE_21__*, %struct.TYPE_21__** %843, align 8
  %845 = icmp ne %struct.TYPE_21__* %844, null
  br i1 %845, label %849, label %846

846:                                              ; preds = %830
  %847 = load i32, i32* @ENOMEM, align 4
  %848 = sub nsw i32 0, %847
  store i32 %848, i32* %5, align 4
  br label %1002

849:                                              ; preds = %830
  %850 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %851 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %850, i32 0, i32 4
  %852 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %851, i32 0, i32 0
  %853 = load i32, i32* %852, align 8
  %854 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %855 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %854, i32 0, i32 3
  %856 = load %struct.TYPE_21__*, %struct.TYPE_21__** %855, align 8
  %857 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %856, i32 0, i32 1
  %858 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %857, i32 0, i32 0
  store i32 %853, i32* %858, align 8
  %859 = load i8*, i8** @MDNS_DEFAULT_TTL, align 8
  %860 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %861 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %860, i32 0, i32 3
  %862 = load %struct.TYPE_21__*, %struct.TYPE_21__** %861, align 8
  %863 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %862, i32 0, i32 0
  store i8* %859, i8** %863, align 8
  br label %864

864:                                              ; preds = %849, %825
  %865 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %866 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %865, i32 0, i32 1
  %867 = load %struct.TYPE_21__*, %struct.TYPE_21__** %866, align 8
  %868 = icmp ne %struct.TYPE_21__* %867, null
  br i1 %868, label %894, label %869

869:                                              ; preds = %864
  %870 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %871 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %870, i32 0, i32 1
  %872 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %873 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %872, i32 0, i32 0
  %874 = load i64, i64* %873, align 8
  %875 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %876 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %875, i32 0, i32 4
  %877 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %878 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %877, i32 0, i32 2
  %879 = load %struct.TYPE_19__*, %struct.TYPE_19__** %878, align 8
  %880 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %879, i32 0, i32 3
  %881 = load %struct.TYPE_18__*, %struct.TYPE_18__** %880, align 8
  %882 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %881, i32 0, i32 2
  %883 = load i32, i32* %882, align 8
  %884 = call i32 @dns_resource_record_new_reverse(%struct.TYPE_21__** %871, i64 %874, %struct.TYPE_15__* %876, i32 %883)
  store i32 %884, i32* %5, align 4
  %885 = load i32, i32* %5, align 4
  %886 = icmp slt i32 %885, 0
  br i1 %886, label %887, label %888

887:                                              ; preds = %869
  br label %1002

888:                                              ; preds = %869
  %889 = load i8*, i8** @MDNS_DEFAULT_TTL, align 8
  %890 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %891 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %890, i32 0, i32 1
  %892 = load %struct.TYPE_21__*, %struct.TYPE_21__** %891, align 8
  %893 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %892, i32 0, i32 0
  store i8* %889, i8** %893, align 8
  br label %894

894:                                              ; preds = %888, %864
  %895 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %896 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %895, i32 0, i32 2
  %897 = load %struct.TYPE_19__*, %struct.TYPE_19__** %896, align 8
  %898 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %897, i32 0, i32 2
  %899 = load %struct.TYPE_22__*, %struct.TYPE_22__** %898, align 8
  %900 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %899, i32 0, i32 0
  %901 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %902 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %901, i32 0, i32 2
  %903 = load %struct.TYPE_19__*, %struct.TYPE_19__** %902, align 8
  %904 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %903, i32 0, i32 2
  %905 = load %struct.TYPE_22__*, %struct.TYPE_22__** %904, align 8
  %906 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %907 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %906, i32 0, i32 3
  %908 = load %struct.TYPE_21__*, %struct.TYPE_21__** %907, align 8
  %909 = call i32 @dns_zone_put(i32* %900, %struct.TYPE_22__* %905, %struct.TYPE_21__* %908, i32 1)
  store i32 %909, i32* %5, align 4
  %910 = load i32, i32* %5, align 4
  %911 = icmp slt i32 %910, 0
  br i1 %911, label %912, label %915

912:                                              ; preds = %894
  %913 = load i32, i32* %5, align 4
  %914 = call i32 @log_warning_errno(i32 %913, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %915

915:                                              ; preds = %912, %894
  %916 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %917 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %916, i32 0, i32 2
  %918 = load %struct.TYPE_19__*, %struct.TYPE_19__** %917, align 8
  %919 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %918, i32 0, i32 2
  %920 = load %struct.TYPE_22__*, %struct.TYPE_22__** %919, align 8
  %921 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %920, i32 0, i32 0
  %922 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %923 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %922, i32 0, i32 2
  %924 = load %struct.TYPE_19__*, %struct.TYPE_19__** %923, align 8
  %925 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %924, i32 0, i32 2
  %926 = load %struct.TYPE_22__*, %struct.TYPE_22__** %925, align 8
  %927 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %928 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %927, i32 0, i32 1
  %929 = load %struct.TYPE_21__*, %struct.TYPE_21__** %928, align 8
  %930 = call i32 @dns_zone_put(i32* %921, %struct.TYPE_22__* %926, %struct.TYPE_21__* %929, i32 0)
  store i32 %930, i32* %5, align 4
  %931 = load i32, i32* %5, align 4
  %932 = icmp slt i32 %931, 0
  br i1 %932, label %933, label %936

933:                                              ; preds = %915
  %934 = load i32, i32* %5, align 4
  %935 = call i32 @log_warning_errno(i32 %934, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %936

936:                                              ; preds = %933, %915
  br label %1000

937:                                              ; preds = %777, %769, %762, %758, %755
  %938 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %939 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %938, i32 0, i32 3
  %940 = load %struct.TYPE_21__*, %struct.TYPE_21__** %939, align 8
  %941 = icmp ne %struct.TYPE_21__* %940, null
  br i1 %941, label %942, label %968

942:                                              ; preds = %937
  %943 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %944 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %943, i32 0, i32 2
  %945 = load %struct.TYPE_19__*, %struct.TYPE_19__** %944, align 8
  %946 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %945, i32 0, i32 2
  %947 = load %struct.TYPE_22__*, %struct.TYPE_22__** %946, align 8
  %948 = icmp ne %struct.TYPE_22__* %947, null
  br i1 %948, label %949, label %960

949:                                              ; preds = %942
  %950 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %951 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %950, i32 0, i32 2
  %952 = load %struct.TYPE_19__*, %struct.TYPE_19__** %951, align 8
  %953 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %952, i32 0, i32 2
  %954 = load %struct.TYPE_22__*, %struct.TYPE_22__** %953, align 8
  %955 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %954, i32 0, i32 0
  %956 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %957 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %956, i32 0, i32 3
  %958 = load %struct.TYPE_21__*, %struct.TYPE_21__** %957, align 8
  %959 = call i32 @dns_zone_remove_rr(i32* %955, %struct.TYPE_21__* %958)
  br label %960

960:                                              ; preds = %949, %942
  %961 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %962 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %961, i32 0, i32 3
  %963 = load %struct.TYPE_21__*, %struct.TYPE_21__** %962, align 8
  %964 = call i8* @dns_resource_record_unref(%struct.TYPE_21__* %963)
  %965 = bitcast i8* %964 to %struct.TYPE_21__*
  %966 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %967 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %966, i32 0, i32 3
  store %struct.TYPE_21__* %965, %struct.TYPE_21__** %967, align 8
  br label %968

968:                                              ; preds = %960, %937
  %969 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %970 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %969, i32 0, i32 1
  %971 = load %struct.TYPE_21__*, %struct.TYPE_21__** %970, align 8
  %972 = icmp ne %struct.TYPE_21__* %971, null
  br i1 %972, label %973, label %999

973:                                              ; preds = %968
  %974 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %975 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %974, i32 0, i32 2
  %976 = load %struct.TYPE_19__*, %struct.TYPE_19__** %975, align 8
  %977 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %976, i32 0, i32 2
  %978 = load %struct.TYPE_22__*, %struct.TYPE_22__** %977, align 8
  %979 = icmp ne %struct.TYPE_22__* %978, null
  br i1 %979, label %980, label %991

980:                                              ; preds = %973
  %981 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %982 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %981, i32 0, i32 2
  %983 = load %struct.TYPE_19__*, %struct.TYPE_19__** %982, align 8
  %984 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %983, i32 0, i32 2
  %985 = load %struct.TYPE_22__*, %struct.TYPE_22__** %984, align 8
  %986 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %985, i32 0, i32 0
  %987 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %988 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %987, i32 0, i32 1
  %989 = load %struct.TYPE_21__*, %struct.TYPE_21__** %988, align 8
  %990 = call i32 @dns_zone_remove_rr(i32* %986, %struct.TYPE_21__* %989)
  br label %991

991:                                              ; preds = %980, %973
  %992 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %993 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %992, i32 0, i32 1
  %994 = load %struct.TYPE_21__*, %struct.TYPE_21__** %993, align 8
  %995 = call i8* @dns_resource_record_unref(%struct.TYPE_21__* %994)
  %996 = bitcast i8* %995 to %struct.TYPE_21__*
  %997 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %998 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %997, i32 0, i32 1
  store %struct.TYPE_21__* %996, %struct.TYPE_21__** %998, align 8
  br label %999

999:                                              ; preds = %991, %968
  br label %1000

1000:                                             ; preds = %999, %936
  br label %1001

1001:                                             ; preds = %1000, %504
  br label %1005

1002:                                             ; preds = %887, %846, %821, %642, %601, %576, %390, %349, %324, %145, %104, %79
  %1003 = load i32, i32* %5, align 4
  %1004 = call i32 @log_debug_errno(i32 %1003, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %1005

1005:                                             ; preds = %1002, %1001
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_20__*) #1

declare dso_local i64 @link_address_relevant(%struct.TYPE_20__*, i32) #1

declare dso_local i8* @dns_resource_key_new(i32, i32, i32) #1

declare dso_local i8* @dns_resource_record_new(i8*) #1

declare dso_local i32 @dns_resource_record_new_reverse(%struct.TYPE_21__**, i64, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @dns_zone_put(i32*, %struct.TYPE_22__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @dns_zone_remove_rr(i32*, %struct.TYPE_21__*) #1

declare dso_local i8* @dns_resource_record_unref(%struct.TYPE_21__*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
