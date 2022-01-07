; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_va.c_vlc_va_New.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_va.c_vlc_va_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_va_t = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"hw decoder\00", align 1
@vlc_va_Start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_va_t* @vlc_va_New(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32** %6) #0 {
  %8 = alloca %struct.vlc_va_t*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.vlc_va_t*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32** %6, i32*** %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call %struct.vlc_va_t* @vlc_object_create(i32* %17, i32 4)
  store %struct.vlc_va_t* %18, %struct.vlc_va_t** %16, align 8
  %19 = load %struct.vlc_va_t*, %struct.vlc_va_t** %16, align 8
  %20 = icmp eq %struct.vlc_va_t* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store %struct.vlc_va_t* null, %struct.vlc_va_t** %8, align 8
  br label %42

25:                                               ; preds = %7
  %26 = load %struct.vlc_va_t*, %struct.vlc_va_t** %16, align 8
  %27 = load i32, i32* @vlc_va_Start, align 4
  %28 = load %struct.vlc_va_t*, %struct.vlc_va_t** %16, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32**, i32*** %15, align 8
  %35 = call i32* @vlc_module_load(%struct.vlc_va_t* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 1, i32 %27, %struct.vlc_va_t* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32** %34)
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.vlc_va_t*, %struct.vlc_va_t** %16, align 8
  %39 = call i32 @vlc_object_delete(%struct.vlc_va_t* %38)
  store %struct.vlc_va_t* null, %struct.vlc_va_t** %16, align 8
  br label %40

40:                                               ; preds = %37, %25
  %41 = load %struct.vlc_va_t*, %struct.vlc_va_t** %16, align 8
  store %struct.vlc_va_t* %41, %struct.vlc_va_t** %8, align 8
  br label %42

42:                                               ; preds = %40, %24
  %43 = load %struct.vlc_va_t*, %struct.vlc_va_t** %8, align 8
  ret %struct.vlc_va_t* %43
}

declare dso_local %struct.vlc_va_t* @vlc_object_create(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @vlc_module_load(%struct.vlc_va_t*, i8*, i32*, i32, i32, %struct.vlc_va_t*, i32*, i32*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @vlc_object_delete(%struct.vlc_va_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
