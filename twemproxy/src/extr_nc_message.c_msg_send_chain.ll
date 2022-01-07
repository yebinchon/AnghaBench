; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_send_chain.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_send_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { {}*, %struct.msg*, %struct.msg* (%struct.context*, %struct.conn*)* }
%struct.msg = type { i64, i32 }
%struct.msg_tqh = type { i32 }
%struct.mbuf = type { i64, i64 }
%struct.iovec = type { i64, i64 }
%struct.array = type { i32 }

@NC_IOV_MAX = common dso_local global i32 0, align 4
@SSIZE_MAX = common dso_local global i64 0, align 8
@m_tqe = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4
@NC_EAGAIN = common dso_local global i64 0, align 8
@NC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.conn*, %struct.msg*)* @msg_send_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_send_chain(%struct.context* %0, %struct.conn* %1, %struct.msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.conn*, align 8
  %7 = alloca %struct.msg*, align 8
  %8 = alloca %struct.msg_tqh, align 4
  %9 = alloca %struct.msg*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.iovec*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.array, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.conn* %1, %struct.conn** %6, align 8
  store %struct.msg* %2, %struct.msg** %7, align 8
  %22 = load i32, i32* @NC_IOV_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca %struct.iovec, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %26 = call i32 @TAILQ_INIT(%struct.msg_tqh* %8)
  %27 = load i32, i32* @NC_IOV_MAX, align 4
  %28 = call i32 @array_set(%struct.array* %16, %struct.iovec* %25, i32 16, i32 %27)
  store i64 0, i64* %17, align 8
  %29 = load i64, i64* @SSIZE_MAX, align 8
  store i64 %29, i64* %19, align 8
  br label %30

30:                                               ; preds = %111, %3
  %31 = load %struct.conn*, %struct.conn** %6, align 8
  %32 = getelementptr inbounds %struct.conn, %struct.conn* %31, i32 0, i32 1
  %33 = load %struct.msg*, %struct.msg** %32, align 8
  %34 = load %struct.msg*, %struct.msg** %7, align 8
  %35 = icmp eq %struct.msg* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.msg*, %struct.msg** %7, align 8
  %39 = load i32, i32* @m_tqe, align 4
  %40 = call i32 @TAILQ_INSERT_TAIL(%struct.msg_tqh* %8, %struct.msg* %38, i32 %39)
  %41 = load %struct.msg*, %struct.msg** %7, align 8
  %42 = getelementptr inbounds %struct.msg, %struct.msg* %41, i32 0, i32 1
  %43 = call %struct.mbuf* @STAILQ_FIRST(i32* %42)
  store %struct.mbuf* %43, %struct.mbuf** %10, align 8
  br label %44

44:                                               ; preds = %90, %30
  %45 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %46 = icmp ne %struct.mbuf* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = call i32 @array_n(%struct.array* %16)
  %49 = load i32, i32* @NC_IOV_MAX, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64, i64* %17, align 8
  %53 = load i64, i64* %19, align 8
  %54 = icmp ult i64 %52, %53
  br label %55

55:                                               ; preds = %51, %47, %44
  %56 = phi i1 [ false, %47 ], [ false, %44 ], [ %54, %51 ]
  br i1 %56, label %57, label %92

57:                                               ; preds = %55
  %58 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %59 = load i32, i32* @next, align 4
  %60 = call %struct.mbuf* @STAILQ_NEXT(%struct.mbuf* %58, i32 %59)
  store %struct.mbuf* %60, %struct.mbuf** %11, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %62 = call i64 @mbuf_empty(%struct.mbuf* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %90

65:                                               ; preds = %57
  %66 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %67 = call i64 @mbuf_length(%struct.mbuf* %66)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %19, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* %17, align 8
  %76 = sub i64 %74, %75
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %73, %65
  %78 = call %struct.iovec* @array_push(%struct.array* %16)
  store %struct.iovec* %78, %struct.iovec** %13, align 8
  %79 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.iovec*, %struct.iovec** %13, align 8
  %83 = getelementptr inbounds %struct.iovec, %struct.iovec* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.iovec*, %struct.iovec** %13, align 8
  %86 = getelementptr inbounds %struct.iovec, %struct.iovec* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %17, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %17, align 8
  br label %90

90:                                               ; preds = %77, %64
  %91 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %91, %struct.mbuf** %10, align 8
  br label %44

92:                                               ; preds = %55
  %93 = call i32 @array_n(%struct.array* %16)
  %94 = load i32, i32* @NC_IOV_MAX, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %19, align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %92
  br label %112

101:                                              ; preds = %96
  %102 = load %struct.conn*, %struct.conn** %6, align 8
  %103 = getelementptr inbounds %struct.conn, %struct.conn* %102, i32 0, i32 2
  %104 = load %struct.msg* (%struct.context*, %struct.conn*)*, %struct.msg* (%struct.context*, %struct.conn*)** %103, align 8
  %105 = load %struct.context*, %struct.context** %5, align 8
  %106 = load %struct.conn*, %struct.conn** %6, align 8
  %107 = call %struct.msg* %104(%struct.context* %105, %struct.conn* %106)
  store %struct.msg* %107, %struct.msg** %7, align 8
  %108 = load %struct.msg*, %struct.msg** %7, align 8
  %109 = icmp eq %struct.msg* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %112

111:                                              ; preds = %101
  br label %30

112:                                              ; preds = %110, %100
  %113 = load %struct.conn*, %struct.conn** %6, align 8
  %114 = getelementptr inbounds %struct.conn, %struct.conn* %113, i32 0, i32 1
  store %struct.msg* null, %struct.msg** %114, align 8
  %115 = call i32 @TAILQ_EMPTY(%struct.msg_tqh* %8)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = load i64, i64* %17, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.conn*, %struct.conn** %6, align 8
  %122 = load i64, i64* %17, align 8
  %123 = call i64 @conn_sendv(%struct.conn* %121, %struct.array* %16, i64 %122)
  store i64 %123, i64* %20, align 8
  br label %125

124:                                              ; preds = %117, %112
  store i64 0, i64* %20, align 8
  br label %125

125:                                              ; preds = %124, %120
  %126 = load i64, i64* %20, align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i64, i64* %20, align 8
  br label %131

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i64 [ %129, %128 ], [ 0, %130 ]
  store i64 %132, i64* %18, align 8
  %133 = call %struct.msg* @TAILQ_FIRST(%struct.msg_tqh* %8)
  store %struct.msg* %133, %struct.msg** %7, align 8
  br label %134

134:                                              ; preds = %221, %131
  %135 = load %struct.msg*, %struct.msg** %7, align 8
  %136 = icmp ne %struct.msg* %135, null
  br i1 %136, label %137, label %223

137:                                              ; preds = %134
  %138 = load %struct.msg*, %struct.msg** %7, align 8
  %139 = load i32, i32* @m_tqe, align 4
  %140 = call %struct.msg* @TAILQ_NEXT(%struct.msg* %138, i32 %139)
  store %struct.msg* %140, %struct.msg** %9, align 8
  %141 = load %struct.msg*, %struct.msg** %7, align 8
  %142 = load i32, i32* @m_tqe, align 4
  %143 = call i32 @TAILQ_REMOVE(%struct.msg_tqh* %8, %struct.msg* %141, i32 %142)
  %144 = load i64, i64* %18, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %137
  %147 = load %struct.msg*, %struct.msg** %7, align 8
  %148 = getelementptr inbounds %struct.msg, %struct.msg* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load %struct.conn*, %struct.conn** %6, align 8
  %153 = getelementptr inbounds %struct.conn, %struct.conn* %152, i32 0, i32 0
  %154 = bitcast {}** %153 to i32 (%struct.context*, %struct.conn*, %struct.msg*)**
  %155 = load i32 (%struct.context*, %struct.conn*, %struct.msg*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*)** %154, align 8
  %156 = load %struct.context*, %struct.context** %5, align 8
  %157 = load %struct.conn*, %struct.conn** %6, align 8
  %158 = load %struct.msg*, %struct.msg** %7, align 8
  %159 = call i32 %155(%struct.context* %156, %struct.conn* %157, %struct.msg* %158)
  br label %160

160:                                              ; preds = %151, %146
  br label %221

161:                                              ; preds = %137
  %162 = load %struct.msg*, %struct.msg** %7, align 8
  %163 = getelementptr inbounds %struct.msg, %struct.msg* %162, i32 0, i32 1
  %164 = call %struct.mbuf* @STAILQ_FIRST(i32* %163)
  store %struct.mbuf* %164, %struct.mbuf** %10, align 8
  br label %165

165:                                              ; preds = %206, %161
  %166 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %167 = icmp ne %struct.mbuf* %166, null
  br i1 %167, label %168, label %208

168:                                              ; preds = %165
  %169 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %170 = load i32, i32* @next, align 4
  %171 = call %struct.mbuf* @STAILQ_NEXT(%struct.mbuf* %169, i32 %170)
  store %struct.mbuf* %171, %struct.mbuf** %11, align 8
  %172 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %173 = call i64 @mbuf_empty(%struct.mbuf* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %206

176:                                              ; preds = %168
  %177 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %178 = call i64 @mbuf_length(%struct.mbuf* %177)
  store i64 %178, i64* %12, align 8
  %179 = load i64, i64* %18, align 8
  %180 = load i64, i64* %12, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %176
  %183 = load i64, i64* %18, align 8
  %184 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %185 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, %183
  store i64 %187, i64* %185, align 8
  %188 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %189 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %192 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp slt i64 %190, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @ASSERT(i32 %195)
  store i64 0, i64* %18, align 8
  br label %208

197:                                              ; preds = %176
  %198 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %199 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %202 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  %203 = load i64, i64* %12, align 8
  %204 = load i64, i64* %18, align 8
  %205 = sub i64 %204, %203
  store i64 %205, i64* %18, align 8
  br label %206

206:                                              ; preds = %197, %175
  %207 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %207, %struct.mbuf** %10, align 8
  br label %165

208:                                              ; preds = %182, %165
  %209 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %210 = icmp eq %struct.mbuf* %209, null
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load %struct.conn*, %struct.conn** %6, align 8
  %213 = getelementptr inbounds %struct.conn, %struct.conn* %212, i32 0, i32 0
  %214 = bitcast {}** %213 to i32 (%struct.context*, %struct.conn*, %struct.msg*)**
  %215 = load i32 (%struct.context*, %struct.conn*, %struct.msg*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*)** %214, align 8
  %216 = load %struct.context*, %struct.context** %5, align 8
  %217 = load %struct.conn*, %struct.conn** %6, align 8
  %218 = load %struct.msg*, %struct.msg** %7, align 8
  %219 = call i32 %215(%struct.context* %216, %struct.conn* %217, %struct.msg* %218)
  br label %220

220:                                              ; preds = %211, %208
  br label %221

221:                                              ; preds = %220, %160
  %222 = load %struct.msg*, %struct.msg** %9, align 8
  store %struct.msg* %222, %struct.msg** %7, align 8
  br label %134

223:                                              ; preds = %134
  %224 = call i32 @TAILQ_EMPTY(%struct.msg_tqh* %8)
  %225 = call i32 @ASSERT(i32 %224)
  %226 = load i64, i64* %20, align 8
  %227 = icmp sge i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i32, i32* @NC_OK, align 4
  store i32 %229, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %240

230:                                              ; preds = %223
  %231 = load i64, i64* %20, align 8
  %232 = load i64, i64* @NC_EAGAIN, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @NC_OK, align 4
  br label %238

236:                                              ; preds = %230
  %237 = load i32, i32* @NC_ERROR, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi i32 [ %235, %234 ], [ %237, %236 ]
  store i32 %239, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %240

240:                                              ; preds = %238, %228
  %241 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TAILQ_INIT(%struct.msg_tqh*) #2

declare dso_local i32 @array_set(%struct.array*, %struct.iovec*, i32, i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.msg_tqh*, %struct.msg*, i32) #2

declare dso_local %struct.mbuf* @STAILQ_FIRST(i32*) #2

declare dso_local i32 @array_n(%struct.array*) #2

declare dso_local %struct.mbuf* @STAILQ_NEXT(%struct.mbuf*, i32) #2

declare dso_local i64 @mbuf_empty(%struct.mbuf*) #2

declare dso_local i64 @mbuf_length(%struct.mbuf*) #2

declare dso_local %struct.iovec* @array_push(%struct.array*) #2

declare dso_local i32 @TAILQ_EMPTY(%struct.msg_tqh*) #2

declare dso_local i64 @conn_sendv(%struct.conn*, %struct.array*, i64) #2

declare dso_local %struct.msg* @TAILQ_FIRST(%struct.msg_tqh*) #2

declare dso_local %struct.msg* @TAILQ_NEXT(%struct.msg*, i32) #2

declare dso_local i32 @TAILQ_REMOVE(%struct.msg_tqh*, %struct.msg*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
