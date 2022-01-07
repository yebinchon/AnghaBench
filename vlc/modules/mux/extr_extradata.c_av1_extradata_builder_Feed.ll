; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_extradata.c_av1_extradata_builder_Feed.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_extradata.c_av1_extradata_builder_Feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@AV1_OBU_SEQUENCE_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64)* @av1_extradata_builder_Feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @av1_extradata_builder_Feed(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %47

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @AV1_OBU_iterator_init(i32* %7, i32* %18, i64 %19)
  br label %21

21:                                               ; preds = %30, %17
  %22 = call i64 @AV1_OBU_iterate_next(i32* %7, i32** %8, i64* %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @AV1_OBUGetType(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @AV1_OBU_SEQUENCE_HEADER, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %21

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32* @AV1_OBU_parse_sequence_header(i32* %32, i64 %33)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @AV1_create_DecoderConfigurationRecord(i32* %39, i32* %40, i32 1, i32** %8, i64* %9)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @AV1_release_sequence_header(i32* %44)
  br label %46

46:                                               ; preds = %37, %31
  br label %47

47:                                               ; preds = %16, %46, %21
  ret void
}

declare dso_local i32 @AV1_OBU_iterator_init(i32*, i32*, i64) #1

declare dso_local i64 @AV1_OBU_iterate_next(i32*, i32**, i64*) #1

declare dso_local i32 @AV1_OBUGetType(i32*) #1

declare dso_local i32* @AV1_OBU_parse_sequence_header(i32*, i64) #1

declare dso_local i64 @AV1_create_DecoderConfigurationRecord(i32*, i32*, i32, i32**, i64*) #1

declare dso_local i32 @AV1_release_sequence_header(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
