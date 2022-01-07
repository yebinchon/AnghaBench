; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_SetHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_SetHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i32*, i64 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"called with NULL handle\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@LMEM_MOVEABLE = common dso_local global i32 0, align 4
@LMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not allocate new unicode buffer\0A\00", align 1
@EF_MODIFIED = common dso_local global i32 0, align 4
@EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*)* @EDIT_EM_SetHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_EM_SetHandle(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ES_MULTILINE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %147

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %147

22:                                               ; preds = %17
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @EDIT_UnlockBuffer(%struct.TYPE_12__* %23, i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 10
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %22
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @LocalFree(i8* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store i8* null, i8** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %97

46:                                               ; preds = %22
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @LocalSize(i8* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = call i8* @LocalLock(i8* %49)
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* @CP_ACP, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @MultiByteToWideChar(i32 %52, i32 0, i32* %53, i32 %54, i32* null, i32 0)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @LMEM_MOVEABLE, align 4
  %57 = load i32, i32* @LMEM_ZEROINIT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i8* @LocalAlloc(i32 %58, i32 %62)
  store i8* %63, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %46
  %66 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %147

67:                                               ; preds = %46
  %68 = load i8*, i8** %7, align 8
  %69 = call i8* @LocalLock(i8* %68)
  %70 = bitcast i8* %69 to i32*
  store i32* %70, i32** %8, align 8
  %71 = load i32, i32* @CP_ACP, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @MultiByteToWideChar(i32 %71, i32 0, i32* %72, i32 %73, i32* %74, i32 %75)
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @LocalUnlock(i8* %77)
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @LocalUnlock(i8* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %67
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @LocalFree(i8* %88)
  br label %90

90:                                               ; preds = %85, %67
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %90, %42
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @LocalSize(i8* %100)
  %102 = sext i32 %101 to i64
  %103 = udiv i64 %102, 4
  %104 = sub i64 %103, 1
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 9
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = call i32 @EDIT_LockBuffer(%struct.TYPE_12__* %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = call i32 @text_buffer_changed(%struct.TYPE_12__* %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 7
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 8
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 5
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 6
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = call i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_12__* %122)
  %124 = load i32, i32* @EF_MODIFIED, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @EF_UPDATE, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = call i32 @get_text_length(%struct.TYPE_12__* %137)
  %139 = call i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_12__* %136, i32 0, i32 %138, i32 0, i32* null)
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @EDIT_UpdateText(%struct.TYPE_12__* %140, i32* null, i32 %141)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_12__* %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %146 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_12__* %145)
  br label %147

147:                                              ; preds = %97, %65, %20, %16
  ret void
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @EDIT_UnlockBuffer(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @LocalFree(i8*) #1

declare dso_local i32 @LocalSize(i8*) #1

declare dso_local i8* @LocalLock(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i8* @LocalAlloc(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @LocalUnlock(i8*) #1

declare dso_local i32 @EDIT_LockBuffer(%struct.TYPE_12__*) #1

declare dso_local i32 @text_buffer_changed(%struct.TYPE_12__*) #1

declare dso_local i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_12__*) #1

declare dso_local i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_12__*, i32, i32, i32, i32*) #1

declare dso_local i32 @get_text_length(%struct.TYPE_12__*) #1

declare dso_local i32 @EDIT_UpdateText(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_12__*) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
