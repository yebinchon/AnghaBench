; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_vncTransBlitFrom.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_vncTransBlitFrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@frameBuffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vncTransBlitFrom(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_4__* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %24 = call i32 (...) @vncHideCursor()
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %20, align 4
  br label %26

26:                                               ; preds = %95, %9
  %27 = load i32, i32* %20, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %98

32:                                               ; preds = %26
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %20, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %12, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %21, align 4
  br label %38

38:                                               ; preds = %44, %32
  %39 = load i32, i32* %21, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %21, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %21, align 4
  br label %38

50:                                               ; preds = %38
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %19, align 4
  br label %52

52:                                               ; preds = %91, %50
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %54, %55
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %52
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %19, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %23, align 4
  br label %64

64:                                               ; preds = %70, %58
  %65 = load i32, i32* %23, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %23, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %23, align 4
  br label %64

76:                                               ; preds = %64
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %78 = load i32, i32* %23, align 4
  %79 = load i32, i32* %21, align 4
  %80 = call i32 @GETPIXEL(%struct.TYPE_4__* %77, i32 %78, i32 %79)
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %22, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32, i32* @frameBuffer, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %22, align 4
  %89 = call i32 @SETPIXEL(i32 %85, i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %76
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %19, align 4
  br label %52

94:                                               ; preds = %52
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %20, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %20, align 4
  br label %26

98:                                               ; preds = %26
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @rfbMarkRectAsModified(i32 %99, i32 %100, i32 %101, i32 %104, i32 %107)
  ret void
}

declare dso_local i32 @vncHideCursor(...) #1

declare dso_local i32 @GETPIXEL(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @SETPIXEL(i32, i32, i32, i32) #1

declare dso_local i32 @rfbMarkRectAsModified(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
