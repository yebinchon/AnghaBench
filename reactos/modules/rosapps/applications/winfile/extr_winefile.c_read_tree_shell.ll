; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_read_tree_shell.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_read_tree_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32, i64, i32*, %struct.TYPE_20__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }

@IDC_WAIT = common dso_local global i64 0, align 8
@ET_SHELL = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@IID_IShellFolder = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32)* @read_tree_shell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @read_tree_shell(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %9, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %11, align 8
  store i32* null, i32** %13, align 8
  %19 = load i64, i64* @IDC_WAIT, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @LoadCursorW(i32 0, i32 %20)
  %22 = call i32 @SetCursor(i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* @ET_SHELL, align 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @Globals, i32 0, i32 1), align 8
  store i32* %26, i32** %12, align 8
  br label %27

27:                                               ; preds = %96, %4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %29 = icmp ne %struct.TYPE_21__* %28, null
  br i1 %29, label %30, label %107

30:                                               ; preds = %27
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 3
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %33, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %107

43:                                               ; preds = %30
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @Globals, i32 0, i32 0), align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 4
  %50 = call %struct.TYPE_20__* @IMalloc_Alloc(i32 %44, i64 %49)
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %11, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @memcpy(%struct.TYPE_20__* %51, %struct.TYPE_20__* %52, i64 %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %59 = ptrtoint %struct.TYPE_20__* %58 to i64
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %59, %63
  %65 = inttoptr i64 %64 to %struct.TYPE_20__*
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %70 = bitcast i32** %13 to i8**
  %71 = call i32 @IShellFolder_BindToObject(i32* %68, %struct.TYPE_20__* %69, i32 0, i32* @IID_IShellFolder, i8** %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i64 @FAILED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %43
  br label %107

76:                                               ; preds = %43
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @read_directory(%struct.TYPE_21__* %77, i32* null, i32 %78, i32 %79)
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i32, i32* @TRUE, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %76
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %92 = call %struct.TYPE_21__* @find_entry_shell(%struct.TYPE_21__* %90, %struct.TYPE_20__* %91)
  store %struct.TYPE_21__* %92, %struct.TYPE_21__** %10, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %94 = icmp ne %struct.TYPE_21__* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  br label %107

96:                                               ; preds = %89
  %97 = load i32*, i32** %13, align 8
  store i32* %97, i32** %12, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %9, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %100 = ptrtoint %struct.TYPE_20__* %99 to i64
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %100, %104
  %106 = inttoptr i64 %105 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %6, align 8
  br label %27

107:                                              ; preds = %95, %75, %42, %27
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @SetCursor(i32 %108)
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  ret %struct.TYPE_21__* %110
}

declare dso_local i32 @SetCursor(i32) #1

declare dso_local i32 @LoadCursorW(i32, i32) #1

declare dso_local %struct.TYPE_20__* @IMalloc_Alloc(i32, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__*, %struct.TYPE_20__*, i64) #1

declare dso_local i32 @IShellFolder_BindToObject(i32*, %struct.TYPE_20__*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @read_directory(%struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @find_entry_shell(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
