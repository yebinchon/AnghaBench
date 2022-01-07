; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn_test.c_conn_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn_test.c_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vlc_tls_SocketPair\00", align 1
@external_tls = common dso_local global i32* null, align 8
@conn = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @conn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_create() #0 {
  %1 = alloca [2 x i32*], align 16
  %2 = load i32, i32* @PF_LOCAL, align 4
  %3 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1, i64 0, i64 0
  %4 = call i64 @vlc_tls_SocketPair(i32 %2, i32 0, i32** %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @assert(i32 0)
  br label %8

8:                                                ; preds = %6, %0
  %9 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1, i64 0, i64 0
  %10 = load i32*, i32** %9, align 16
  store i32* %10, i32** @external_tls, align 8
  %11 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1, i64 0, i64 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i32* @vlc_h1_conn_create(i32* null, i32* %12, i32 0)
  store i32* %13, i32** @conn, align 8
  %14 = load i32*, i32** @conn, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  ret void
}

declare dso_local i64 @vlc_tls_SocketPair(i32, i32, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @vlc_h1_conn_create(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
