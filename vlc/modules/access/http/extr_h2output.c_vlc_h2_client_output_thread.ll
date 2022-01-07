; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_client_output_thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_client_output_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_output = type { i32, i32, i32 }

@vlc_h2_client_output_thread.http2_hello = internal constant [25 x i8] c"PRI * HTTP/2.0\0D\0A\0D\0ASM\0D\0A\0D\0A\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @vlc_h2_client_output_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_h2_client_output_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vlc_h2_output*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.vlc_h2_output*
  store %struct.vlc_h2_output* %6, %struct.vlc_h2_output** %4, align 8
  %7 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %4, align 8
  %8 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @vlc_https_send(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @vlc_h2_client_output_thread.http2_hello, i64 0, i64 0), i32 24)
  %11 = icmp slt i32 %10, 24
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %4, align 8
  %14 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %13, i32 0, i32 1
  %15 = call i32 @vlc_mutex_lock(i32* %14)
  %16 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %4, align 8
  %17 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %4, align 8
  %19 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %18, i32 0, i32 1
  %20 = call i32 @vlc_mutex_unlock(i32* %19)
  store i8* null, i8** %2, align 8
  br label %24

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @vlc_h2_output_thread(i8* %22)
  store i8* %23, i8** %2, align 8
  br label %24

24:                                               ; preds = %21, %12
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

declare dso_local i32 @vlc_https_send(i32, i8*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i8* @vlc_h2_output_thread(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
