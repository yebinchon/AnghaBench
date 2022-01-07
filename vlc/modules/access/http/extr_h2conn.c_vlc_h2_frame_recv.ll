; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn.c_vlc_h2_frame_recv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn.c_vlc_h2_frame_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i32*, i32* }
%struct.vlc_tls = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_h2_frame* (%struct.vlc_tls*)* @vlc_h2_frame_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_h2_frame* @vlc_h2_frame_recv(%struct.vlc_tls* %0) #0 {
  %2 = alloca %struct.vlc_h2_frame*, align 8
  %3 = alloca %struct.vlc_tls*, align 8
  %4 = alloca [9 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_h2_frame*, align 8
  store %struct.vlc_tls* %0, %struct.vlc_tls** %3, align 8
  %8 = load %struct.vlc_tls*, %struct.vlc_tls** %3, align 8
  %9 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %10 = call i32 @vlc_https_recv(%struct.vlc_tls* %8, i32* %9, i32 9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.vlc_h2_frame* null, %struct.vlc_h2_frame** %2, align 8
  br label %72

14:                                               ; preds = %1
  %15 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = shl i32 %16, 16
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = or i32 %17, %20
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 2
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %21, %23
  %25 = add nsw i32 9, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 16, %27
  %29 = trunc i64 %28 to i32
  %30 = call %struct.vlc_h2_frame* @malloc(i32 %29)
  store %struct.vlc_h2_frame* %30, %struct.vlc_h2_frame** %7, align 8
  %31 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %32 = icmp eq %struct.vlc_h2_frame* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  store %struct.vlc_h2_frame* null, %struct.vlc_h2_frame** %2, align 8
  br label %72

37:                                               ; preds = %14
  %38 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %39 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %41 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @memcpy(i32* %42, i32* %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %37
  %52 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %53 = call i32 @vlc_cleanup_push(i32 (%struct.vlc_h2_frame*)* @free, %struct.vlc_h2_frame* %52)
  %54 = load %struct.vlc_tls*, %struct.vlc_tls** %3, align 8
  %55 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %56 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @vlc_https_recv(%struct.vlc_tls* %54, i32* %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %67 = call i32 @free(%struct.vlc_h2_frame* %66)
  store %struct.vlc_h2_frame* null, %struct.vlc_h2_frame** %7, align 8
  br label %68

68:                                               ; preds = %65, %51
  %69 = call i32 (...) @vlc_cleanup_pop()
  br label %70

70:                                               ; preds = %68, %37
  %71 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  store %struct.vlc_h2_frame* %71, %struct.vlc_h2_frame** %2, align 8
  br label %72

72:                                               ; preds = %70, %36, %13
  %73 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %2, align 8
  ret %struct.vlc_h2_frame* %73
}

declare dso_local i32 @vlc_https_recv(%struct.vlc_tls*, i32*, i32) #1

declare dso_local %struct.vlc_h2_frame* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vlc_cleanup_push(i32 (%struct.vlc_h2_frame*)*, %struct.vlc_h2_frame*) #1

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
