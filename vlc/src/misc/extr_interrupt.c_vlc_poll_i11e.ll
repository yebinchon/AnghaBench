; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_poll_i11e.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_poll_i11e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32 }

@vlc_interrupt_var = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_poll_i11e(%struct.pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pollfd*, align 8
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** @vlc_interrupt_var, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @poll(%struct.pollfd* %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %63

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %22, 255
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %10, align 8
  %32 = alloca %struct.pollfd, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  %33 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @vlc_poll_i11e_inner(%struct.pollfd* %33, i32 %34, i32 %35, i32* %36, %struct.pollfd* %32)
  store i32 %37, i32* %9, align 4
  %38 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %38)
  br label %61

39:                                               ; preds = %21
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  %42 = call %struct.pollfd* @vlc_alloc(i32 %41, i32 4)
  store %struct.pollfd* %42, %struct.pollfd** %12, align 8
  %43 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %44 = icmp eq %struct.pollfd* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %63

49:                                               ; preds = %39
  %50 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %51 = call i32 @vlc_cleanup_push(i32 (%struct.pollfd*)* @free, %struct.pollfd* %50)
  %52 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %57 = call i32 @vlc_poll_i11e_inner(%struct.pollfd* %52, i32 %53, i32 %54, i32* %55, %struct.pollfd* %56)
  store i32 %57, i32* %9, align 4
  %58 = call i32 (...) @vlc_cleanup_pop()
  %59 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %60 = call i32 @free(%struct.pollfd* %59)
  br label %61

61:                                               ; preds = %49, %27
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %48, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vlc_poll_i11e_inner(%struct.pollfd*, i32, i32, i32*, %struct.pollfd*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.pollfd* @vlc_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_cleanup_push(i32 (%struct.pollfd*)*, %struct.pollfd*) #1

declare dso_local i32 @free(%struct.pollfd*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
