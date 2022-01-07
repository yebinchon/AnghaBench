; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_keyvalcmp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_keyvalcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.keyval = type { %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8* }

@PDF_LIMIT = common dso_local global %struct.TYPE_4__* null, align 8
@PDF_NAME_LIST = common dso_local global i8** null, align 8
@PDF_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @keyvalcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyvalcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.keyval*, align 8
  %7 = alloca %struct.keyval*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.keyval*
  store %struct.keyval* %11, %struct.keyval** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.keyval*
  store %struct.keyval* %13, %struct.keyval** %7, align 8
  %14 = load %struct.keyval*, %struct.keyval** %6, align 8
  %15 = getelementptr inbounds %struct.keyval, %struct.keyval* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PDF_LIMIT, align 8
  %18 = icmp ult %struct.TYPE_4__* %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i8**, i8*** @PDF_NAME_LIST, align 8
  %21 = load %struct.keyval*, %struct.keyval** %6, align 8
  %22 = getelementptr inbounds %struct.keyval, %struct.keyval* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = ptrtoint %struct.TYPE_4__* %23 to i64
  %25 = getelementptr inbounds i8*, i8** %20, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  br label %50

27:                                               ; preds = %2
  %28 = load %struct.keyval*, %struct.keyval** %6, align 8
  %29 = getelementptr inbounds %struct.keyval, %struct.keyval* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PDF_LIMIT, align 8
  %32 = icmp uge %struct.TYPE_4__* %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.keyval*, %struct.keyval** %6, align 8
  %35 = getelementptr inbounds %struct.keyval, %struct.keyval* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PDF_NAME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.keyval*, %struct.keyval** %6, align 8
  %43 = getelementptr inbounds %struct.keyval, %struct.keyval* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call %struct.TYPE_5__* @NAME(%struct.TYPE_4__* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %8, align 8
  br label %49

48:                                               ; preds = %33, %27
  store i32 0, i32* %3, align 4
  br label %91

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %19
  %51 = load %struct.keyval*, %struct.keyval** %7, align 8
  %52 = getelementptr inbounds %struct.keyval, %struct.keyval* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PDF_LIMIT, align 8
  %55 = icmp ult %struct.TYPE_4__* %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i8**, i8*** @PDF_NAME_LIST, align 8
  %58 = load %struct.keyval*, %struct.keyval** %7, align 8
  %59 = getelementptr inbounds %struct.keyval, %struct.keyval* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = ptrtoint %struct.TYPE_4__* %60 to i64
  %62 = getelementptr inbounds i8*, i8** %57, i64 %61
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %9, align 8
  br label %87

64:                                               ; preds = %50
  %65 = load %struct.keyval*, %struct.keyval** %7, align 8
  %66 = getelementptr inbounds %struct.keyval, %struct.keyval* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PDF_LIMIT, align 8
  %69 = icmp uge %struct.TYPE_4__* %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.keyval*, %struct.keyval** %7, align 8
  %72 = getelementptr inbounds %struct.keyval, %struct.keyval* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PDF_NAME, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load %struct.keyval*, %struct.keyval** %7, align 8
  %80 = getelementptr inbounds %struct.keyval, %struct.keyval* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call %struct.TYPE_5__* @NAME(%struct.TYPE_4__* %81)
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %9, align 8
  br label %86

85:                                               ; preds = %70, %64
  store i32 0, i32* %3, align 4
  br label %91

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %56
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @strcmp(i8* %88, i8* %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %85, %48
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_5__* @NAME(%struct.TYPE_4__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
