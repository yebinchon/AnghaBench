; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_create_cursor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_create_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ui_create_cursor(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = call i64 @xmalloc(i32 24)
  %17 = inttoptr i64 %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %13, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %19 = call i32 @memset(%struct.TYPE_3__* %18, i32 0, i32 24)
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %72, %6
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %35, label %75

35:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %68, %35
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %39, label %71

39:                                               ; preds = %36
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i64 @is_pixel_on(i32* %40, i32 %41, i32 %42, i32 32, i32 1)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 31, %50
  %52 = call i32 @set_pixel_on(i32 %48, i32 %49, i32 %51, i32 32, i32 8, i32 255)
  br label %53

53:                                               ; preds = %45, %39
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i64 @is_pixel_on(i32* %54, i32 %55, i32 %56, i32 32, i32 24)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sub nsw i32 31, %64
  %66 = call i32 @set_pixel_on(i32 %62, i32 %63, i32 %65, i32 32, i32 8, i32 255)
  br label %67

67:                                               ; preds = %59, %53
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %36

71:                                               ; preds = %36
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %32

75:                                               ; preds = %32
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %77 = bitcast %struct.TYPE_3__* %76 to i8*
  ret i8* %77
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @is_pixel_on(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @set_pixel_on(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
