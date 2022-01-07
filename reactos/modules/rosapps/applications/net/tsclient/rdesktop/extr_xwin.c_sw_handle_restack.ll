; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_sw_handle_restack.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_sw_handle_restack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*)* @sw_handle_restack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_handle_restack(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @RootWindowOfScreen(i32 %18)
  %20 = call i32 @XQueryTree(i32 %14, i32 %19, i64* %6, i64* %7, i64** %8, i32* %9)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %2
  br label %120

27:                                               ; preds = %23
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %11, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i64*, i64** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %117

45:                                               ; preds = %38
  br label %28

46:                                               ; preds = %28
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %65, %46
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call %struct.TYPE_12__* @sw_get_window_by_wnd(%struct.TYPE_13__* %54, i64 %59)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %11, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %62 = icmp ne %struct.TYPE_12__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %68

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %49

68:                                               ; preds = %63, %49
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %117

77:                                               ; preds = %71, %68
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %79 = icmp ne %struct.TYPE_12__* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %117

89:                                               ; preds = %80, %77
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = icmp ne %struct.TYPE_12__* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @seamless_send_zchange(%struct.TYPE_13__* %93, i64 %96, i64 %99, i32 0)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @sw_restack_window(%struct.TYPE_13__* %101, %struct.TYPE_12__* %102, i64 %105)
  br label %116

107:                                              ; preds = %89
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @seamless_send_zchange(%struct.TYPE_13__* %108, i64 %111, i64 0, i32 0)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = call i32 @sw_restack_window(%struct.TYPE_13__* %113, %struct.TYPE_12__* %114, i64 0)
  br label %116

116:                                              ; preds = %107, %92
  br label %117

117:                                              ; preds = %116, %88, %76, %44
  %118 = load i64*, i64** %8, align 8
  %119 = call i32 @XFree(i64* %118)
  br label %120

120:                                              ; preds = %117, %26
  ret void
}

declare dso_local i32 @XQueryTree(i32, i32, i64*, i64*, i64**, i32*) #1

declare dso_local i32 @RootWindowOfScreen(i32) #1

declare dso_local %struct.TYPE_12__* @sw_get_window_by_wnd(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @seamless_send_zchange(%struct.TYPE_13__*, i64, i64, i32) #1

declare dso_local i32 @sw_restack_window(%struct.TYPE_13__*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @XFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
