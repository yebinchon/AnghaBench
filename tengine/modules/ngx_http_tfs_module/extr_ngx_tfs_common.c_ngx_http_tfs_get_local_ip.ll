; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_get_local_ip.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_get_local_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ifreq = type { i8*, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@SIOCGIFADDR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_get_local_ip(i64 %0, i32 %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifreq, align 8
  %9 = bitcast %struct.TYPE_3__* %5 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %1, i32* %11, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %6, align 8
  %12 = load i32, i32* @AF_INET, align 4
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  %14 = call i32 @socket(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @NGX_ERROR, align 4
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ngx_memcpy(i8* %20, i32 %22, i64 %24)
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SIOCGIFADDR, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, %struct.ifreq* %8)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load i32, i32* @NGX_ERROR, align 4
  store i32 %38, i32* %4, align 4
  br label %48

39:                                               ; preds = %18
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %41 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  %42 = bitcast i32* %41 to %struct.sockaddr_in*
  %43 = bitcast %struct.sockaddr_in* %40 to i8*
  %44 = bitcast %struct.sockaddr_in* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 8 %44, i64 4, i1 false)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load i32, i32* @NGX_OK, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %35, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ngx_memcpy(i8*, i32, i64) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
