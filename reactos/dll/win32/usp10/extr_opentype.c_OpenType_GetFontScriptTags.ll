; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_OpenType_GetFontScriptTags.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_OpenType_GetFontScriptTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@USP_E_SCRIPT_NOT_IN_FONT = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpenType_GetFontScriptTags(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @S_OK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = call i32 @_initialize_script_cache(%struct.TYPE_9__* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %11, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %5
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.TYPE_10__* @usp10_script_cache_get_script(%struct.TYPE_9__* %25, i32 %26)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %13, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @USP_E_SCRIPT_NOT_IN_FONT, align 4
  store i32 %30, i32* %6, align 4
  br label %73

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @S_OK, align 4
  store i32 %37, i32* %6, align 4
  br label %73

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @min(i32 %46, i32 %49)
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %68, %45
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %31, %29
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @_initialize_script_cache(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @usp10_script_cache_get_script(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
