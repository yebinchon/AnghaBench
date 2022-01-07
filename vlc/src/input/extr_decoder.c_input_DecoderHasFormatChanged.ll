; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderHasFormatChanged.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderHasFormatChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i64, i32, i32 }

@memory_order_acquire = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_DecoderHasFormatChanged(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.decoder_owner*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.decoder_owner* @dec_get_owner(i32* %9)
  store %struct.decoder_owner* %10, %struct.decoder_owner** %8, align 8
  %11 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %12 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %11, i32 0, i32 3
  %13 = load i32, i32* @memory_order_acquire, align 4
  %14 = call i32 @atomic_exchange_explicit(i32* %12, i32 0, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %19 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %18, i32 0, i32 0
  %20 = call i32 @vlc_mutex_lock(i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %26 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %25, i32 0, i32 2
  %27 = call i32 @es_format_Copy(i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load i32**, i32*** %7, align 8
  %30 = icmp ne i32** %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i32**, i32*** %7, align 8
  store i32* null, i32** %32, align 8
  %33 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %34 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = call i32* (...) @vlc_meta_New()
  %39 = load i32**, i32*** %7, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32**, i32*** %7, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %47 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @vlc_meta_Merge(i32* %45, i64 %48)
  br label %50

50:                                               ; preds = %43, %37
  br label %51

51:                                               ; preds = %50, %31
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %54 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %53, i32 0, i32 0
  %55 = call i32 @vlc_mutex_unlock(i32* %54)
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @atomic_exchange_explicit(i32*, i32, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @es_format_Copy(i32*, i32*) #1

declare dso_local i32* @vlc_meta_New(...) #1

declare dso_local i32 @vlc_meta_Merge(i32*, i64) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
