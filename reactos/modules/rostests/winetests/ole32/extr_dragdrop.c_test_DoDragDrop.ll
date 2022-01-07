; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_dragdrop.c_test_DoDragDrop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_dragdrop.c_test_DoDragDrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@WS_EX_TOPMOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WineOleTestClass\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to create window\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@DropTarget = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@DropSource = common dso_local global i32 0, align 4
@DataObject = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"SetCursorPos failed\0A\00", align 1
@call_lists = common dso_local global %struct.TYPE_7__** null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@call_ptr = common dso_local global %struct.TYPE_7__* null, align 8
@DoDragDrop_ret = common dso_local global i32 0, align 4
@DoDragDrop_effect_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DoDragDrop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DoDragDrop() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load i32, i32* @WS_EX_TOPMOST, align 4
  %8 = load i32, i32* @CW_USEDEFAULT, align 4
  %9 = load i32, i32* @CW_USEDEFAULT, align 4
  %10 = call i32 @CreateWindowExA(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %8, i32 %9, i32 100, i32 100, i32* null, i32* null, i32* null, i32* null)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @IsWindow(i32 %11)
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i64 @OleInitialize(i32* null)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %2, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @RegisterDragDrop(i32 %21, i32* @DropTarget)
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %2, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %27)
  %29 = call i64 @DoDragDrop(i32* null, i32* null, i64 0, i64* null)
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @E_INVALIDARG, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %2, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %34)
  %36 = call i64 @DoDragDrop(i32* null, i32* @DropSource, i64 0, i64* null)
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* @E_INVALIDARG, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %2, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = call i64 @DoDragDrop(i32* @DataObject, i32* null, i64 0, i64* null)
  store i64 %43, i64* %2, align 8
  %44 = load i64, i64* %2, align 8
  %45 = load i64, i64* @E_INVALIDARG, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %2, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = call i64 @DoDragDrop(i32* null, i32* null, i64 0, i64* %1)
  store i64 %50, i64* %2, align 8
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @E_INVALIDARG, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %2, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = call i64 @DoDragDrop(i32* @DataObject, i32* @DropSource, i64 0, i64* null)
  store i64 %57, i64* %2, align 8
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* @E_INVALIDARG, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %2, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  %64 = call i64 @DoDragDrop(i32* null, i32* @DropSource, i64 0, i64* %1)
  store i64 %64, i64* %2, align 8
  %65 = load i64, i64* %2, align 8
  %66 = load i64, i64* @E_INVALIDARG, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %2, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = call i64 @DoDragDrop(i32* @DataObject, i32* null, i64 0, i64* %1)
  store i64 %71, i64* %2, align 8
  %72 = load i64, i64* %2, align 8
  %73 = load i64, i64* @E_INVALIDARG, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %2, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @SW_SHOW, align 4
  %80 = call i32 @ShowWindow(i32 %78, i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @GetWindowRect(i32 %81, %struct.TYPE_6__* %4)
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 50
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 50
  %89 = call i32 @SetCursorPos(i64 %85, i64 %88)
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %117, %0
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @call_lists, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.TYPE_7__** %93)
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @call_lists, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %99, i64 %101
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** @call_ptr, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_ptr, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %6, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @call_ptr, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 1
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** @call_ptr, align 8
  %109 = load i64, i64* %6, align 8
  %110 = call i64 @DoDragDrop(i32* @DataObject, i32* @DropSource, i64 %109, i64* %1)
  store i64 %110, i64* %2, align 8
  %111 = load i32, i32* @DoDragDrop_ret, align 4
  %112 = load i64, i64* %2, align 8
  %113 = call i32 @check_expect(i32 %111, i64 %112, i32* null)
  %114 = load i32, i32* @DoDragDrop_effect_out, align 4
  %115 = load i64, i64* %1, align 8
  %116 = call i32 @check_expect(i32 %114, i64 %115, i32* null)
  br label %117

117:                                              ; preds = %96
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %91

120:                                              ; preds = %91
  %121 = call i32 (...) @OleUninitialize()
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @DestroyWindow(i32 %122)
  ret void
}

declare dso_local i32 @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IsWindow(i32) #1

declare dso_local i64 @OleInitialize(i32*) #1

declare dso_local i64 @RegisterDragDrop(i32, i32*) #1

declare dso_local i64 @DoDragDrop(i32*, i32*, i64, i64*) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @SetCursorPos(i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__**) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @check_expect(i32, i64, i32*) #1

declare dso_local i32 @OleUninitialize(...) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
