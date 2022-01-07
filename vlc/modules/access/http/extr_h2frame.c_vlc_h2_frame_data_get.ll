; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_frame_data_get.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_frame_data_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i32 }

@VLC_H2_FRAME_DATA = common dso_local global i64 0, align 8
@VLC_H2_DATA_PADDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_h2_frame_data_get(%struct.vlc_h2_frame* %0, i64* noalias %1) #0 {
  %3 = alloca %struct.vlc_h2_frame*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.vlc_h2_frame* %0, %struct.vlc_h2_frame** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  %9 = call i64 @vlc_h2_frame_type(%struct.vlc_h2_frame* %8)
  %10 = load i64, i64* @VLC_H2_FRAME_DATA, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  %15 = call i64 @vlc_h2_frame_length(%struct.vlc_h2_frame* %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  %17 = call i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame* %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  %19 = call i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @VLC_H2_DATA_PADDED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = icmp uge i64 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = add i32 1, %31
  %33 = zext i32 %32 to i64
  %34 = icmp uge i64 %28, %33
  br label %35

35:                                               ; preds = %27, %24
  %36 = phi i1 [ false, %24 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %7, align 8
  %41 = load i32, i32* %39, align 4
  %42 = add i32 1, %41
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %35, %2
  %47 = load i64, i64* %5, align 8
  %48 = load i64*, i64** %4, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32*, i32** %7, align 8
  ret i32* %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_h2_frame_type(%struct.vlc_h2_frame*) #1

declare dso_local i64 @vlc_h2_frame_length(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_h2_frame_flags(%struct.vlc_h2_frame*) #1

declare dso_local i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
