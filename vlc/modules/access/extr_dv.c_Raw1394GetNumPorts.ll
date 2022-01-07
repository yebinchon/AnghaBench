; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dv.c_Raw1394GetNumPorts.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dv.c_Raw1394GetNumPorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw1394_portinfo = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"raw1394 - failed to get handle: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"raw1394 - failed to get port info: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Raw1394GetNumPorts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Raw1394GetNumPorts(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x %struct.raw1394_portinfo], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 (...) @raw1394_new_handle()
  store i32 %7, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @errno, align 4
  %12 = call i32 @vlc_strerror_c(i32 %11)
  %13 = call i32 @msg_Err(i32* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds [16 x %struct.raw1394_portinfo], [16 x %struct.raw1394_portinfo]* %5, i64 0, i64 0
  %18 = call i32 @raw1394_get_port_info(i32 %16, %struct.raw1394_portinfo* %17, i32 16)
  store i32 %18, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @vlc_strerror_c(i32 %22)
  %24 = call i32 @msg_Err(i32* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @raw1394_destroy_handle(i32 %25)
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @raw1394_destroy_handle(i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %20, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @raw1394_new_handle(...) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @raw1394_get_port_info(i32, %struct.raw1394_portinfo*, i32) #1

declare dso_local i32 @raw1394_destroy_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
