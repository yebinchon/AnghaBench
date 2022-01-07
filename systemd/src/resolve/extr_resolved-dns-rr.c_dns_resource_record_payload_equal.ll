; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_dns_resource_record_payload_equal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_dns_resource_record_payload_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_25__, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }

@_DNS_TYPE_INVALID = common dso_local global i32 0, align 4
@digest = common dso_local global i32 0, align 4
@fingerprint = common dso_local global i32 0, align 4
@key = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@salt = common dso_local global i32 0, align 4
@next_hashed_name = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_resource_record_payload_equal(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %689

15:                                               ; preds = %2
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @_DNS_TYPE_INVALID, align 4
  br label %28

22:                                               ; preds = %15
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 19
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %22, %20
  %29 = phi i32 [ %21, %20 ], [ %27, %22 ]
  switch i32 %29, label %682 [
    i32 131, label %30
    i32 135, label %77
    i32 139, label %77
    i32 146, label %77
    i32 145, label %77
    i32 142, label %87
    i32 132, label %112
    i32 128, label %112
    i32 149, label %122
    i32 148, label %132
    i32 133, label %142
    i32 140, label %223
    i32 141, label %244
    i32 143, label %318
    i32 130, label %359
    i32 144, label %390
    i32 134, label %431
    i32 138, label %523
    i32 137, label %548
    i32 129, label %608
    i32 147, label %649
    i32 136, label %681
  ]

30:                                               ; preds = %28
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 18
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 18
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dns_name_equal(i32 %34, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %689

44:                                               ; preds = %30
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 18
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 18
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %44
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 18
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 18
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 18
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 18
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %68, %72
  br label %74

74:                                               ; preds = %64, %54, %44
  %75 = phi i1 [ false, %54 ], [ false, %44 ], [ %73, %64 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %689

77:                                               ; preds = %28, %28, %28, %28
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 17
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 17
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dns_name_equal(i32 %81, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %689

87:                                               ; preds = %28
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 16
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 16
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @strcaseeq(i32 %91, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %87
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 16
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 16
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @strcaseeq(i32 %102, i32 %106)
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %98, %87
  %110 = phi i1 [ false, %87 ], [ %108, %98 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %3, align 4
  br label %689

112:                                              ; preds = %28, %28
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 15
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dns_txt_item_equal(i32 %116, i32 %120)
  store i32 %121, i32* %3, align 4
  br label %689

122:                                              ; preds = %28
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 14
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 14
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = call i32 @memcmp(i32* %125, i32* %128, i32 4)
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %3, align 4
  br label %689

132:                                              ; preds = %28
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 13
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 13
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = call i32 @memcmp(i32* %135, i32* %138, i32 4)
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %3, align 4
  br label %689

142:                                              ; preds = %28
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 12
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 12
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dns_name_equal(i32 %146, i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp sle i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %142
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %689

156:                                              ; preds = %142
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 12
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 12
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dns_name_equal(i32 %160, i32 %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp sle i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %156
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %3, align 4
  br label %689

170:                                              ; preds = %156
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 12
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 12
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %174, %178
  br i1 %179, label %180, label %220

180:                                              ; preds = %170
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 12
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 12
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %184, %188
  br i1 %189, label %190, label %220

190:                                              ; preds = %180
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 12
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 12
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %194, %198
  br i1 %199, label %200, label %220

200:                                              ; preds = %190
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 12
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 12
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %204, %208
  br i1 %209, label %210, label %220

210:                                              ; preds = %200
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 12
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 12
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %214, %218
  br label %220

220:                                              ; preds = %210, %200, %190, %180, %170
  %221 = phi i1 [ false, %200 ], [ false, %190 ], [ false, %180 ], [ false, %170 ], [ %219, %210 ]
  %222 = zext i1 %221 to i32
  store i32 %222, i32* %3, align 4
  br label %689

223:                                              ; preds = %28
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 11
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 11
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %227, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %223
  store i32 0, i32* %3, align 4
  br label %689

234:                                              ; preds = %223
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 11
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 11
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @dns_name_equal(i32 %238, i32 %242)
  store i32 %243, i32* %3, align 4
  br label %689

244:                                              ; preds = %28
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 10
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 10
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %248, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 10
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 10
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %259, %263
  br i1 %264, label %265, label %315

265:                                              ; preds = %244
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 10
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 10
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = icmp eq i32 %269, %273
  br i1 %274, label %275, label %315

275:                                              ; preds = %265
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 10
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 10
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %279, %283
  br i1 %284, label %285, label %315

285:                                              ; preds = %275
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 10
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 10
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp eq i32 %289, %293
  br i1 %294, label %295, label %315

295:                                              ; preds = %285
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 10
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 10
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %299, %303
  br i1 %304, label %305, label %315

305:                                              ; preds = %295
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 10
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 10
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp eq i32 %309, %313
  br label %315

315:                                              ; preds = %305, %295, %285, %275, %265, %244
  %316 = phi i1 [ false, %295 ], [ false, %285 ], [ false, %275 ], [ false, %265 ], [ false, %244 ], [ %314, %305 ]
  %317 = zext i1 %316 to i32
  store i32 %317, i32* %3, align 4
  br label %689

318:                                              ; preds = %28
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 9
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 9
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 9
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 9
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %322, %326
  br i1 %327, label %328, label %356

328:                                              ; preds = %318
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 9
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 7
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 9
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 7
  %336 = load i32, i32* %335, align 4
  %337 = icmp eq i32 %332, %336
  br i1 %337, label %338, label %356

338:                                              ; preds = %328
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 9
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 17
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 9
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 17
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %342, %346
  br i1 %347, label %348, label %356

348:                                              ; preds = %338
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 9
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 9
  %353 = load i32, i32* @digest, align 4
  %354 = call i32 @FIELD_EQUAL(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %350, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %352, i32 %353)
  %355 = icmp ne i32 %354, 0
  br label %356

356:                                              ; preds = %348, %338, %328, %318
  %357 = phi i1 [ false, %338 ], [ false, %328 ], [ false, %318 ], [ %355, %348 ]
  %358 = zext i1 %357 to i32
  store i32 %358, i32* %3, align 4
  br label %689

359:                                              ; preds = %28
  %360 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %360, i32 0, i32 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 7
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 8
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %365, i32 0, i32 7
  %367 = load i32, i32* %366, align 4
  %368 = icmp eq i32 %363, %367
  br i1 %368, label %369, label %387

369:                                              ; preds = %359
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 8
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 16
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 16
  %377 = load i32, i32* %376, align 8
  %378 = icmp eq i32 %373, %377
  br i1 %378, label %379, label %387

379:                                              ; preds = %369
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 8
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 8
  %384 = load i32, i32* @fingerprint, align 4
  %385 = call i32 @FIELD_EQUAL(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %381, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %383, i32 %384)
  %386 = icmp ne i32 %385, 0
  br label %387

387:                                              ; preds = %379, %369, %359
  %388 = phi i1 [ false, %369 ], [ false, %359 ], [ %386, %379 ]
  %389 = zext i1 %388 to i32
  store i32 %389, i32* %3, align 4
  br label %689

390:                                              ; preds = %28
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %391, i32 0, i32 7
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %395, i32 0, i32 7
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = icmp eq i32 %394, %398
  br i1 %399, label %400, label %428

400:                                              ; preds = %390
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 7
  %403 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %402, i32 0, i32 15
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 7
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 15
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %404, %408
  br i1 %409, label %410, label %428

410:                                              ; preds = %400
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 7
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 7
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 7
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 7
  %418 = load i32, i32* %417, align 4
  %419 = icmp eq i32 %414, %418
  br i1 %419, label %420, label %428

420:                                              ; preds = %410
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 7
  %423 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %423, i32 0, i32 7
  %425 = load i32, i32* @key, align 4
  %426 = call i32 @FIELD_EQUAL(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %422, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %424, i32 %425)
  %427 = icmp ne i32 %426, 0
  br label %428

428:                                              ; preds = %420, %410, %400, %390
  %429 = phi i1 [ false, %410 ], [ false, %400 ], [ false, %390 ], [ %427, %420 ]
  %430 = zext i1 %429 to i32
  store i32 %430, i32* %3, align 4
  br label %689

431:                                              ; preds = %28
  %432 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %432, i32 0, i32 6
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 14
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %436, i32 0, i32 6
  %438 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %437, i32 0, i32 14
  %439 = load i32, i32* %438, align 8
  %440 = icmp eq i32 %435, %439
  br i1 %440, label %441, label %520

441:                                              ; preds = %431
  %442 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 6
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 7
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %446, i32 0, i32 6
  %448 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %447, i32 0, i32 7
  %449 = load i32, i32* %448, align 4
  %450 = icmp eq i32 %445, %449
  br i1 %450, label %451, label %520

451:                                              ; preds = %441
  %452 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %452, i32 0, i32 6
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 13
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %456, i32 0, i32 6
  %458 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %457, i32 0, i32 13
  %459 = load i32, i32* %458, align 4
  %460 = icmp eq i32 %455, %459
  br i1 %460, label %461, label %520

461:                                              ; preds = %451
  %462 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %462, i32 0, i32 6
  %464 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %463, i32 0, i32 12
  %465 = load i32, i32* %464, align 8
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %466, i32 0, i32 6
  %468 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %467, i32 0, i32 12
  %469 = load i32, i32* %468, align 8
  %470 = icmp eq i32 %465, %469
  br i1 %470, label %471, label %520

471:                                              ; preds = %461
  %472 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %473 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %472, i32 0, i32 6
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %473, i32 0, i32 11
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %476, i32 0, i32 6
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %477, i32 0, i32 11
  %479 = load i32, i32* %478, align 4
  %480 = icmp eq i32 %475, %479
  br i1 %480, label %481, label %520

481:                                              ; preds = %471
  %482 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 6
  %484 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %483, i32 0, i32 10
  %485 = load i32, i32* %484, align 8
  %486 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %486, i32 0, i32 6
  %488 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %487, i32 0, i32 10
  %489 = load i32, i32* %488, align 8
  %490 = icmp eq i32 %485, %489
  br i1 %490, label %491, label %520

491:                                              ; preds = %481
  %492 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %492, i32 0, i32 6
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %493, i32 0, i32 9
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %497 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %496, i32 0, i32 6
  %498 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %497, i32 0, i32 9
  %499 = load i32, i32* %498, align 4
  %500 = icmp eq i32 %495, %499
  br i1 %500, label %501, label %520

501:                                              ; preds = %491
  %502 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %502, i32 0, i32 6
  %504 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %505 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %504, i32 0, i32 6
  %506 = load i32, i32* @signature, align 4
  %507 = call i32 @FIELD_EQUAL(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %503, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %505, i32 %506)
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %520

509:                                              ; preds = %501
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %510, i32 0, i32 6
  %512 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %511, i32 0, i32 8
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %514, i32 0, i32 6
  %516 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %515, i32 0, i32 8
  %517 = load i32, i32* %516, align 8
  %518 = call i32 @dns_name_equal(i32 %513, i32 %517)
  %519 = icmp ne i32 %518, 0
  br label %520

520:                                              ; preds = %509, %501, %491, %481, %471, %461, %451, %441, %431
  %521 = phi i1 [ false, %501 ], [ false, %491 ], [ false, %481 ], [ false, %471 ], [ false, %461 ], [ false, %451 ], [ false, %441 ], [ false, %431 ], [ %519, %509 ]
  %522 = zext i1 %521 to i32
  store i32 %522, i32* %3, align 4
  br label %689

523:                                              ; preds = %28
  %524 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %525 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %524, i32 0, i32 5
  %526 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %528, i32 0, i32 5
  %530 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = call i32 @dns_name_equal(i32 %527, i32 %531)
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %545

534:                                              ; preds = %523
  %535 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %536 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %535, i32 0, i32 5
  %537 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %540 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %539, i32 0, i32 5
  %541 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = call i32 @bitmap_equal(i32 %538, i32 %542)
  %544 = icmp ne i32 %543, 0
  br label %545

545:                                              ; preds = %534, %523
  %546 = phi i1 [ false, %523 ], [ %544, %534 ]
  %547 = zext i1 %546 to i32
  store i32 %547, i32* %3, align 4
  br label %689

548:                                              ; preds = %28
  %549 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %550 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %549, i32 0, i32 4
  %551 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %550, i32 0, i32 7
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %554 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %553, i32 0, i32 4
  %555 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %554, i32 0, i32 7
  %556 = load i32, i32* %555, align 4
  %557 = icmp eq i32 %552, %556
  br i1 %557, label %558, label %605

558:                                              ; preds = %548
  %559 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %560 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %559, i32 0, i32 4
  %561 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %564 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %563, i32 0, i32 4
  %565 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  %567 = icmp eq i32 %562, %566
  br i1 %567, label %568, label %605

568:                                              ; preds = %558
  %569 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %569, i32 0, i32 4
  %571 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %570, i32 0, i32 6
  %572 = load i32, i32* %571, align 8
  %573 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %574 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %573, i32 0, i32 4
  %575 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %574, i32 0, i32 6
  %576 = load i32, i32* %575, align 8
  %577 = icmp eq i32 %572, %576
  br i1 %577, label %578, label %605

578:                                              ; preds = %568
  %579 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %580 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %579, i32 0, i32 4
  %581 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %582 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %581, i32 0, i32 4
  %583 = load i32, i32* @salt, align 4
  %584 = call i32 @FIELD_EQUAL(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %580, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %582, i32 %583)
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %605

586:                                              ; preds = %578
  %587 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %588 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %587, i32 0, i32 4
  %589 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %590 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %589, i32 0, i32 4
  %591 = load i32, i32* @next_hashed_name, align 4
  %592 = call i32 @FIELD_EQUAL(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %588, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %590, i32 %591)
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %605

594:                                              ; preds = %586
  %595 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %596 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %595, i32 0, i32 4
  %597 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %596, i32 0, i32 5
  %598 = load i32, i32* %597, align 4
  %599 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %600 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %599, i32 0, i32 4
  %601 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %600, i32 0, i32 5
  %602 = load i32, i32* %601, align 4
  %603 = call i32 @bitmap_equal(i32 %598, i32 %602)
  %604 = icmp ne i32 %603, 0
  br label %605

605:                                              ; preds = %594, %586, %578, %568, %558, %548
  %606 = phi i1 [ false, %586 ], [ false, %578 ], [ false, %568 ], [ false, %558 ], [ false, %548 ], [ %604, %594 ]
  %607 = zext i1 %606 to i32
  store i32 %607, i32* %3, align 4
  br label %689

608:                                              ; preds = %28
  %609 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %610 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %609, i32 0, i32 3
  %611 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %610, i32 0, i32 4
  %612 = load i32, i32* %611, align 8
  %613 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %614 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %613, i32 0, i32 3
  %615 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %614, i32 0, i32 4
  %616 = load i32, i32* %615, align 8
  %617 = icmp eq i32 %612, %616
  br i1 %617, label %618, label %646

618:                                              ; preds = %608
  %619 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %620 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %619, i32 0, i32 3
  %621 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %620, i32 0, i32 3
  %622 = load i32, i32* %621, align 4
  %623 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %624 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %623, i32 0, i32 3
  %625 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %624, i32 0, i32 3
  %626 = load i32, i32* %625, align 4
  %627 = icmp eq i32 %622, %626
  br i1 %627, label %628, label %646

628:                                              ; preds = %618
  %629 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %630 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %629, i32 0, i32 3
  %631 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %630, i32 0, i32 2
  %632 = load i32, i32* %631, align 8
  %633 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %634 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %633, i32 0, i32 3
  %635 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %634, i32 0, i32 2
  %636 = load i32, i32* %635, align 8
  %637 = icmp eq i32 %632, %636
  br i1 %637, label %638, label %646

638:                                              ; preds = %628
  %639 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %640 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %639, i32 0, i32 3
  %641 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %642 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %641, i32 0, i32 3
  %643 = load i32, i32* @data, align 4
  %644 = call i32 @FIELD_EQUAL(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %640, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %642, i32 %643)
  %645 = icmp ne i32 %644, 0
  br label %646

646:                                              ; preds = %638, %628, %618, %608
  %647 = phi i1 [ false, %628 ], [ false, %618 ], [ false, %608 ], [ %645, %638 ]
  %648 = zext i1 %647 to i32
  store i32 %648, i32* %3, align 4
  br label %689

649:                                              ; preds = %28
  %650 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %651 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %650, i32 0, i32 2
  %652 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 4
  %654 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %655 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %654, i32 0, i32 2
  %656 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %655, i32 0, i32 1
  %657 = load i32, i32* %656, align 4
  %658 = icmp eq i32 %653, %657
  br i1 %658, label %659, label %678

659:                                              ; preds = %649
  %660 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %661 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %660, i32 0, i32 2
  %662 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %661, i32 0, i32 0
  %663 = load i32, i32* %662, align 8
  %664 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %665 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %664, i32 0, i32 2
  %666 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 8
  %668 = call i32 @streq(i32 %663, i32 %667)
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %678

670:                                              ; preds = %659
  %671 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %672 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %671, i32 0, i32 2
  %673 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %674 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %673, i32 0, i32 2
  %675 = load i32, i32* @value, align 4
  %676 = call i32 @FIELD_EQUAL(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %672, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %674, i32 %675)
  %677 = icmp ne i32 %676, 0
  br label %678

678:                                              ; preds = %670, %659, %649
  %679 = phi i1 [ false, %659 ], [ false, %649 ], [ %677, %670 ]
  %680 = zext i1 %679 to i32
  store i32 %680, i32* %3, align 4
  br label %689

681:                                              ; preds = %28
  br label %682

682:                                              ; preds = %28, %681
  %683 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %684 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %683, i32 0, i32 1
  %685 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %686 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %685, i32 0, i32 1
  %687 = load i32, i32* @data, align 4
  %688 = call i32 @FIELD_EQUAL(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %684, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %686, i32 %687)
  store i32 %688, i32* %3, align 4
  br label %689

689:                                              ; preds = %682, %678, %646, %605, %545, %520, %428, %387, %356, %315, %234, %233, %220, %168, %154, %132, %122, %112, %109, %77, %74, %42, %14
  %690 = load i32, i32* %3, align 4
  ret i32 %690
}

declare dso_local i32 @dns_name_equal(i32, i32) #1

declare dso_local i32 @strcaseeq(i32, i32) #1

declare dso_local i32 @dns_txt_item_equal(i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FIELD_EQUAL(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, i32) #1

declare dso_local i32 @bitmap_equal(i32, i32) #1

declare dso_local i32 @streq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
