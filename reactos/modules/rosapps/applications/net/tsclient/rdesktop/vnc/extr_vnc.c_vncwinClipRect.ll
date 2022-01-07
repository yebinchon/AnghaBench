; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_vncwinClipRect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_vncwinClipRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@clipX = common dso_local global i32 0, align 4
@clipW = common dso_local global i32 0, align 4
@clipY = common dso_local global i32 0, align 4
@clipH = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vncwinClipRect(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %10, %12
  %14 = load i32, i32* @clipX, align 4
  %15 = load i32, i32* @clipW, align 4
  %16 = add nsw i32 %14, %15
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i32, i32* @clipX, align 4
  %20 = load i32, i32* @clipW, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %21, %23
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %28, %30
  %32 = load i32, i32* @clipY, align 4
  %33 = load i32, i32* @clipH, align 4
  %34 = add nsw i32 %32, %33
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load i32, i32* @clipY, align 4
  %38 = load i32, i32* @clipH, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %39, %41
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %26
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @clipX, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32, i32* @clipX, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %50, %52
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @clipX, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %49, %44
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @clipY, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32, i32* @clipY, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %65, %67
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, %68
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @clipY, align 4
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %64, %59
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %74
  %83 = load i32*, i32** %8, align 8
  store i32 0, i32* %83, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @server, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @server, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br label %107

107:                                              ; preds = %100, %93, %89, %85
  %108 = phi i1 [ false, %93 ], [ false, %89 ], [ false, %85 ], [ %106, %100 ]
  %109 = zext i1 %108 to i32
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
