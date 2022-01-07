; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk.c_translate_mnemonic_tag.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk.c_translate_mnemonic_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@TAB = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @translate_mnemonic_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @translate_mnemonic_tag(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @CONVERT_TO_UTF8(i8* %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %130

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %7, align 8
  br label %17

17:                                               ; preds = %42, %15
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @NUL, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @TAB, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br label %31

31:                                               ; preds = %24, %17
  %32 = phi i1 [ false, %17 ], [ %30, %24 ]
  br i1 %32, label %33, label %45

33:                                               ; preds = %31
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 95
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  br label %17

45:                                               ; preds = %31
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = add nsw i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = call i8* @alloc(i32 %55)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %126

59:                                               ; preds = %45
  %60 = load i8*, i8** %6, align 8
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %4, align 8
  store i8* %61, i8** %7, align 8
  br label %62

62:                                               ; preds = %120, %59
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @NUL, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* @TAB, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %72, %74
  br label %76

76:                                               ; preds = %69, %62
  %77 = phi i1 [ false, %62 ], [ %75, %69 ]
  br i1 %77, label %78, label %123

78:                                               ; preds = %76
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 95
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  store i8 95, i8* %84, align 1
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  store i8 95, i8* %86, align 1
  br label %119

88:                                               ; preds = %78
  %89 = load i8*, i8** %7, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 38
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %8, align 8
  store i8 %95, i8* %96, align 1
  br label %118

98:                                               ; preds = %88
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 38
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  %107 = load i8, i8* %105, align 1
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %8, align 8
  store i8 %107, i8* %108, align 1
  br label %117

110:                                              ; preds = %98
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  store i8 95, i8* %114, align 1
  br label %116

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117, %93
  br label %119

119:                                              ; preds = %118, %83
  br label %120

120:                                              ; preds = %119
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %7, align 8
  br label %62

123:                                              ; preds = %76
  %124 = load i8, i8* @NUL, align 1
  %125 = load i8*, i8** %8, align 8
  store i8 %124, i8* %125, align 1
  br label %126

126:                                              ; preds = %123, %45
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 @CONVERT_TO_UTF8_FREE(i8* %127)
  %129 = load i8*, i8** %6, align 8
  store i8* %129, i8** %3, align 8
  br label %130

130:                                              ; preds = %126, %14
  %131 = load i8*, i8** %3, align 8
  ret i8* %131
}

declare dso_local i8* @CONVERT_TO_UTF8(i8*) #1

declare dso_local i8* @alloc(i32) #1

declare dso_local i32 @CONVERT_TO_UTF8_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
