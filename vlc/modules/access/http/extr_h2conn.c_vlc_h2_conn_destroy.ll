; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn.c_vlc_h2_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn.c_vlc_h2_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_conn = type { %struct.TYPE_2__, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@VLC_H2_NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_h2_conn*)* @vlc_h2_conn_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_h2_conn_destroy(%struct.vlc_h2_conn* %0) #0 {
  %2 = alloca %struct.vlc_h2_conn*, align 8
  store %struct.vlc_h2_conn* %0, %struct.vlc_h2_conn** %2, align 8
  %3 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %2, align 8
  %4 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %2, align 8
  %10 = load i32, i32* @VLC_H2_NO_ERROR, align 4
  %11 = call i32 @vlc_h2_error(%struct.vlc_h2_conn* %9, i32 %10)
  %12 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %2, align 8
  %13 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vlc_cancel(i32 %14)
  %16 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %2, align 8
  %17 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vlc_join(i32 %18, i32* null)
  %20 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %2, align 8
  %21 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %20, i32 0, i32 2
  %22 = call i32 @vlc_mutex_destroy(i32* %21)
  %23 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %2, align 8
  %24 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vlc_h2_output_destroy(i32 %25)
  %27 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %2, align 8
  %28 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @vlc_tls_Shutdown(i32 %30, i32 1)
  %32 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %2, align 8
  %33 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @vlc_tls_Close(i32 %35)
  %37 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %2, align 8
  %38 = call i32 @free(%struct.vlc_h2_conn* %37)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_h2_error(%struct.vlc_h2_conn*, i32) #1

declare dso_local i32 @vlc_cancel(i32) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @vlc_h2_output_destroy(i32) #1

declare dso_local i32 @vlc_tls_Shutdown(i32, i32) #1

declare dso_local i32 @vlc_tls_Close(i32) #1

declare dso_local i32 @free(%struct.vlc_h2_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
