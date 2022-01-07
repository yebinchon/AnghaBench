; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_group.c_group_send_audio.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_group.c_group_send_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @group_send_audio(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca [1024 x i32], align 16
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.TYPE_4__* @group_get_object(i32* %17, i32 %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %14, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %101

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %101

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 8000
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 12000
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 16000
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 24000
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 48000
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %7, align 4
  br label %101

46:                                               ; preds = %42, %39, %36, %33, %30
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %57, %51, %46
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 32000, i32* %74, align 4
  br label %78

75:                                               ; preds = %63
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i32 64000, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %80 = call i32 @recreate_encoder(%struct.TYPE_4__* %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 -1, i32* %7, align 4
  br label %101

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %57
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  %91 = call i64 @opus_encode(i32 %87, i32* %88, i32 %89, i32* %90, i32 4096)
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store i32 -1, i32* %7, align 4
  br label %101

95:                                               ; preds = %84
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @send_audio_packet(i32* %96, i32 %97, i32* %98, i64 %99)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %95, %94, %82, %45, %29, %22
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_4__* @group_get_object(i32*, i32) #1

declare dso_local i32 @recreate_encoder(%struct.TYPE_4__*) #1

declare dso_local i64 @opus_encode(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @send_audio_packet(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
