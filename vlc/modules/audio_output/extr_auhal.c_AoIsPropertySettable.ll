; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_auhal.c_AoIsPropertySettable.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_auhal.c_AoIsPropertySettable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@noErr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"AudioObjectIsPropertySettable failed, device id: %i, prop: [%4.4s], OSStatus: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @AoIsPropertySettable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AoIsPropertySettable(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @AudioObjectIsPropertySettable(i32 %10, i32* %11, i32* %8)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @noErr, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = bitcast i32* %20 to i8*
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @msg_Warn(i32* %17, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %21, i32 %23)
  store i32 0, i32* %4, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @AudioObjectIsPropertySettable(i32, i32*, i32*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
