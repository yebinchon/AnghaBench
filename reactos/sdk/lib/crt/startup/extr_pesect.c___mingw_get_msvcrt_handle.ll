; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/startup/extr_pesect.c___mingw_get_msvcrt_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/startup/extr_pesect.c___mingw_get_msvcrt_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__mingw_get_msvcrt_handle.msvcrt_handle = internal global i32 0, align 4
@.str = private unnamed_addr constant [11 x i32] [i32 109, i32 115, i32 118, i32 99, i32 114, i32 116, i32 46, i32 100, i32 108, i32 108, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mingw_get_msvcrt_handle() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @__mingw_get_msvcrt_handle.msvcrt_handle, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %109, label %5

5:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %96, %5
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %2, align 4
  %9 = call i8* @__mingw_enum_import_library_names(i32 %7)
  store i8* %9, i8** %1, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %97

11:                                               ; preds = %6
  %12 = load i8*, i8** %1, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 109
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load i8*, i8** %1, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 77
  br i1 %22, label %23, label %96

23:                                               ; preds = %17, %11
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 115
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %1, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 83
  br i1 %34, label %35, label %96

35:                                               ; preds = %29, %23
  %36 = load i8*, i8** %1, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 118
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %1, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 86
  br i1 %46, label %47, label %96

47:                                               ; preds = %41, %35
  %48 = load i8*, i8** %1, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 99
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %1, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 67
  br i1 %58, label %59, label %96

59:                                               ; preds = %53, %47
  %60 = load i8*, i8** %1, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 114
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i8*, i8** %1, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 82
  br i1 %70, label %71, label %96

71:                                               ; preds = %65, %59
  %72 = load i8*, i8** %1, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 116
  br i1 %76, label %95, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %1, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 5
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 84
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load i8*, i8** %1, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 5
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sle i32 48, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i8*, i8** %1, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 5
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sle i32 %93, 57
  br i1 %94, label %95, label %96

95:                                               ; preds = %89, %77, %71
  br label %97

96:                                               ; preds = %89, %83, %65, %53, %41, %29, %17
  br label %6

97:                                               ; preds = %95, %6
  %98 = load i8*, i8** %1, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i8*, i8** %1, align 8
  %102 = call i32 @GetModuleHandleA(i8* %101)
  store i32 %102, i32* @__mingw_get_msvcrt_handle.msvcrt_handle, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* @__mingw_get_msvcrt_handle.msvcrt_handle, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = call i32 @LoadLibraryW(i8* bitcast ([11 x i32]* @.str to i8*))
  store i32 %107, i32* @__mingw_get_msvcrt_handle.msvcrt_handle, align 4
  br label %108

108:                                              ; preds = %106, %103
  br label %109

109:                                              ; preds = %108, %0
  %110 = load i32, i32* @__mingw_get_msvcrt_handle.msvcrt_handle, align 4
  ret i32 %110
}

declare dso_local i8* @__mingw_enum_import_library_names(i32) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @LoadLibraryW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
