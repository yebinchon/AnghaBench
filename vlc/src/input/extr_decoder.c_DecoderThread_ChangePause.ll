; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread_ChangePause.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread_ChangePause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i32*, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"toggling %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decoder_owner*, i32, i32)* @DecoderThread_ChangePause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecoderThread_ChangePause(%struct.decoder_owner* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.decoder_owner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.decoder_owner* %0, %struct.decoder_owner** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %9 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %8, i32 0, i32 3
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @msg_Dbg(%struct.TYPE_5__* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %59 [
    i32 128, label %20
    i32 130, label %39
    i32 129, label %58
  ]

20:                                               ; preds = %3
  %21 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %22 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %21, i32 0, i32 0
  %23 = call i32 @vlc_mutex_lock(i32* %22)
  %24 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %25 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %30 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @vout_ChangePause(i32* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %20
  %36 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %37 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %36, i32 0, i32 0
  %38 = call i32 @vlc_mutex_unlock(i32* %37)
  br label %61

39:                                               ; preds = %3
  %40 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %41 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %40, i32 0, i32 0
  %42 = call i32 @vlc_mutex_lock(i32* %41)
  %43 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %44 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %49 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @aout_DecChangePause(i32* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %39
  %55 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %56 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %55, i32 0, i32 0
  %57 = call i32 @vlc_mutex_unlock(i32* %56)
  br label %61

58:                                               ; preds = %3
  br label %61

59:                                               ; preds = %3
  %60 = call i32 (...) @vlc_assert_unreachable()
  br label %61

61:                                               ; preds = %59, %58, %54, %35
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vout_ChangePause(i32*, i32, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @aout_DecChangePause(i32*, i32, i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
