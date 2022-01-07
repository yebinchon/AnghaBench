; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_simple_strtoul.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_simple_strtoul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @simple_strtoul(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %3
  store i32 10, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 48
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  store i32 8, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 120
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @PICE_isxdigit(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  store i32 16, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %23, %16
  br label %33

33:                                               ; preds = %32, %11
  br label %34

34:                                               ; preds = %33, %3
  br label %35

35:                                               ; preds = %76, %34
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @PICE_isxdigit(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @PICE_isdigit(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %48, 48
  br label %68

50:                                               ; preds = %40
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @PICE_islower(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call signext i8 @PICE_toupper(i8 signext %57)
  %59 = sext i8 %58 to i32
  br label %64

60:                                               ; preds = %50
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i32 [ %59, %55 ], [ %63, %60 ]
  %66 = sub nsw i32 %65, 65
  %67 = add nsw i32 %66, 10
  br label %68

68:                                               ; preds = %64, %45
  %69 = phi i32 [ %49, %45 ], [ %67, %64 ]
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %8, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = icmp ult i64 %70, %72
  br label %74

74:                                               ; preds = %68, %35
  %75 = phi i1 [ false, %35 ], [ %73, %68 ]
  br i1 %75, label %76, label %85

76:                                               ; preds = %74
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = mul i64 %77, %79
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %80, %81
  store i64 %82, i64* %7, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  br label %35

85:                                               ; preds = %74
  %86 = load i8**, i8*** %5, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i8*, i8** %4, align 8
  %90 = load i8**, i8*** %5, align 8
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i64, i64* %7, align 8
  ret i64 %92
}

declare dso_local i64 @PICE_isxdigit(i8 signext) #1

declare dso_local i64 @PICE_isdigit(i8 signext) #1

declare dso_local i64 @PICE_islower(i8 signext) #1

declare dso_local signext i8 @PICE_toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
