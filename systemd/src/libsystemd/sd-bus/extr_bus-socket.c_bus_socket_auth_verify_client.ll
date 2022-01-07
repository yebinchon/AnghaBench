; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-socket.c_bus_socket_auth_verify_client.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-socket.c_bus_socket_auth_verify_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32, %struct.TYPE_9__, i64, i32, i64 }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"OK \00", align 1
@BUS_AUTH_ANONYMOUS = common dso_local global i32 0, align 4
@BUS_AUTH_EXTERNAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"\0D\0AAGREE_UNIX_FD\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"AGREE_UNIX_FD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @bus_socket_auth_verify_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_socket_auth_verify_client(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i32 @assert(%struct.TYPE_10__* %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @memmem_safe(i8* %17, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %267

25:                                               ; preds = %1
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %32 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sub nsw i64 %31, %38
  %40 = sub nsw i64 %39, 2
  %41 = trunc i64 %40 to i32
  %42 = call i8* @memmem(i8* %27, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %267

46:                                               ; preds = %25
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = ptrtoint i8* %58 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sub nsw i64 %57, %64
  %66 = sub nsw i64 %65, 2
  %67 = trunc i64 %66 to i32
  %68 = call i8* @memmem(i8* %53, i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %267

72:                                               ; preds = %51
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %74, i8** %7, align 8
  br label %78

75:                                               ; preds = %46
  store i8* null, i8** %6, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %77, i8** %7, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i8*, i8** %4, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %79 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = icmp eq i64 %85, 4
  br i1 %86, label %87, label %97

87:                                               ; preds = %78
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @memcmp(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EPERM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %267

96:                                               ; preds = %87
  br label %120

97:                                               ; preds = %78
  %98 = load i8*, i8** %4, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %98 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = icmp eq i64 %104, 35
  br i1 %105, label %106, label %116

106:                                              ; preds = %97
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @memcmp(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @EPERM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %267

115:                                              ; preds = %106
  br label %119

116:                                              ; preds = %97
  %117 = load i32, i32* @EPERM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %267

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119, %96
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = icmp ne i64 %125, 37
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @EPERM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %267

130:                                              ; preds = %120
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = call i64 @memcmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* @EPERM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %267

138:                                              ; preds = %130
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @BUS_AUTH_ANONYMOUS, align 4
  br label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @BUS_AUTH_EXTERNAL, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %189, %147
  %152 = load i32, i32* %10, align 4
  %153 = icmp ult i32 %152, 32
  br i1 %153, label %154, label %192

154:                                              ; preds = %151
  %155 = load i8*, i8** %4, align 8
  %156 = load i32, i32* %10, align 4
  %157 = add i32 5, %156
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = call i32 @unhexchar(i8 signext %160)
  store i32 %161, i32* %11, align 4
  %162 = load i8*, i8** %4, align 8
  %163 = load i32, i32* %10, align 4
  %164 = add i32 5, %163
  %165 = add i32 %164, 1
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %162, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = call i32 @unhexchar(i8 signext %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %154
  %173 = load i32, i32* %12, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172, %154
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %267

178:                                              ; preds = %172
  %179 = load i32, i32* %11, align 4
  %180 = shl i32 %179, 4
  %181 = load i32, i32* %12, align 4
  %182 = or i32 %180, %181
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = udiv i32 %185, 2
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %182, i32* %188, align 4
  br label %189

189:                                              ; preds = %178
  %190 = load i32, i32* %10, align 4
  %191 = add i32 %190, 2
  store i32 %191, i32* %10, align 4
  br label %151

192:                                              ; preds = %151
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @sd_id128_is_null(i32* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %211, label %199

199:                                              ; preds = %192
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @sd_id128_equal(i32* %203, i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %199
  %209 = load i32, i32* @EPERM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %267

211:                                              ; preds = %199, %192
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 3
  %214 = bitcast %struct.TYPE_9__* %213 to i8*
  %215 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %214, i8* align 8 %215, i64 8, i1 false)
  %216 = load i8*, i8** %6, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %238

218:                                              ; preds = %211
  %219 = load i8*, i8** %6, align 8
  %220 = load i8*, i8** %5, align 8
  %221 = ptrtoint i8* %219 to i64
  %222 = ptrtoint i8* %220 to i64
  %223 = sub i64 %221, %222
  %224 = call i32 @STRLEN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %225 = sext i32 %224 to i64
  %226 = icmp eq i64 %223, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %218
  %228 = load i8*, i8** %5, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 2
  %230 = call i32 @STRLEN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %231 = call i64 @memcmp(i8* %229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %230)
  %232 = icmp eq i64 %231, 0
  br label %233

233:                                              ; preds = %227, %218
  %234 = phi i1 [ false, %218 ], [ %232, %227 ]
  %235 = zext i1 %234 to i32
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %233, %211
  %239 = load i8*, i8** %7, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = ptrtoint i8* %239 to i64
  %244 = ptrtoint i8* %242 to i64
  %245 = sub i64 %243, %244
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = sub nsw i64 %249, %245
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %247, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = load i8*, i8** %7, align 8
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @memmove(i8* %254, i8* %255, i32 %258)
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %261 = call i32 @bus_start_running(%struct.TYPE_10__* %260)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %238
  %265 = load i32, i32* %9, align 4
  store i32 %265, i32* %2, align 4
  br label %267

266:                                              ; preds = %238
  store i32 1, i32* %2, align 4
  br label %267

267:                                              ; preds = %266, %264, %208, %175, %135, %127, %116, %112, %93, %71, %45, %24
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i8* @memmem_safe(i8*, i32, i8*, i32) #1

declare dso_local i8* @memmem(i8*, i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @unhexchar(i8 signext) #1

declare dso_local i32 @sd_id128_is_null(i32*) #1

declare dso_local i32 @sd_id128_equal(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @bus_start_running(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
