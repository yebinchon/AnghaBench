; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_decomp.c_OpenXZ.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_decomp.c_OpenXZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\FD7zXZ\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"detected xz compressed stream\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"xzcat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenXZ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenXZ(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @vlc_stream_Peek(i32 %10, i32** %5, i32 8)
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @memcmp(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @msg_Dbg(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = call i32 @Open(%struct.TYPE_3__* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %19, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @Open(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
