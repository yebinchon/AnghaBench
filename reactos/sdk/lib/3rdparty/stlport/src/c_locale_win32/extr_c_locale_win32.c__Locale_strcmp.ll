; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_strcmp.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@CSTR_EQUAL = common dso_local global i32 0, align 4
@CSTR_LESS_THAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Locale_strcmp(%struct.TYPE_6__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @__GetDefaultCP(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @atoi(i32 %23)
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @_Locale_strcmp_auxA(%struct.TYPE_6__* %27, i8* %28, i64 %29, i8* %30, i64 %31)
  store i32 %32, i32* %11, align 4
  br label %68

33:                                               ; preds = %5
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @atoi(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @__GetDefaultCP(i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i8* @__ConvertToCP(i64 %37, i64 %42, i8* %43, i64 %44, i64* %14)
  store i8* %45, i8** %12, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @atoi(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @__GetDefaultCP(i32 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i8* @__ConvertToCP(i64 %49, i64 %54, i8* %55, i64 %56, i64* %15)
  store i8* %57, i8** %13, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @_Locale_strcmp_auxA(%struct.TYPE_6__* %58, i8* %59, i64 %60, i8* %61, i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %33, %26
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @CSTR_EQUAL, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %79

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @CSTR_LESS_THAN, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 -1, i32 1
  br label %79

79:                                               ; preds = %73, %72
  %80 = phi i32 [ 0, %72 ], [ %78, %73 ]
  ret i32 %80
}

declare dso_local i64 @__GetDefaultCP(i32) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @_Locale_strcmp_auxA(%struct.TYPE_6__*, i8*, i64, i8*, i64) #1

declare dso_local i8* @__ConvertToCP(i64, i64, i8*, i64, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
