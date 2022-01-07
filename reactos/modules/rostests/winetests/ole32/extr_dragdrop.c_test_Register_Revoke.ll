; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_dragdrop.c_test_Register_Revoke.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_dragdrop.c_test_Register_Revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"WineOleTestClass\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@DropTarget = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@CO_E_NOTINITIALIZED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [95 x i8] c"RegisterDragDrop without OLE initialized should have returned E_OUTOFMEMORY instead of 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [87 x i8] c"RegisterDragDrop with NULL IDropTarget * should return E_INVALIDARG instead of 0x%08x\0A\00", align 1
@DRAGDROP_E_INVALIDHWND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [88 x i8] c"RegisterDragDrop with NULL hwnd should return DRAGDROP_E_INVALIDHWND instead of 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [91 x i8] c"RegisterDragDrop with garbage hwnd should return DRAGDROP_E_INVALIDHWND instead of 0x%08x\0A\00", align 1
@droptarget_refs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"DropTarget refs should be zero not %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"RegisterDragDrop\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"DropTarget refs should be at least one\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"OleDropTargetInterface\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"expected IDropTarget pointer %p, got %p\0A\00", align 1
@DRAGDROP_E_ALREADYREGISTERED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [108 x i8] c"RegisterDragDrop with already registered hwnd should return DRAGDROP_E_ALREADYREGISTERED instead of 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"RevokeDragDrop\00", align 1
@.str.13 = private unnamed_addr constant [86 x i8] c"RevokeDragDrop with NULL hwnd should return DRAGDROP_E_INVALIDHWND instead of 0x%08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Register_Revoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Register_Revoke() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @CW_USEDEFAULT, align 4
  %5 = load i32, i32* @CW_USEDEFAULT, align 4
  %6 = load i32, i32* @CW_USEDEFAULT, align 4
  %7 = load i32, i32* @CW_USEDEFAULT, align 4
  %8 = call i32* @CreateWindowA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %4, i32 %5, i32 %6, i32 %7, i32* null, i32* null, i32* null, i32* null)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @RegisterDragDrop(i32* %9, i32* @DropTarget)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @E_OUTOFMEMORY, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @CO_E_NOTINITIALIZED, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @broken(i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %14, %0
  %22 = phi i1 [ true, %0 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = call i32 @OleInitialize(i32* null)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @RegisterDragDrop(i32* %27, i32* null)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @E_INVALIDARG, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %2, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = call i32 @RegisterDragDrop(i32* null, i32* @DropTarget)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @DRAGDROP_E_INVALIDHWND, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %2, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = call i32 @RegisterDragDrop(i32* inttoptr (i64 3735928559 to i32*), i32* @DropTarget)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @DRAGDROP_E_INVALIDHWND, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %2, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @droptarget_refs, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @droptarget_refs, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @RegisterDragDrop(i32* %54, i32* @DropTarget)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @ok_ole_success(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i32, i32* @droptarget_refs, align 4
  %59 = icmp sge i32 %58, 1
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %62 = load i32*, i32** %3, align 8
  %63 = call i32* @GetPropA(i32* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i32* %63, i32** %1, align 8
  %64 = load i32*, i32** %1, align 8
  %65 = icmp eq i32* %64, @DropTarget
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32* @DropTarget, i32* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @RegisterDragDrop(i32* %69, i32* @DropTarget)
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @DRAGDROP_E_ALREADYREGISTERED, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %2, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.11, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @droptarget_refs, align 4
  %78 = icmp sge i32 %77, 1
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %81 = call i32 (...) @OleUninitialize()
  %82 = load i32, i32* @droptarget_refs, align 4
  %83 = icmp sge i32 %82, 1
  br i1 %83, label %84, label %102

84:                                               ; preds = %21
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @RevokeDragDrop(i32* %85)
  store i32 %86, i32* %2, align 4
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @ok_ole_success(i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %89 = load i32, i32* @droptarget_refs, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* @droptarget_refs, align 4
  %93 = icmp eq i32 %92, 1
  %94 = zext i1 %93 to i32
  %95 = call i64 @broken(i32 %94)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %91, %84
  %98 = phi i1 [ true, %84 ], [ %96, %91 ]
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* @droptarget_refs, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %97, %21
  %103 = call i32 @RevokeDragDrop(i32* null)
  store i32 %103, i32* %2, align 4
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @DRAGDROP_E_INVALIDHWND, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %2, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.13, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @DestroyWindow(i32* %110)
  %112 = call i32 @OleInitialize(i32* null)
  %113 = load i32, i32* @CW_USEDEFAULT, align 4
  %114 = load i32, i32* @CW_USEDEFAULT, align 4
  %115 = load i32, i32* @CW_USEDEFAULT, align 4
  %116 = load i32, i32* @CW_USEDEFAULT, align 4
  %117 = call i32* @CreateWindowA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %113, i32 %114, i32 %115, i32 %116, i32* null, i32* null, i32* null, i32* null)
  store i32* %117, i32** %3, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @RegisterDragDrop(i32* %118, i32* @DropTarget)
  store i32 %119, i32* %2, align 4
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* @S_OK, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %2, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 @DestroyWindow(i32* %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @RevokeDragDrop(i32* %128)
  store i32 %129, i32* %2, align 4
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @DRAGDROP_E_INVALIDHWND, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %2, align 4
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %134)
  %136 = call i32 (...) @OleUninitialize()
  ret void
}

declare dso_local i32* @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegisterDragDrop(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @OleInitialize(i32*) #1

declare dso_local i32 @ok_ole_success(i32, i8*) #1

declare dso_local i32* @GetPropA(i32*, i8*) #1

declare dso_local i32 @OleUninitialize(...) #1

declare dso_local i32 @RevokeDragDrop(i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
