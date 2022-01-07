; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail.c_ngx_mail_add_ports.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail.c_ngx_mail_add_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_15__, i32 }
%struct.TYPE_11__ = type { %struct.sockaddr* }
%struct.sockaddr = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_11__*)* @ngx_mail_add_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_mail_add_ports(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  store %struct.sockaddr* %15, %struct.sockaddr** %10, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %17 = call i32 @ngx_inet_get_port(%struct.sockaddr* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %11, align 8
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %50, %3
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %28, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %47
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %11, align 8
  br label %81

49:                                               ; preds = %35, %27
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %21

53:                                               ; preds = %21
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = call i8* @ngx_array_push(%struct.TYPE_15__* %54)
  %56 = bitcast i8* %55 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %11, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %58 = icmp eq %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i64, i64* @NGX_ERROR, align 8
  store i64 %60, i64* %4, align 8
  br label %97

61:                                               ; preds = %53
  %62 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %63 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ngx_array_init(%struct.TYPE_15__* %71, i32 %74, i32 2, i32 8)
  %76 = load i64, i64* @NGX_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load i64, i64* @NGX_ERROR, align 8
  store i64 %79, i64* %4, align 8
  br label %97

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80, %45
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = call i8* @ngx_array_push(%struct.TYPE_15__* %83)
  %85 = bitcast i8* %84 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %12, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %87 = icmp eq %struct.TYPE_13__* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i64, i64* @NGX_ERROR, align 8
  store i64 %89, i64* %4, align 8
  br label %97

90:                                               ; preds = %81
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = bitcast %struct.TYPE_11__* %92 to i8*
  %95 = bitcast %struct.TYPE_11__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 8, i1 false)
  %96 = load i64, i64* @NGX_OK, align 8
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %90, %88, %78, %59
  %98 = load i64, i64* %4, align 8
  ret i64 %98
}

declare dso_local i32 @ngx_inet_get_port(%struct.sockaddr*) #1

declare dso_local i8* @ngx_array_push(%struct.TYPE_15__*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_15__*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
