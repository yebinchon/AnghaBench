; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_Decode_G0.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_Decode_G0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CEA708_STATUS_OK = common dso_local global i32 0, align 4
@CEA708_STATUS_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*)* @CEA708_Decode_G0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CEA708_Decode_G0(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32* %10, i32** %6, align 8
  %11 = call i32 (...) @POP_COMMAND()
  %12 = load i32, i32* @CEA708_STATUS_OK, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %67

21:                                               ; preds = %2
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 127
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 226, i32* %30, align 16
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 153, i32* %31, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 170, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %21
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @CEA708_Window_Write(i32* %34, %struct.TYPE_6__* %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i64 @CEA708_Window_BreaksSpace(%struct.TYPE_6__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @CEA708_STATUS_OUTPUT, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %46, %41, %33
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %56, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @POP_COMMAND(...) #1

declare dso_local i32 @CEA708_Window_Write(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @CEA708_Window_BreaksSpace(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
