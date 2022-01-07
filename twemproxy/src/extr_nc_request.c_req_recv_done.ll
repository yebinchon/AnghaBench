; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_request.c_req_recv_done.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_request.c_req_recv_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32 (%struct.context*, %struct.conn*, %struct.msg*)*, %struct.server_pool*, i8*, %struct.msg*, i32, i64 }
%struct.server_pool = type { i32 }
%struct.msg = type { i32, i64 (%struct.msg*)*, i64 (%struct.msg*, i32, %struct.msg_tqh*)*, i32, i64, %struct.conn* }
%struct.msg_tqh = type { i32 }

@NC_OK = common dso_local global i64 0, align 8
@errno = common dso_local global i8* null, align 8
@m_tqe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @req_recv_done(%struct.context* %0, %struct.conn* %1, %struct.msg* %2, %struct.msg* %3) #0 {
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.conn*, align 8
  %7 = alloca %struct.msg*, align 8
  %8 = alloca %struct.msg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.server_pool*, align 8
  %11 = alloca %struct.msg_tqh, align 4
  %12 = alloca %struct.msg*, align 8
  %13 = alloca %struct.msg*, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.conn* %1, %struct.conn** %6, align 8
  store %struct.msg* %2, %struct.msg** %7, align 8
  store %struct.msg* %3, %struct.msg** %8, align 8
  %14 = load %struct.conn*, %struct.conn** %6, align 8
  %15 = getelementptr inbounds %struct.conn, %struct.conn* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.conn*, %struct.conn** %6, align 8
  %20 = getelementptr inbounds %struct.conn, %struct.conn* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i1 [ false, %4 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.msg*, %struct.msg** %7, align 8
  %29 = getelementptr inbounds %struct.msg, %struct.msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.msg*, %struct.msg** %7, align 8
  %33 = getelementptr inbounds %struct.msg, %struct.msg* %32, i32 0, i32 5
  %34 = load %struct.conn*, %struct.conn** %33, align 8
  %35 = load %struct.conn*, %struct.conn** %6, align 8
  %36 = icmp eq %struct.conn* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.conn*, %struct.conn** %6, align 8
  %40 = getelementptr inbounds %struct.conn, %struct.conn* %39, i32 0, i32 3
  %41 = load %struct.msg*, %struct.msg** %40, align 8
  %42 = load %struct.msg*, %struct.msg** %7, align 8
  %43 = icmp eq %struct.msg* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.msg*, %struct.msg** %8, align 8
  %47 = icmp eq %struct.msg* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %24
  %49 = load %struct.msg*, %struct.msg** %8, align 8
  %50 = getelementptr inbounds %struct.msg, %struct.msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %48, %24
  %54 = phi i1 [ true, %24 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.msg*, %struct.msg** %8, align 8
  %58 = load %struct.conn*, %struct.conn** %6, align 8
  %59 = getelementptr inbounds %struct.conn, %struct.conn* %58, i32 0, i32 3
  store %struct.msg* %57, %struct.msg** %59, align 8
  %60 = load %struct.context*, %struct.context** %5, align 8
  %61 = load %struct.conn*, %struct.conn** %6, align 8
  %62 = load %struct.msg*, %struct.msg** %7, align 8
  %63 = call i64 @req_filter(%struct.context* %60, %struct.conn* %61, %struct.msg* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %199

66:                                               ; preds = %53
  %67 = load %struct.msg*, %struct.msg** %7, align 8
  %68 = getelementptr inbounds %struct.msg, %struct.msg* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %110

71:                                               ; preds = %66
  %72 = load %struct.context*, %struct.context** %5, align 8
  %73 = load %struct.conn*, %struct.conn** %6, align 8
  %74 = load %struct.msg*, %struct.msg** %7, align 8
  %75 = call i64 @req_make_reply(%struct.context* %72, %struct.conn* %73, %struct.msg* %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @NC_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i8*, i8** @errno, align 8
  %81 = load %struct.conn*, %struct.conn** %6, align 8
  %82 = getelementptr inbounds %struct.conn, %struct.conn* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  br label %199

83:                                               ; preds = %71
  %84 = load %struct.msg*, %struct.msg** %7, align 8
  %85 = getelementptr inbounds %struct.msg, %struct.msg* %84, i32 0, i32 1
  %86 = load i64 (%struct.msg*)*, i64 (%struct.msg*)** %85, align 8
  %87 = load %struct.msg*, %struct.msg** %7, align 8
  %88 = call i64 %86(%struct.msg* %87)
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @NC_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i8*, i8** @errno, align 8
  %94 = load %struct.conn*, %struct.conn** %6, align 8
  %95 = getelementptr inbounds %struct.conn, %struct.conn* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  br label %199

96:                                               ; preds = %83
  %97 = load %struct.context*, %struct.context** %5, align 8
  %98 = getelementptr inbounds %struct.context, %struct.context* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.conn*, %struct.conn** %6, align 8
  %101 = call i64 @event_add_out(i32 %99, %struct.conn* %100)
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @NC_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i8*, i8** @errno, align 8
  %107 = load %struct.conn*, %struct.conn** %6, align 8
  %108 = getelementptr inbounds %struct.conn, %struct.conn* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %105, %96
  br label %199

110:                                              ; preds = %66
  %111 = load %struct.conn*, %struct.conn** %6, align 8
  %112 = getelementptr inbounds %struct.conn, %struct.conn* %111, i32 0, i32 1
  %113 = load %struct.server_pool*, %struct.server_pool** %112, align 8
  store %struct.server_pool* %113, %struct.server_pool** %10, align 8
  %114 = call i32 @TAILQ_INIT(%struct.msg_tqh* %11)
  %115 = load %struct.msg*, %struct.msg** %7, align 8
  %116 = getelementptr inbounds %struct.msg, %struct.msg* %115, i32 0, i32 2
  %117 = load i64 (%struct.msg*, i32, %struct.msg_tqh*)*, i64 (%struct.msg*, i32, %struct.msg_tqh*)** %116, align 8
  %118 = load %struct.msg*, %struct.msg** %7, align 8
  %119 = load %struct.server_pool*, %struct.server_pool** %10, align 8
  %120 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 %117(%struct.msg* %118, i32 %121, %struct.msg_tqh* %11)
  store i64 %122, i64* %9, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @NC_OK, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %110
  %127 = load %struct.msg*, %struct.msg** %7, align 8
  %128 = getelementptr inbounds %struct.msg, %struct.msg* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %126
  %132 = load %struct.conn*, %struct.conn** %6, align 8
  %133 = getelementptr inbounds %struct.conn, %struct.conn* %132, i32 0, i32 0
  %134 = load i32 (%struct.context*, %struct.conn*, %struct.msg*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*)** %133, align 8
  %135 = load %struct.context*, %struct.context** %5, align 8
  %136 = load %struct.conn*, %struct.conn** %6, align 8
  %137 = load %struct.msg*, %struct.msg** %7, align 8
  %138 = call i32 %134(%struct.context* %135, %struct.conn* %136, %struct.msg* %137)
  br label %139

139:                                              ; preds = %131, %126
  %140 = load %struct.context*, %struct.context** %5, align 8
  %141 = load %struct.conn*, %struct.conn** %6, align 8
  %142 = load %struct.msg*, %struct.msg** %7, align 8
  %143 = call i32 @req_forward_error(%struct.context* %140, %struct.conn* %141, %struct.msg* %142)
  br label %144

144:                                              ; preds = %139, %110
  %145 = call i32 @TAILQ_EMPTY(%struct.msg_tqh* %11)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.context*, %struct.context** %5, align 8
  %149 = load %struct.conn*, %struct.conn** %6, align 8
  %150 = load %struct.msg*, %struct.msg** %7, align 8
  %151 = call i32 @req_forward(%struct.context* %148, %struct.conn* %149, %struct.msg* %150)
  br label %199

152:                                              ; preds = %144
  %153 = load %struct.context*, %struct.context** %5, align 8
  %154 = load %struct.conn*, %struct.conn** %6, align 8
  %155 = load %struct.msg*, %struct.msg** %7, align 8
  %156 = call i64 @req_make_reply(%struct.context* %153, %struct.conn* %154, %struct.msg* %155)
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* @NC_OK, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %152
  %161 = load %struct.msg*, %struct.msg** %7, align 8
  %162 = getelementptr inbounds %struct.msg, %struct.msg* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %160
  %166 = load %struct.conn*, %struct.conn** %6, align 8
  %167 = getelementptr inbounds %struct.conn, %struct.conn* %166, i32 0, i32 0
  %168 = load i32 (%struct.context*, %struct.conn*, %struct.msg*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*)** %167, align 8
  %169 = load %struct.context*, %struct.context** %5, align 8
  %170 = load %struct.conn*, %struct.conn** %6, align 8
  %171 = load %struct.msg*, %struct.msg** %7, align 8
  %172 = call i32 %168(%struct.context* %169, %struct.conn* %170, %struct.msg* %171)
  br label %173

173:                                              ; preds = %165, %160
  %174 = load %struct.context*, %struct.context** %5, align 8
  %175 = load %struct.conn*, %struct.conn** %6, align 8
  %176 = load %struct.msg*, %struct.msg** %7, align 8
  %177 = call i32 @req_forward_error(%struct.context* %174, %struct.conn* %175, %struct.msg* %176)
  br label %178

178:                                              ; preds = %173, %152
  %179 = call %struct.msg* @TAILQ_FIRST(%struct.msg_tqh* %11)
  store %struct.msg* %179, %struct.msg** %12, align 8
  br label %180

180:                                              ; preds = %194, %178
  %181 = load %struct.msg*, %struct.msg** %12, align 8
  %182 = icmp ne %struct.msg* %181, null
  br i1 %182, label %183, label %196

183:                                              ; preds = %180
  %184 = load %struct.msg*, %struct.msg** %12, align 8
  %185 = load i32, i32* @m_tqe, align 4
  %186 = call %struct.msg* @TAILQ_NEXT(%struct.msg* %184, i32 %185)
  store %struct.msg* %186, %struct.msg** %13, align 8
  %187 = load %struct.msg*, %struct.msg** %12, align 8
  %188 = load i32, i32* @m_tqe, align 4
  %189 = call i32 @TAILQ_REMOVE(%struct.msg_tqh* %11, %struct.msg* %187, i32 %188)
  %190 = load %struct.context*, %struct.context** %5, align 8
  %191 = load %struct.conn*, %struct.conn** %6, align 8
  %192 = load %struct.msg*, %struct.msg** %12, align 8
  %193 = call i32 @req_forward(%struct.context* %190, %struct.conn* %191, %struct.msg* %192)
  br label %194

194:                                              ; preds = %183
  %195 = load %struct.msg*, %struct.msg** %13, align 8
  store %struct.msg* %195, %struct.msg** %12, align 8
  br label %180

196:                                              ; preds = %180
  %197 = call i32 @TAILQ_EMPTY(%struct.msg_tqh* %11)
  %198 = call i32 @ASSERT(i32 %197)
  br label %199

199:                                              ; preds = %196, %147, %109, %92, %79, %65
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @req_filter(%struct.context*, %struct.conn*, %struct.msg*) #1

declare dso_local i64 @req_make_reply(%struct.context*, %struct.conn*, %struct.msg*) #1

declare dso_local i64 @event_add_out(i32, %struct.conn*) #1

declare dso_local i32 @TAILQ_INIT(%struct.msg_tqh*) #1

declare dso_local i32 @req_forward_error(%struct.context*, %struct.conn*, %struct.msg*) #1

declare dso_local i32 @TAILQ_EMPTY(%struct.msg_tqh*) #1

declare dso_local i32 @req_forward(%struct.context*, %struct.conn*, %struct.msg*) #1

declare dso_local %struct.msg* @TAILQ_FIRST(%struct.msg_tqh*) #1

declare dso_local %struct.msg* @TAILQ_NEXT(%struct.msg*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.msg_tqh*, %struct.msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
