; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_font.c_msi_font_version_from_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_font.c_msi_font_version_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msi_font_version_from_file.fmtW = internal constant [10 x i8] c"%u.%u.0.0\00", align 1
@NAME_ID_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @msi_font_version_from_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %6, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* @NAME_ID_VERSION, align 4
  %12 = call i8* @load_ttf_name_id(i8* %10, i32 %11)
  store i8* %12, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %90

14:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strchrW(i8* %15, i8 signext 59)
  store i8* %16, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %4, align 8
  br label %22

22:                                               ; preds = %35, %20
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isdigitW(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i1 [ false, %22 ], [ %32, %27 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  br label %22

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @strchrW(i8* %39, i8 signext 46)
  store i8* %40, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @atoiW(i8* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %59, %42
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @isdigitW(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ false, %47 ], [ %56, %52 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %5, align 8
  br label %47

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %62
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @atoiW(i8* %72)
  store i32 %73, i32* %9, align 4
  br label %75

74:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %38
  %77 = call i32 @strlenW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @msi_font_version_from_file.fmtW, i64 0, i64 0))
  %78 = add nsw i32 %77, 20
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = call i8* @msi_alloc(i32 %82)
  store i8* %83, i8** %6, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @sprintfW(i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @msi_font_version_from_file.fmtW, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @msi_free(i8* %88)
  br label %90

90:                                               ; preds = %76, %1
  %91 = load i8*, i8** %6, align 8
  ret i8* %91
}

declare dso_local i8* @load_ttf_name_id(i8*, i32) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i64 @isdigitW(i8 signext) #1

declare dso_local i32 @atoiW(i8*) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32, i32) #1

declare dso_local i32 @msi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
