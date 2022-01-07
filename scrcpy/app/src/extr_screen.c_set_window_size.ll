; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_screen.c_set_window_size.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_screen.c_set_window_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32, %struct.size, i64 }
%struct.size = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen*, i64)* @set_window_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_window_size(%struct.screen* %0, i64 %1) #0 {
  %3 = alloca %struct.size, align 4
  %4 = alloca %struct.screen*, align 8
  %5 = bitcast %struct.size* %3 to i64*
  store i64 %1, i64* %5, align 4
  store %struct.screen* %0, %struct.screen** %4, align 8
  %6 = load %struct.screen*, %struct.screen** %4, align 8
  %7 = getelementptr inbounds %struct.screen, %struct.screen* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.screen*, %struct.screen** %4, align 8
  %12 = getelementptr inbounds %struct.screen, %struct.screen* %11, i32 0, i32 1
  %13 = bitcast %struct.size* %12 to i8*
  %14 = bitcast %struct.size* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.screen*, %struct.screen** %4, align 8
  %17 = getelementptr inbounds %struct.screen, %struct.screen* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.size, %struct.size* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.size, %struct.size* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SDL_SetWindowSize(i32 %18, i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SDL_SetWindowSize(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
