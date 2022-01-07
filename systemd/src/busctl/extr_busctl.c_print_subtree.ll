; ModuleID = '/home/carl/AnghaBench/systemd/src/busctl/extr_busctl.c_print_subtree.c'
source_filename = "/home/carl/AnghaBench/systemd/src/busctl/extr_busctl.c_print_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPECIAL_GLYPH_TREE_VERTICAL = common dso_local global i32 0, align 4
@SPECIAL_GLYPH_TREE_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@SPECIAL_GLYPH_TREE_BRANCH = common dso_local global i32 0, align 4
@SPECIAL_GLYPH_TREE_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @print_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_subtree(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  br label %11

11:                                               ; preds = %23, %3
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %97

16:                                               ; preds = %11
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @streq(i8* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %26

23:                                               ; preds = %16
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %6, align 8
  br label %11

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @SPECIAL_GLYPH_TREE_VERTICAL, align 4
  %29 = call i8* @special_glyph(i32 %28)
  %30 = call i8* @strjoina(i8* %27, i8* %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* @SPECIAL_GLYPH_TREE_SPACE, align 4
  %33 = call i8* @special_glyph(i32 %32)
  %34 = call i8* @strjoina(i8* %31, i8* %33)
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %91, %26
  store i32 0, i32* %10, align 4
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @path_startswith(i8* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %35
  br label %97

46:                                               ; preds = %39
  %47 = load i8**, i8*** %6, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  store i8** %48, i8*** %9, align 8
  br label %49

49:                                               ; preds = %68, %46
  %50 = load i8**, i8*** %9, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8**, i8*** %9, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @path_startswith(i8* %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53, %49
  br label %71

60:                                               ; preds = %53
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @path_startswith(i8* %62, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  br label %71

68:                                               ; preds = %60
  %69 = load i8**, i8*** %9, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %9, align 8
  br label %49

71:                                               ; preds = %67, %59
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @SPECIAL_GLYPH_TREE_BRANCH, align 4
  br label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @SPECIAL_GLYPH_TREE_RIGHT, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = call i8* @special_glyph(i32 %80)
  %82 = load i8**, i8*** %6, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %72, i8* %81, i8* %83)
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i8*, i8** %7, align 8
  br label %91

89:                                               ; preds = %79
  %90 = load i8*, i8** %8, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i8* [ %88, %87 ], [ %90, %89 ]
  %93 = load i8**, i8*** %6, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i8**, i8*** %6, align 8
  call void @print_subtree(i8* %92, i8* %94, i8** %95)
  %96 = load i8**, i8*** %9, align 8
  store i8** %96, i8*** %6, align 8
  br label %35

97:                                               ; preds = %15, %45
  ret void
}

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i8* @special_glyph(i32) #1

declare dso_local i32 @path_startswith(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
