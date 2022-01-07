; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_dxva_blacklist.c_directx_va_canUseDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_dxva_blacklist.c_directx_va_canUseDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.decoders* }
%struct.decoders = type { i64, i64, i64, i32** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@gpu_blacklist = common dso_local global %struct.TYPE_8__* null, align 8
@BLAnyDriver = common dso_local global i64 0, align 8
@BLBelowBuild = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @directx_va_canUseDecoder(%struct.TYPE_7__* %0, i64 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.decoders*, align 8
  %14 = alloca i32**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %100

21:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %22

22:                                               ; preds = %96, %21
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gpu_blacklist, align 8
  %25 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %24)
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %99

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gpu_blacklist, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %27
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gpu_blacklist, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.decoders*, %struct.decoders** %39, align 8
  store %struct.decoders* %40, %struct.decoders** %13, align 8
  br label %41

41:                                               ; preds = %91, %35
  %42 = load %struct.decoders*, %struct.decoders** %13, align 8
  %43 = getelementptr inbounds %struct.decoders, %struct.decoders* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %41
  %47 = load %struct.decoders*, %struct.decoders** %13, align 8
  %48 = getelementptr inbounds %struct.decoders, %struct.decoders* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %46
  %53 = load %struct.decoders*, %struct.decoders** %13, align 8
  %54 = getelementptr inbounds %struct.decoders, %struct.decoders* %53, i32 0, i32 3
  %55 = load i32**, i32*** %54, align 8
  store i32** %55, i32*** %14, align 8
  br label %56

56:                                               ; preds = %87, %52
  %57 = load i32**, i32*** %14, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  %61 = load i32*, i32** %10, align 8
  %62 = load i32**, i32*** %14, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @IsEqualGUID(i32* %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %60
  %67 = load %struct.decoders*, %struct.decoders** %13, align 8
  %68 = getelementptr inbounds %struct.decoders, %struct.decoders* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BLAnyDriver, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %100

73:                                               ; preds = %66
  %74 = load %struct.decoders*, %struct.decoders** %13, align 8
  %75 = getelementptr inbounds %struct.decoders, %struct.decoders* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BLBelowBuild, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.decoders*, %struct.decoders** %13, align 8
  %82 = getelementptr inbounds %struct.decoders, %struct.decoders* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %100

86:                                               ; preds = %79, %73
  br label %90

87:                                               ; preds = %60
  %88 = load i32**, i32*** %14, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i32 1
  store i32** %89, i32*** %14, align 8
  br label %56

90:                                               ; preds = %86, %56
  store i32 1, i32* %6, align 4
  br label %100

91:                                               ; preds = %46
  %92 = load %struct.decoders*, %struct.decoders** %13, align 8
  %93 = getelementptr inbounds %struct.decoders, %struct.decoders* %92, i32 1
  store %struct.decoders* %93, %struct.decoders** %13, align 8
  br label %41

94:                                               ; preds = %41
  br label %99

95:                                               ; preds = %27
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %12, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %12, align 8
  br label %22

99:                                               ; preds = %94, %22
  store i32 1, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %90, %85, %72, %20
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
