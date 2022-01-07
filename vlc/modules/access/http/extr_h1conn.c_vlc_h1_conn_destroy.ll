; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h1_conn = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_h1_conn*)* @vlc_h1_conn_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_h1_conn_destroy(%struct.vlc_h1_conn* %0) #0 {
  %2 = alloca %struct.vlc_h1_conn*, align 8
  store %struct.vlc_h1_conn* %0, %struct.vlc_h1_conn** %2, align 8
  %3 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %4 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %11 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %15 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %21 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @vlc_tls_Shutdown(i32* %23, i32 1)
  %25 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %26 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @vlc_tls_Close(i32* %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %32 = call i32 @free(%struct.vlc_h1_conn* %31)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_tls_Shutdown(i32*, i32) #1

declare dso_local i32 @vlc_tls_Close(i32*) #1

declare dso_local i32 @free(%struct.vlc_h1_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
