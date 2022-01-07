; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_ParseTTML.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_ParseTTML.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64)* @ParseTTML to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ParseTTML(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32* @vlc_stream_MemoryNew(i32* %11, i32* %12, i64 %13, i32 1)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %51

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @xml_ReaderCreate(i32* %22, i32* %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @vlc_stream_Delete(i32* %31)
  store i32* null, i32** %4, align 8
  br label %51

33:                                               ; preds = %21
  store i32* null, i32** %10, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @ParseTTMLChunk(i32* %34, i32** %10)
  %36 = load i64, i64* @VLC_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @tt_node_RecursiveDelete(i32* %42)
  br label %44

44:                                               ; preds = %41, %38
  store i32* null, i32** %10, align 8
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @xml_ReaderDelete(i32* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @vlc_stream_Delete(i32* %48)
  %50 = load i32*, i32** %10, align 8
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %45, %30, %20
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i32* @vlc_stream_MemoryNew(i32*, i32*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @xml_ReaderCreate(i32*, i32*) #1

declare dso_local i32 @vlc_stream_Delete(i32*) #1

declare dso_local i64 @ParseTTMLChunk(i32*, i32**) #1

declare dso_local i32 @tt_node_RecursiveDelete(i32*) #1

declare dso_local i32 @xml_ReaderDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
