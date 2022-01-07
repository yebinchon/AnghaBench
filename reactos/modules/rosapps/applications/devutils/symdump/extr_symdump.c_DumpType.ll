; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/symdump/extr_symdump.c_DumpType.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/symdump/extr_symdump.c_DumpType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@TI_GET_SYMTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"typeTag%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DumpType(i32 %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @TI_GET_SYMTAG, align 4
  %23 = call i32 @SymGetTypeInfo(i32 %19, i32 %20, i32 %21, i32 %22, i32* %12)
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %54 [
    i32 131, label %25
    i32 128, label %31
    i32 129, label %37
    i32 132, label %42
    i32 133, label %47
    i32 130, label %52
  ]

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @DumpEnum(i32 %26, %struct.TYPE_8__* %27, i32 %28, i32 %29)
  br label %57

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @DumpUDT(i32 %32, %struct.TYPE_8__* %33, i32 %34, i32 %35)
  br label %57

37:                                               ; preds = %4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @DumpPointer(i32 %38, %struct.TYPE_8__* %39, i32 %40)
  br label %57

42:                                               ; preds = %4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @DumpBaseType(i32 %43, %struct.TYPE_8__* %44, i32 %45)
  br label %57

47:                                               ; preds = %4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @DumpArray(i32 %48, %struct.TYPE_8__* %49, i32 %50)
  br label %57

52:                                               ; preds = %4
  %53 = call i32 (i8*, ...) @printfi(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %57

54:                                               ; preds = %4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i8*, ...) @printfi(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %52, %47, %42, %37, %31, %25
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @SymGetTypeInfo(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DumpEnum(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @DumpUDT(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @DumpPointer(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @DumpBaseType(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @DumpArray(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @printfi(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
