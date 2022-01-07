; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_read_tree_win.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_read_tree_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }

@MAX_PATH = common dso_local global i32 0, align 4
@IDC_WAIT = common dso_local global i64 0, align 8
@ET_WINDOWS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_8__*, i8*, i32, i32)* @read_tree_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @read_tree_win(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %11, align 8
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %12, align 8
  store i8* %18, i8** %13, align 8
  %22 = load i64, i64* @IDC_WAIT, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @LoadCursorW(i32 0, i8* %23)
  %25 = call i32 @SetCursor(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @ET_WINDOWS, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %93, %4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %97

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i8*, i8** %12, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 92
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 47
  br label %48

48:                                               ; preds = %43, %38, %33
  %49 = phi i1 [ false, %38 ], [ false, %33 ], [ %47, %43 ]
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %12, align 8
  %53 = load i8, i8* %51, align 1
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %13, align 8
  store i8 %53, i8* %54, align 1
  br label %33

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i8*, i8** %12, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 92
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %12, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 47
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ true, %57 ], [ %66, %62 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %12, align 8
  br label %57

72:                                               ; preds = %67
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %13, align 8
  store i8 92, i8* %73, align 1
  %75 = load i8*, i8** %13, align 8
  store i8 0, i8* %75, align 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @read_directory(%struct.TYPE_9__* %76, i8* %18, i32 %77, i32 %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load i32, i32* @TRUE, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %72
  %89 = load i8*, i8** %12, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  br label %97

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call %struct.TYPE_9__* @find_entry_win(%struct.TYPE_9__* %94, i8* %95)
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %11, align 8
  br label %29

97:                                               ; preds = %92, %29
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @SetCursor(i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %101 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %101)
  ret %struct.TYPE_9__* %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetCursor(i32) #2

declare dso_local i32 @LoadCursorW(i32, i8*) #2

declare dso_local i32 @read_directory(%struct.TYPE_9__*, i8*, i32, i32) #2

declare dso_local %struct.TYPE_9__* @find_entry_win(%struct.TYPE_9__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
