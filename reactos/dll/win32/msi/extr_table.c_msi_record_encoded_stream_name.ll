; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_record_encoded_stream_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_record_encoded_stream_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@MSITYPE_KEY = common dso_local global i32 0, align 4
@szDot = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32*, i32**)* @msi_record_encoded_stream_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_record_encoded_stream_name(%struct.TYPE_6__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %14, i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @lstrlenW(i32* %19)
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32* @msi_alloc(i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %30, i64* %13, align 8
  br label %106

31:                                               ; preds = %3
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @lstrcpyW(i32* %32, i32* %35)
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %95, %31
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MSITYPE_KEY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %43
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, 1
  %58 = call i32* @msi_dup_record_field(i32* %55, i64 %57)
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %62, i64* %13, align 8
  br label %106

63:                                               ; preds = %54
  %64 = load i32*, i32** @szDot, align 8
  %65 = call i32 @lstrlenW(i32* %64)
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @lstrlenW(i32* %66)
  %68 = add nsw i32 %65, %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32* @msi_realloc(i32* %71, i32 %75)
  store i32* %76, i32** %10, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %63
  %80 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %80, i64* %13, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @msi_free(i32* %81)
  br label %106

83:                                               ; preds = %63
  %84 = load i32*, i32** %10, align 8
  store i32* %84, i32** %8, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** @szDot, align 8
  %87 = call i32 @lstrcatW(i32* %85, i32* %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @lstrcatW(i32* %88, i32* %89)
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @msi_free(i32* %91)
  br label %94

93:                                               ; preds = %43
  br label %95

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %93
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %37

98:                                               ; preds = %37
  %99 = load i32, i32* @FALSE, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = call i32* @encode_streamname(i32 %99, i32* %100)
  %102 = load i32**, i32*** %7, align 8
  store i32* %101, i32** %102, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @msi_free(i32* %103)
  %105 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %105, i64* %4, align 8
  br label %111

106:                                              ; preds = %79, %61, %29
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @msi_free(i32* %107)
  %109 = load i32**, i32*** %7, align 8
  store i32* null, i32** %109, align 8
  %110 = load i64, i64* %13, align 8
  store i64 %110, i64* %4, align 8
  br label %111

111:                                              ; preds = %106, %98
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @lstrcpyW(i32*, i32*) #1

declare dso_local i32* @msi_dup_record_field(i32*, i64) #1

declare dso_local i32* @msi_realloc(i32*, i32) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @lstrcatW(i32*, i32*) #1

declare dso_local i32* @encode_streamname(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
