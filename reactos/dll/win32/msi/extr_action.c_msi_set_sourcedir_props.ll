; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_msi_set_sourcedir_props.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_msi_set_sourcedir_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@szOriginalDatabase = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@szSourceDir = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@szSOURCEDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_set_sourcedir_props(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @szOriginalDatabase, align 4
  %16 = call i32* @msi_dup_property(i32 %14, i32 %15)
  store i32* %16, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %19, i64* %3, align 8
  br label %103

20:                                               ; preds = %2
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @strrchrW(i32* %21, i8 signext 92)
  store i32* %22, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @strrchrW(i32* %25, i8 signext 47)
  store i32* %26, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @msi_free(i32* %29)
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %31, i64* %3, align 8
  br label %103

32:                                               ; preds = %24, %20
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = add nsw i64 %38, 2
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32* @msi_alloc(i32 %44)
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @lstrcpynW(i32* %46, i32* %47, i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @msi_free(i32* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @szSourceDir, align 4
  %56 = call i32* @msi_dup_property(i32 %54, i32 %55)
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %32
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59, %32
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @szSourceDir, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @msi_set_property(i32 %65, i32 %66, i32* %67, i32 -1)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @msi_reset_folders(%struct.TYPE_4__* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %62
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @msi_free(i32* %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @szSOURCEDIR, align 4
  %84 = call i32* @msi_dup_property(i32 %82, i32 %83)
  store i32* %84, i32** %7, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i64, i64* %5, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87, %77
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @szSOURCEDIR, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = call i64 @msi_set_property(i32 %93, i32 %94, i32* %95, i32 -1)
  br label %97

97:                                               ; preds = %90, %87
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @msi_free(i32* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @msi_free(i32* %100)
  %102 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %102, i64* %3, align 8
  br label %103

103:                                              ; preds = %97, %28, %18
  %104 = load i64, i64* %3, align 8
  ret i64 %104
}

declare dso_local i32* @msi_dup_property(i32, i32) #1

declare dso_local i32* @strrchrW(i32*, i8 signext) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @lstrcpynW(i32*, i32*, i32) #1

declare dso_local i64 @msi_set_property(i32, i32, i32*, i32) #1

declare dso_local i32 @msi_reset_folders(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
