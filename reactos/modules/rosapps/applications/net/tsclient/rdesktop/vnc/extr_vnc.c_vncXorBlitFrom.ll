; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_vncXorBlitFrom.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_vncXorBlitFrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@frameBuffer = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vncXorBlitFrom(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_6__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = call i32 (...) @vncHideCursor()
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %18, align 4
  br label %25

25:                                               ; preds = %95, %8
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %98

31:                                               ; preds = %25
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %18, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %19, align 4
  br label %37

37:                                               ; preds = %43, %31
  %38 = load i32, i32* %19, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %19, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %19, align 4
  br label %37

49:                                               ; preds = %37
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %91, %49
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %51
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %22, align 4
  br label %63

63:                                               ; preds = %69, %57
  %64 = load i32, i32* %22, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %22, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %22, align 4
  br label %63

75:                                               ; preds = %63
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %19, align 4
  %79 = call i32 @GETPIXEL(%struct.TYPE_6__* %76, i32 %77, i32 %78)
  store i32 %79, i32* %20, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frameBuffer, align 8
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @GETPIXEL(%struct.TYPE_6__* %80, i32 %81, i32 %82)
  store i32 %83, i32* %21, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frameBuffer, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %21, align 4
  %89 = xor i32 %87, %88
  %90 = call i32 @SETPIXEL(%struct.TYPE_6__* %84, i32 %85, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  br label %51

94:                                               ; preds = %51
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %25

98:                                               ; preds = %25
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @rfbMarkRectAsModified(i32 %99, i32 %100, i32 %101, i32 %104, i32 %107)
  ret void
}

declare dso_local i32 @vncHideCursor(...) #1

declare dso_local i32 @GETPIXEL(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @SETPIXEL(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @rfbMarkRectAsModified(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
