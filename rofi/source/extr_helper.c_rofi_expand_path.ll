; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_rofi_expand_path.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_rofi_expand_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@G_DIR_SEPARATOR_S = common dso_local global i32 0, align 4
@G_DIR_SEPARATOR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rofi_expand_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @G_DIR_SEPARATOR_S, align 4
  %10 = call i8** @g_strsplit(i8* %8, i32 %9, i32 -1)
  store i8** %10, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %122, %1
  %12 = load i8**, i8*** %3, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i8**, i8*** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %14, %11
  %22 = phi i1 [ false, %11 ], [ %20, %14 ]
  br i1 %22, label %23, label %125

23:                                               ; preds = %21
  %24 = load i8**, i8*** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 126
  br i1 %32, label %33, label %56

33:                                               ; preds = %23
  %34 = load i8**, i8*** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = load i8**, i8*** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @g_free(i8* %48)
  %50 = call i32 (...) @g_get_home_dir()
  %51 = call i8* @g_strdup(i32 %50)
  %52 = load i8**, i8*** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %51, i8** %55, align 8
  br label %121

56:                                               ; preds = %33, %23
  %57 = load i8**, i8*** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 126
  br i1 %65, label %66, label %92

66:                                               ; preds = %56
  %67 = load i8**, i8*** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = call %struct.passwd* @getpwnam(i8* %72)
  store %struct.passwd* %73, %struct.passwd** %5, align 8
  %74 = load %struct.passwd*, %struct.passwd** %5, align 8
  %75 = icmp ne %struct.passwd* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %66
  %77 = load i8**, i8*** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @g_free(i8* %81)
  %83 = load %struct.passwd*, %struct.passwd** %5, align 8
  %84 = getelementptr inbounds %struct.passwd, %struct.passwd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @g_strdup(i32 %85)
  %87 = load i8**, i8*** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %86, i8** %90, align 8
  br label %91

91:                                               ; preds = %76, %66
  br label %120

92:                                               ; preds = %56
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %92
  %96 = load i8**, i8*** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %6, align 8
  %101 = load i8*, i8** %2, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = load i8, i8* @G_DIR_SEPARATOR, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %95
  %109 = load i32, i32* @G_DIR_SEPARATOR_S, align 4
  %110 = load i8*, i8** %6, align 8
  %111 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %109, i8* %110)
  %112 = load i8**, i8*** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  store i8* %111, i8** %115, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @g_free(i8* %116)
  br label %118

118:                                              ; preds = %108, %95
  br label %119

119:                                              ; preds = %118, %92
  br label %120

120:                                              ; preds = %119, %91
  br label %121

121:                                              ; preds = %120, %43
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %11

125:                                              ; preds = %21
  %126 = load i8**, i8*** %3, align 8
  %127 = call i8* @g_build_filenamev(i8** %126)
  store i8* %127, i8** %7, align 8
  %128 = load i8**, i8*** %3, align 8
  %129 = call i32 @g_strfreev(i8** %128)
  %130 = load i8*, i8** %7, align 8
  ret i8* %130
}

declare dso_local i8** @g_strsplit(i8*, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @g_get_home_dir(...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i8* @g_strdup_printf(i8*, i32, i8*) #1

declare dso_local i8* @g_build_filenamev(i8**) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
