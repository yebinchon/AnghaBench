; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_picture.c_vlc_vdp_output_pool_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_picture.c_vlc_vdp_output_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_vdp_output_pool_create(i32* %0, i32 %1, i32* noalias %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %37, %4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @vlc_vdp_output_surface_create(i32* %24, i32 %25, i32* %26)
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %18, i64 %29
  store i32* %27, i32** %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %18, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %12, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %19

40:                                               ; preds = %36, %19
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32* null, i32** %5, align 8
  store i32 1, i32* %13, align 4
  br label %66

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = call i32* @picture_pool_New(i32 %45, i32** %18)
  store i32* %46, i32** %14, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = icmp eq i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %56, %52
  %54 = load i32, i32* %12, align 4
  %55 = icmp ugt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %18, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @picture_Release(i32* %61)
  br label %53

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %44
  %65 = load i32*, i32** %14, align 8
  store i32* %65, i32** %5, align 8
  store i32 1, i32* %13, align 4
  br label %66

66:                                               ; preds = %64, %43
  %67 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32*, i32** %5, align 8
  ret i32* %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @vlc_vdp_output_surface_create(i32*, i32, i32*) #2

declare dso_local i32* @picture_pool_New(i32, i32**) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @picture_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
