; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_string.c_msi_add_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_string.c_msi_add_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@StringPersistent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s, n = %d len = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_add_string(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %104

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @strlenW(i32* %19)
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %104

30:                                               ; preds = %26, %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @msi_string2id(%struct.TYPE_8__* %31, i32* %32, i32 %33, i64* %10)
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @StringPersistent, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %59

50:                                               ; preds = %37
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %50, %41
  %60 = load i64, i64* %10, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %104

62:                                               ; preds = %30
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = call i64 @st_find_free_entry(%struct.TYPE_8__* %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %104

68:                                               ; preds = %62
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @debugstr_wn(i32* %69, i32 %70)
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %71, i64 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i64* @msi_alloc(i32 %79)
  store i64* %80, i64** %11, align 8
  %81 = load i64*, i64** %11, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %104

84:                                               ; preds = %68
  %85 = load i64*, i64** %11, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memcpy(i64* %85, i32* %86, i32 %90)
  %92 = load i64*, i64** %11, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @set_st_entry(%struct.TYPE_8__* %96, i64 %97, i64* %98, i32 %99, i32 1, i32 %100)
  %102 = load i64, i64* %10, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %84, %83, %67, %59, %29, %14
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i64 @msi_string2id(%struct.TYPE_8__*, i32*, i32, i64*) #1

declare dso_local i64 @st_find_free_entry(%struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*, i32, i64, i32) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @set_st_entry(%struct.TYPE_8__*, i64, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
