; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-layer.c_clear_radio_group.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-layer.c_clear_radio_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Root/OCProperties/RBGroups\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32*)* @clear_radio_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_radio_group(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i32 @pdf_trailer(i32* %17, %struct.TYPE_8__* %18)
  %20 = call i32* @pdf_dict_getp(i32* %16, i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @pdf_array_len(i32* %21, i32* %22)
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %88, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32* @pdf_array_get(i32* %29, i32* %30, i32 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @pdf_array_contains(i32* %33, i32* %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %87

38:                                               ; preds = %28
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @pdf_array_len(i32* %39, i32* %40)
  store i32 %41, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %83, %38
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32* @pdf_array_get(i32* %47, i32* %48, i32 %49)
  store i32* %50, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %79, %46
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %51
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %15, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @pdf_objcmp_resolve(i32* %68, i32 %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %59
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %59
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %51

82:                                               ; preds = %51
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %42

86:                                               ; preds = %42
  br label %87

87:                                               ; preds = %86, %28
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %24

91:                                               ; preds = %24
  ret void
}

declare dso_local i32* @pdf_dict_getp(i32*, i32, i8*) #1

declare dso_local i32 @pdf_trailer(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i64 @pdf_array_contains(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_objcmp_resolve(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
