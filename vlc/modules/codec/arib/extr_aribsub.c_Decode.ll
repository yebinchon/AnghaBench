; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/arib/extr_aribsub.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/arib/extr_aribsub.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_12__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %16, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = call i32 @block_Release(%struct.TYPE_12__* %25)
  %27 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %17
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @arib_get_parser(i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @arib_get_decoder(i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %28
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @arib_parse_pes(i32* %43, i32 %46, i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = call i32* @render(%struct.TYPE_10__* %51, i32* %52, i32* %53, %struct.TYPE_12__* %54)
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %42
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @decoder_QueueSub(%struct.TYPE_10__* %59, i32* %60)
  br label %62

62:                                               ; preds = %58, %42
  br label %63

63:                                               ; preds = %62, %39, %28
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = call i32 @block_Release(%struct.TYPE_12__* %64)
  %66 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %24, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @block_Release(%struct.TYPE_12__*) #1

declare dso_local i32* @arib_get_parser(i32) #1

declare dso_local i32* @arib_get_decoder(i32) #1

declare dso_local i32 @arib_parse_pes(i32*, i32, i32) #1

declare dso_local i32* @render(%struct.TYPE_10__*, i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @decoder_QueueSub(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
