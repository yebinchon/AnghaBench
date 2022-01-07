; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_LineFromChar.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_LineFromChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@ES_MULTILINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @EDIT_EM_LineFromChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_EM_LineFromChar(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ES_MULTILINE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call i64 @get_text_length(%struct.TYPE_6__* %17)
  %19 = trunc i64 %18 to i32
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @min(i32 %32, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %29, %26
  store i32 0, i32* %6, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %7, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %58, %37
  %49 = load i32, i32* %5, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i1 [ false, %48 ], [ %55, %51 ]
  br i1 %57, label %58, label %71

58:                                               ; preds = %56
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %7, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %48

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %21, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @get_text_length(%struct.TYPE_6__*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
