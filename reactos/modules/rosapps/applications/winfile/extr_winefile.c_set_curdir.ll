; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_set_curdir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_set_curdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }

@MAX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32)* @set_curdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_curdir(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %84

19:                                               ; preds = %4
  %20 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %20, align 16
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %24, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  br label %35

33:                                               ; preds = %19
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi %struct.TYPE_13__* [ %32, %29 ], [ %34, %33 ]
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %35
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @scan_entry(%struct.TYPE_14__* %49, %struct.TYPE_13__* %50, i32 %51, i32 %52)
  br label %57

54:                                               ; preds = %35
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = call i32 @refresh_right_pane(%struct.TYPE_14__* %55)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = call i32 @get_path(%struct.TYPE_13__* %58, i8* %15)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @lstrcpyW(i32 %62, i8* %15)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @SetWindowTextW(i64 %71, i8* %15)
  br label %73

73:                                               ; preds = %68, %57
  %74 = getelementptr inbounds i8, i8* %15, i64 0
  %75 = load i8, i8* %74, align 16
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = call i64 @SetCurrentDirectoryW(i8* %15)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (...) @set_space_status()
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %73
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %83, %18
  %85 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %11, align 4
  switch i32 %86, label %88 [
    i32 0, label %87
    i32 1, label %87
  ]

87:                                               ; preds = %84, %84
  ret void

88:                                               ; preds = %84
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scan_entry(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @refresh_right_pane(%struct.TYPE_14__*) #2

declare dso_local i32 @get_path(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @lstrcpyW(i32, i8*) #2

declare dso_local i32 @SetWindowTextW(i64, i8*) #2

declare dso_local i64 @SetCurrentDirectoryW(i8*) #2

declare dso_local i32 @set_space_status(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
