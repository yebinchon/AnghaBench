; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_mode_free.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_mode_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dmenu_mode_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmenu_mode_free(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @mode_get_private_data(i32* %5)
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %120

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @mode_get_private_data(i32* %10)
  %12 = bitcast i32* %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %120

15:                                               ; preds = %9
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @g_input_stream_is_closed(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @g_cancellable_cancel(i64 %34)
  br label %36

36:                                               ; preds = %31, %25, %20
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @g_cancellable_disconnect(i64 %39, i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @g_object_unref(i64 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @g_object_unref(i64 %55)
  br label %57

57:                                               ; preds = %48, %36
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @g_object_unref(i64 %60)
  br label %62

62:                                               ; preds = %57, %15
  store i64 0, i64* %4, align 8
  br label %63

63:                                               ; preds = %96, %62
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %63
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = icmp ne %struct.TYPE_3__* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %69
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = call i32 @g_free(%struct.TYPE_3__* %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = call i32 @g_free(%struct.TYPE_3__* %93)
  br label %95

95:                                               ; preds = %78, %69
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %4, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %4, align 8
  br label %63

99:                                               ; preds = %63
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = call i32 @g_free(%struct.TYPE_3__* %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = call i32 @g_free(%struct.TYPE_3__* %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = call i32 @g_free(%struct.TYPE_3__* %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = call i32 @g_free(%struct.TYPE_3__* %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = call i32 @g_free(%struct.TYPE_3__* %116)
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @mode_set_private_data(i32* %118, i32* null)
  br label %120

120:                                              ; preds = %8, %99, %9
  ret void
}

declare dso_local i32* @mode_get_private_data(i32*) #1

declare dso_local i32 @g_input_stream_is_closed(i64) #1

declare dso_local i32 @g_cancellable_cancel(i64) #1

declare dso_local i32 @g_cancellable_disconnect(i64, i32) #1

declare dso_local i32 @g_object_unref(i64) #1

declare dso_local i32 @g_free(%struct.TYPE_3__*) #1

declare dso_local i32 @mode_set_private_data(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
