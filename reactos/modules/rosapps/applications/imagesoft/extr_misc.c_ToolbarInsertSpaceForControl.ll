; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_misc.c_ToolbarInsertSpaceForControl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_misc.c_ToolbarInsertSpaceForControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32, i8* }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i64, i32, i8*, i64, i32 }

@ProcessHeap = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TBSTYLE_SEP = common dso_local global i32 0, align 4
@TB_GETSTYLE = common dso_local global i32 0, align 4
@CCS_VERT = common dso_local global i32 0, align 4
@TBSTATE_HIDDEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@TB_INSERTBUTTON = common dso_local global i32 0, align 4
@TB_GETITEMRECT = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ToolbarInsertSpaceForControl(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* @ProcessHeap, align 4
  %17 = call %struct.TYPE_8__* @HeapAlloc(i32 %16, i32 0, i32 4)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %12, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** %6, align 8
  br label %125

22:                                               ; preds = %5
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @GetWindowRect(i32 %32, %struct.TYPE_7__* %13)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %123

35:                                               ; preds = %22
  %36 = bitcast %struct.TYPE_6__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 48, i1 false)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %38, %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  store i64 %41, i64* %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @TBSTYLE_SEP, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = ptrtoint %struct.TYPE_8__* %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @TB_GETSTYLE, align 4
  %52 = call i32 @SendMessage(i32 %50, i32 %51, i32 0, i32 0)
  %53 = load i32, i32* @CCS_VERT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %35
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* @TBSTATE_HIDDEN, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i8*, i8** @TRUE, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %72

68:                                               ; preds = %35
  %69 = load i8*, i8** @FALSE, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @TB_INSERTBUTTON, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = ptrtoint %struct.TYPE_6__* %15 to i32
  %78 = call i32 @SendMessage(i32 %73, i32 %74, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %122

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @TB_GETITEMRECT, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = ptrtoint %struct.TYPE_7__* %14 to i32
  %86 = call i32 @SendMessage(i32 %81, i32 %82, i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %95, %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %100, %102
  %104 = load i32, i32* @SWP_NOZORDER, align 4
  %105 = call i32 @SetWindowPos(i32 %89, i32* null, i64 %91, i64 %93, i64 %98, i64 %103, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @SW_SHOW, align 4
  %108 = call i32 @ShowWindow(i32 %106, i32 %107)
  %109 = load i8*, i8** @TRUE, align 8
  store i8* %109, i8** %6, align 8
  br label %125

110:                                              ; preds = %80
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TBSTATE_HIDDEN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @SW_HIDE, align 4
  %119 = call i32 @ShowWindow(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %110
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %72
  br label %123

123:                                              ; preds = %122, %22
  %124 = load i8*, i8** @FALSE, align 8
  store i8* %124, i8** %6, align 8
  br label %125

125:                                              ; preds = %123, %88, %20
  %126 = load i8*, i8** %6, align 8
  ret i8* %126
}

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i64 @GetWindowRect(i32, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
