; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_PARSER_get_dest_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_PARSER_get_dest_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PARSER_get_dest_dir(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = call i32 @SetupGetIntField(%struct.TYPE_5__* %10, i32 1, i32* %7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @get_dirid_subst(i32 %17, i32 %18, i32* %8)
  store i8* %19, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %76

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = call i32 @SetupGetStringFieldW(%struct.TYPE_5__* %23, i32 2, i8* null, i32 0, i32* %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %29, %30
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i8* @HeapAlloc(i32 %28, i32 0, i32 %35)
  store i8* %36, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  store i8* null, i8** %2, align 8
  br label %76

39:                                               ; preds = %27
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i8* %40, i8* %41, i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %39
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ugt i8* %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 92
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  store i8 92, i8* %64, align 1
  br label %66

66:                                               ; preds = %63, %57, %53, %39
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @SetupGetStringFieldW(%struct.TYPE_5__* %67, i32 2, i8* %68, i32 %69, i32* null)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %5, align 8
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i8*, i8** %6, align 8
  store i8* %75, i8** %2, align 8
  br label %76

76:                                               ; preds = %74, %38, %21, %13
  %77 = load i8*, i8** %2, align 8
  ret i8* %77
}

declare dso_local i32 @SetupGetIntField(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i8* @get_dirid_subst(i32, i32, i32*) #1

declare dso_local i32 @SetupGetStringFieldW(%struct.TYPE_5__*, i32, i8*, i32, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
