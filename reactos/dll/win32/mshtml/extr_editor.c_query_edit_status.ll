; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_query_edit_status.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_query_edit_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [25 x i8] c"CGID_MSHTML: IDM_DELETE\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"CGID_MSHTML: IDM_FONTNAME\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"CGID_MSHTML: IDM_FONTSIZE\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"CGID_MSHTML: IDM_BOLD\0A\00", align 1
@NSCMD_BOLD = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"CGID_MSHTML: IDM_FORECOLOR\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CGID_MSHTML: IDM_ITALIC\0A\00", align 1
@NSCMD_ITALIC = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"CGID_MSHTML: IDM_UNDERLINE\0A\00", align 1
@NSCMD_UNDERLINE = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"CGID_MSHTML: IDM_HORIZONTALLINE\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"CGID_MSHTML: IDM_ORDERLIST\0A\00", align 1
@NSCMD_OL = common dso_local global i32* null, align 8
@NSCMD_UL = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"CGID_MSHTML: IDM_INDENT\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"CGID_MSHTML: IDM_OUTDENT\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"CGID_MSHTML: IDM_HYPERLINK\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @query_edit_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_edit_status(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %91 [
    i32 139, label %8
    i32 138, label %14
    i32 137, label %20
    i32 140, label %26
    i32 136, label %33
    i32 132, label %39
    i32 129, label %46
    i32 135, label %53
    i32 131, label %59
    i32 128, label %66
    i32 133, label %73
    i32 130, label %79
    i32 134, label %85
  ]

8:                                                ; preds = %2
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @query_ns_edit_status(i32* %10, i32* null)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  br label %91

14:                                               ; preds = %2
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @query_ns_edit_status(i32* %16, i32* null)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  br label %91

20:                                               ; preds = %2
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @query_ns_edit_status(i32* %22, i32* null)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %91

26:                                               ; preds = %2
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** @NSCMD_BOLD, align 8
  %30 = call i8* @query_ns_edit_status(i32* %28, i32* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  br label %91

33:                                               ; preds = %2
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = call i8* @query_ns_edit_status(i32* %35, i32* null)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %91

39:                                               ; preds = %2
  %40 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** @NSCMD_ITALIC, align 8
  %43 = call i8* @query_ns_edit_status(i32* %41, i32* %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %91

46:                                               ; preds = %2
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** @NSCMD_UNDERLINE, align 8
  %50 = call i8* @query_ns_edit_status(i32* %48, i32* %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %91

53:                                               ; preds = %2
  %54 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %55 = load i32*, i32** %3, align 8
  %56 = call i8* @query_ns_edit_status(i32* %55, i32* null)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %91

59:                                               ; preds = %2
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** @NSCMD_OL, align 8
  %63 = call i8* @query_ns_edit_status(i32* %61, i32* %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %91

66:                                               ; preds = %2
  %67 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %68 = load i32*, i32** %3, align 8
  %69 = load i32*, i32** @NSCMD_UL, align 8
  %70 = call i8* @query_ns_edit_status(i32* %68, i32* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %91

73:                                               ; preds = %2
  %74 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %75 = load i32*, i32** %3, align 8
  %76 = call i8* @query_ns_edit_status(i32* %75, i32* null)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %91

79:                                               ; preds = %2
  %80 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %81 = load i32*, i32** %3, align 8
  %82 = call i8* @query_ns_edit_status(i32* %81, i32* null)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %91

85:                                               ; preds = %2
  %86 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %87 = load i32*, i32** %3, align 8
  %88 = call i8* @query_ns_edit_status(i32* %87, i32* null)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %2, %85, %79, %73, %66, %59, %53, %46, %39, %33, %26, %20, %14, %8
  %92 = load i32, i32* @S_OK, align 4
  ret i32 %92
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i8* @query_ns_edit_status(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
