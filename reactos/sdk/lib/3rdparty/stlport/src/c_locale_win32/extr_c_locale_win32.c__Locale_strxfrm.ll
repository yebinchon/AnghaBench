; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_strxfrm.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_strxfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@LCMAP_SORTKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_Locale_strxfrm(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* @INT_MAX, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @_STLP_STRNCPY(i8* %22, i64 %23, i8* %24, i64 %25)
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i64, i64* %11, align 8
  store i64 %28, i64* %6, align 8
  br label %96

29:                                               ; preds = %5
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @INT_MAX, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @INT_MAX, align 8
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @__GetDefaultCP(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @atoi(i32 %43)
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %35
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @LCMAP_SORTKEY, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @LCMapStringA(i32 %50, i32 %51, i8* %52, i32 %54, i8* %55, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %86

59:                                               ; preds = %35
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @atoi(i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @__GetDefaultCP(i32 %67)
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i8* @__ConvertToCP(i64 %63, i64 %68, i8* %69, i64 %70, i64* %14)
  store i8* %71, i8** %13, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @LCMAP_SORTKEY, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @LCMapStringA(i32 %75, i32 %76, i8* %77, i32 %79, i8* %80, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %59, %46
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %90, 1
  br label %93

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi i32 [ %91, %89 ], [ 0, %92 ]
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %93, %27
  %97 = load i64, i64* %6, align 8
  ret i64 %97
}

declare dso_local i32 @_STLP_STRNCPY(i8*, i64, i8*, i64) #1

declare dso_local i64 @__GetDefaultCP(i32) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @LCMapStringA(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i8* @__ConvertToCP(i64, i64, i8*, i64, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
