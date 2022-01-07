; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_CBUpdateEdit.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_CBUpdateEdit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@CBUpdateEdit.empty_stringW = internal constant [1 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"\09 %i\0A\00", align 1
@LB_GETTEXTLEN = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@LB_GETTEXT = common dso_local global i32 0, align 4
@CBF_NOEDITNOTIFY = common dso_local global i32 0, align 4
@CBF_NOLBSELECT = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@CBF_FOCUSED = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @CBUpdateEdit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CBUpdateEdit(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load i64, i64* %4, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LB_GETTEXTLEN, align 4
  %16 = load i64, i64* %4, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @SendMessageW(i32 %14, i32 %15, i32 %17, i32 0)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @LB_ERR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %11
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, 1
  %26 = mul i64 %25, 4
  %27 = call i32* @HeapAlloc(i32 %23, i32 0, i64 %26)
  store i32* %27, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LB_GETTEXT, align 4
  %34 = load i64, i64* %4, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %6, align 8
  %37 = ptrtoint i32* %36 to i32
  %38 = call i64 @SendMessageW(i32 %32, i32 %33, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %29, %22
  br label %40

40:                                               ; preds = %39, %11
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = call i64 @CB_HASSTRINGS(%struct.TYPE_4__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load i32, i32* @CBF_NOEDITNOTIFY, align 4
  %47 = load i32, i32* @CBF_NOLBSELECT, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @WM_SETTEXT, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load i32*, i32** %6, align 8
  %61 = ptrtoint i32* %60 to i32
  br label %63

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ ptrtoint ([1 x i32]* @CBUpdateEdit.empty_stringW to i32), %62 ]
  %65 = call i64 @SendMessageW(i32 %55, i32 %56, i32 0, i32 %64)
  %66 = load i32, i32* @CBF_NOEDITNOTIFY, align 4
  %67 = load i32, i32* @CBF_NOLBSELECT, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %63, %41
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CBF_FOCUSED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EM_SETSEL, align 4
  %86 = call i64 @SendMessageW(i32 %84, i32 %85, i32 0, i32 -1)
  br label %87

87:                                               ; preds = %81, %74
  %88 = call i32 (...) @GetProcessHeap()
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @HeapFree(i32 %88, i32 0, i32* %89)
  ret void
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @CB_HASSTRINGS(%struct.TYPE_4__*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
