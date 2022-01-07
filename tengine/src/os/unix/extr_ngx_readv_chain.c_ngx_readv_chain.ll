; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_readv_chain.c_ngx_readv_chain.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_readv_chain.c_ngx_readv_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.iovec*, i32 }
%struct.iovec = type { i64, i8* }

@NGX_IOVS_PREALLOCATE = common dso_local global i32 0, align 4
@IOV_MAX = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"readv: %ui, last:%uz\00", align 1
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_GREEDY_EVENT = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@NGX_EAGAIN = common dso_local global i64 0, align 8
@NGX_EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"readv() not ready\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"readv() failed\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_USE_EPOLL_EVENT = common dso_local global i32 0, align 4
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@ngx_use_epoll_rdhup = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_readv_chain(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.iovec*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca %struct.iovec, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %13, align 8
  store i32* null, i32** %8, align 8
  store %struct.iovec* null, %struct.iovec** %14, align 8
  store i64 0, i64* %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  store %struct.iovec* %21, %struct.iovec** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i32 16, i32* %27, align 8
  %28 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  br label %34

34:                                               ; preds = %108, %3
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = icmp ne %struct.TYPE_13__* %35, null
  br i1 %36, label %37, label %120

37:                                               ; preds = %34
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = ptrtoint i32* %42 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %37
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %120

59:                                               ; preds = %54
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* %7, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %10, align 8
  %68 = sub nsw i64 %66, %67
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %69, %37
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %71, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.iovec*, %struct.iovec** %14, align 8
  %81 = getelementptr inbounds %struct.iovec, %struct.iovec* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  br label %108

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IOV_MAX, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %120

90:                                               ; preds = %84
  %91 = call %struct.iovec* @ngx_array_push(%struct.TYPE_14__* %12)
  store %struct.iovec* %91, %struct.iovec** %14, align 8
  %92 = load %struct.iovec*, %struct.iovec** %14, align 8
  %93 = icmp eq %struct.iovec* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* @NGX_ERROR, align 8
  store i64 %95, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %203

96:                                               ; preds = %90
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = bitcast i32* %101 to i8*
  %103 = load %struct.iovec*, %struct.iovec** %14, align 8
  %104 = getelementptr inbounds %struct.iovec, %struct.iovec* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.iovec*, %struct.iovec** %14, align 8
  %107 = getelementptr inbounds %struct.iovec, %struct.iovec* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %96, %78
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %10, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %8, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %6, align 8
  br label %34

120:                                              ; preds = %89, %58, %34
  %121 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.iovec*, %struct.iovec** %14, align 8
  %128 = getelementptr inbounds %struct.iovec, %struct.iovec* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @ngx_log_debug2(i32 %121, i32 %124, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %126, i64 %129)
  br label %131

131:                                              ; preds = %186, %120
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %136 = load %struct.iovec*, %struct.iovec** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @readv(i32 %134, %struct.iovec* %136, i64 %138)
  store i64 %139, i64* %9, align 8
  %140 = load i64, i64* %9, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %131
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 4
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  store i32 1, i32* %146, align 8
  store i64 0, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %203

147:                                              ; preds = %131
  %148 = load i64, i64* %9, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %10, align 8
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i32, i32* @ngx_event_flags, align 4
  %156 = load i32, i32* @NGX_USE_GREEDY_EVENT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 4
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %159, %154, %150
  %163 = load i64, i64* %9, align 8
  store i64 %163, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %203

164:                                              ; preds = %147
  %165 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %165, i64* %11, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* @NGX_EAGAIN, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* @NGX_EINTR, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %169, %164
  %174 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* %11, align 8
  %179 = call i32 @ngx_log_debug0(i32 %174, i32 %177, i64 %178, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %180 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %180, i64* %9, align 8
  br label %185

181:                                              ; preds = %169
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %183 = load i64, i64* %11, align 8
  %184 = call i64 @ngx_connection_error(%struct.TYPE_12__* %182, i64 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i64 %184, i64* %9, align 8
  br label %190

185:                                              ; preds = %173
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %11, align 8
  %188 = load i64, i64* @NGX_EINTR, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %131, label %190

190:                                              ; preds = %186, %181
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 4
  store i64 0, i64* %192, align 8
  %193 = load i64, i64* %9, align 8
  %194 = load i64, i64* @NGX_ERROR, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %196, %190
  %202 = load i64, i64* %9, align 8
  store i64 %202, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %203

203:                                              ; preds = %201, %162, %142, %94
  %204 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i64, i64* %4, align 8
  ret i64 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.iovec* @ngx_array_push(%struct.TYPE_14__*) #2

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #2

declare dso_local i64 @readv(i32, %struct.iovec*, i64) #2

declare dso_local i32 @ngx_log_debug0(i32, i32, i64, i8*) #2

declare dso_local i64 @ngx_connection_error(%struct.TYPE_12__*, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
