; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_demux.c_var_InheritFourCC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_demux.c_var_InheritFourCC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEO_ES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid codec %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @var_InheritFourCC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @var_InheritFourCC(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @var_InheritString(i32* %8, i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %28

14:                                               ; preds = %2
  %15 = load i32, i32* @VIDEO_ES, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @vlc_fourcc_GetCodecFromString(i32 %15, i8* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @msg_Err(i32* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %24, %13
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i64 @vlc_fourcc_GetCodecFromString(i32, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
