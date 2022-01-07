; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_vlc.c_vlclua_add_modules_path.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_vlc.c_vlclua_add_modules_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIR_SEP_CHAR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlclua_add_modules_path(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %130

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* @DIR_SEP_CHAR, align 1
  %19 = call i8* @strrchr(i8* %17, i8 signext %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @free(i8* %23)
  store i32 1, i32* %3, align 4
  br label %130

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* @DIR_SEP_CHAR, align 1
  %29 = call i8* @strrchr(i8* %27, i8 signext %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @free(i8* %33)
  store i32 1, i32* %3, align 4
  br label %130

35:                                               ; preds = %25
  %36 = load i8*, i8** %7, align 8
  store i8 0, i8* %36, align 1
  store i32 0, i32* %8, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @lua_getglobal(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @vlclua_add_modules_path_inner(i32* %39, i8* %40)
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i8, i8* @DIR_SEP_CHAR, align 1
  %47 = load i8*, i8** %7, align 8
  store i8 %46, i8* %47, align 1
  %48 = load i32*, i32** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @vlclua_add_modules_path_inner(i32* %48, i8* %49)
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  store i8** null, i8*** %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i32 @vlclua_dir_list(i8* %56, i8*** %9)
  %58 = load i8**, i8*** %9, align 8
  store i8** %58, i8*** %10, align 8
  br label %59

59:                                               ; preds = %72, %35
  %60 = load i8**, i8*** %10, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i8**, i8*** %10, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strcmp(i8* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i1 [ false, %59 ], [ %68, %63 ]
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71
  %73 = load i8**, i8*** %10, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %10, align 8
  br label %59

75:                                               ; preds = %69
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %111, %75
  %79 = load i8**, i8*** %10, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %114

82:                                               ; preds = %78
  %83 = load i8**, i8*** %10, align 8
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %6, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* @DIR_SEP_CHAR, align 1
  %87 = call i8* @strrchr(i8* %85, i8 signext %86)
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i8**, i8*** %9, align 8
  %92 = call i32 @vlclua_dir_list_free(i8** %91)
  store i32 1, i32* %3, align 4
  br label %130

93:                                               ; preds = %82
  %94 = load i8*, i8** %7, align 8
  store i8 0, i8* %94, align 1
  %95 = load i32*, i32** %4, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i64 @vlclua_add_modules_path_inner(i32* %95, i8* %96)
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %8, align 4
  %102 = load i8, i8* @DIR_SEP_CHAR, align 1
  %103 = load i8*, i8** %7, align 8
  store i8 %102, i8* %103, align 1
  %104 = load i32*, i32** %4, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i64 @vlclua_add_modules_path_inner(i32* %104, i8* %105)
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %93
  %112 = load i8**, i8*** %10, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i32 1
  store i8** %113, i8*** %10, align 8
  br label %78

114:                                              ; preds = %78
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  %118 = sub nsw i32 0, %117
  %119 = call i32 @lua_getfield(i32* %115, i32 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 @lua_concat(i32* %120, i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @lua_setfield(i32* %124, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @lua_pop(i32* %126, i32 1)
  %128 = load i8**, i8*** %9, align 8
  %129 = call i32 @vlclua_dir_list_free(i8** %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %114, %90, %32, %22, %15
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i64 @vlclua_add_modules_path_inner(i32*, i8*) #1

declare dso_local i32 @vlclua_dir_list(i8*, i8***) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @vlclua_dir_list_free(i8**) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
