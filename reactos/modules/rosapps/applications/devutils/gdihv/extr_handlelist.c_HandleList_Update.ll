; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/gdihv/extr_handlelist.c_HandleList_Update.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/gdihv/extr_handlelist.c_HandleList_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i32* }

@LVIF_TEXT = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@GDI_HANDLE_COUNT = common dso_local global i64 0, align 8
@GdiHandleTable = common dso_local global %struct.TYPE_5__* null, align 8
@GDI_HANDLE_BASETYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 37, i32 100, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 37, i32 35, i32 48, i32 56, i32 73, i32 120, i32 0], align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 37, i32 35, i32 48, i32 56, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HandleList_Update(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca [80 x i32], align 16
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ListView_DeleteAllItems(i32 %13)
  %15 = load i32, i32* @LVIF_TEXT, align 4
  %16 = load i32, i32* @LVIF_PARAM, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  store i32* %19, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 80, i32* %21, align 4
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %145, %2
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @GDI_HANDLE_COUNT, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %148

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GdiHandleTable, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %9, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GDI_HANDLE_BASETYPE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %32, %26
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GDI_HANDLE_BASETYPE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42, %39
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %50, 2
  br i1 %51, label %52, label %144

52:                                               ; preds = %49, %42, %32
  %53 = load i64, i64* %5, align 8
  %54 = icmp eq i64 %53, 1
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 2
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %5, align 8
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 65532
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, 65532
  %67 = icmp eq i32 %61, %66
  br i1 %67, label %68, label %143

68:                                               ; preds = %58, %55, %52
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @GDI_HANDLE_CREATE(i64 %69, i32 %72)
  store i64 %73, i64* %8, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @ListView_GetItemCount(i32 %74)
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i64 %76, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i64 %79, i64* %80, align 8
  %81 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @wsprintf(i32* %81, i8* bitcast ([3 x i32]* @.str to i8*), i64 %82)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ListView_InsertItem(i32 %84, %struct.TYPE_6__* %10)
  %86 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @wsprintf(i32* %86, i8* bitcast ([3 x i32]* @.str to i8*), i64 %87)
  %89 = load i32, i32* %4, align 4
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %92 = call i32 @ListView_SetItemText(i32 %89, i64 %90, i32 1, i32* %91)
  %93 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @wsprintf(i32* %93, i8* bitcast ([7 x i32]* @.str.1 to i8*), i64 %94)
  %96 = load i32, i32* %4, align 4
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %99 = call i32 @ListView_SetItemText(i32 %96, i64 %97, i32 2, i32* %98)
  %100 = load i64, i64* %8, align 8
  %101 = call i32* @GetTypeName(i64 %100)
  store i32* %101, i32** %12, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i64, i64* %7, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @ListView_SetItemText(i32 %102, i64 %103, i32 3, i32* %104)
  %106 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @wsprintf(i32* %106, i8* bitcast ([7 x i32]* @.str.1 to i8*), i64 %109)
  %111 = load i32, i32* %4, align 4
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %114 = call i32 @ListView_SetItemText(i32 %111, i64 %112, i32 4, i32* %113)
  %115 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @wsprintf(i32* %115, i8* bitcast ([7 x i32]* @.str.1 to i8*), i64 %118)
  %120 = load i32, i32* %4, align 4
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %123 = call i32 @ListView_SetItemText(i32 %120, i64 %121, i32 5, i32* %122)
  %124 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @wsprintf(i32* %124, i8* bitcast ([7 x i32]* @.str.1 to i8*), i64 %127)
  %129 = load i32, i32* %4, align 4
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %132 = call i32 @ListView_SetItemText(i32 %129, i64 %130, i32 6, i32* %131)
  %133 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = call i32 @wsprintf(i32* %133, i8* bitcast ([6 x i32]* @.str.2 to i8*), i64 %137)
  %139 = load i32, i32* %4, align 4
  %140 = load i64, i64* %7, align 8
  %141 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %142 = call i32 @ListView_SetItemText(i32 %139, i64 %140, i32 7, i32* %141)
  br label %143

143:                                              ; preds = %68, %58
  br label %144

144:                                              ; preds = %143, %49
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %6, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %6, align 8
  br label %22

148:                                              ; preds = %22
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @ListView_DeleteAllItems(i32) #1

declare dso_local i64 @GDI_HANDLE_CREATE(i64, i32) #1

declare dso_local i64 @ListView_GetItemCount(i32) #1

declare dso_local i32 @wsprintf(i32*, i8*, i64) #1

declare dso_local i32 @ListView_InsertItem(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ListView_SetItemText(i32, i64, i32, i32*) #1

declare dso_local i32* @GetTypeName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
