; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_udp_sendmsg_chain.c_ngx_udp_unix_sendmsg_chain.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_udp_sendmsg_chain.c_ngx_udp_unix_sendmsg_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64, i32, i64 }
%struct.TYPE_19__ = type { i32, i64, %struct.iovec* }
%struct.iovec = type { i32 }

@NGX_IOVS_PREALLOCATE = common dso_local global i32 0, align 4
@NGX_MAX_SIZE_T_VALUE = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i64 0, align 8
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"file buf in sendmsg t:%d r:%d f:%d %p %p-%p %p %O-%O\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @ngx_udp_unix_sendmsg_chain(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca %struct.iovec, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %11, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %166

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %35 = load i64, i64* @ngx_pagesize, align 8
  %36 = sub nsw i64 %34, %35
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %29
  %39 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %40 = load i64, i64* @ngx_pagesize, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %38, %32
  store i64 0, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  store %struct.iovec* %19, %struct.iovec** %43, align 8
  %44 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  br label %46

46:                                               ; preds = %165, %42
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_22__* @ngx_udp_output_chain_to_iovec(%struct.TYPE_19__* %12, %struct.TYPE_22__* %47, i32 %50)
  store %struct.TYPE_22__* %51, %struct.TYPE_22__** %10, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NGX_CHAIN_ERROR, align 8
  %54 = icmp eq %struct.TYPE_22__* %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_22__* %56, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %166

57:                                               ; preds = %46
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %59 = icmp ne %struct.TYPE_22__* %58, null
  br i1 %59, label %60, label %120

60:                                               ; preds = %57
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %120

67:                                               ; preds = %60
  %68 = load i32, i32* @NGX_LOG_ALERT, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ngx_log_error(i32 %68, i32 %71, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %81, i64 %86, i32 %91, i32 %96, i32 %101, i32 %106, i32 %111, i32 %116)
  %118 = call i32 (...) @ngx_debug_point()
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_22__* %119, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %166

120:                                              ; preds = %60, %57
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %123 = icmp eq %struct.TYPE_22__* %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %125, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %166

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* %9, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = call i64 @ngx_sendmsg(%struct.TYPE_21__* %131, %struct.TYPE_19__* %12)
  store i64 %132, i64* %8, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @NGX_ERROR, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_22__* %137, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %166

138:                                              ; preds = %126
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* @NGX_AGAIN, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %145, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %166

146:                                              ; preds = %138
  %147 = load i64, i64* %8, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call %struct.TYPE_22__* @ngx_chain_update_sent(%struct.TYPE_22__* %154, i64 %155)
  store %struct.TYPE_22__* %156, %struct.TYPE_22__** %6, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %7, align 8
  %159 = icmp sge i64 %157, %158
  br i1 %159, label %163, label %160

160:                                              ; preds = %146
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %162 = icmp eq %struct.TYPE_22__* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %160, %146
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %164, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %166

165:                                              ; preds = %160
  br label %46

166:                                              ; preds = %163, %142, %136, %124, %67, %55, %27
  %167 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_22__* @ngx_udp_output_chain_to_iovec(%struct.TYPE_19__*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, i64, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ngx_debug_point(...) #2

declare dso_local i64 @ngx_sendmsg(%struct.TYPE_21__*, %struct.TYPE_19__*) #2

declare dso_local %struct.TYPE_22__* @ngx_chain_update_sent(%struct.TYPE_22__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
