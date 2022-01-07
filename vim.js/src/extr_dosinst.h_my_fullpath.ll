; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_dosinst.h_my_fullpath.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_dosinst.h_my_fullpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [28 x i8] c"ERROR: File name too long!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @my_fullpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @my_fullpath(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @strncpy(i8* %22, i8* %23, i32 %24)
  br label %138

26:                                               ; preds = %3
  %27 = load i8, i8* @NUL, align 1
  %28 = load i8*, i8** %4, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @strrchr(i8* %29, i8 signext 47)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @strrchr(i8* %31, i8 signext 92)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ugt i8* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %35
  %43 = load i8*, i8** %10, align 8
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %42, %38, %26
  %45 = load i8*, i8** %5, align 8
  %46 = call i8* @strrchr(i8* %45, i8 signext 58)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ugt i8* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %49
  %57 = load i8*, i8** %10, align 8
  store i8* %57, i8** %9, align 8
  br label %58

58:                                               ; preds = %56, %52, %44
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %107

61:                                               ; preds = %58
  %62 = load i32, i32* @BUFSIZE, align 4
  %63 = call i32* @getcwd(i8* %16, i32 %62)
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i8* null, i8** %9, align 8
  store i8* null, i8** %12, align 8
  br label %106

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %10, align 8
  br label %84

73:                                               ; preds = %66
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8*, i8** %9, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %10, align 8
  br label %83

81:                                               ; preds = %73
  %82 = load i8*, i8** %9, align 8
  store i8* %82, i8** %10, align 8
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83, %70
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  store i32 %87, i32* %11, align 4
  %88 = load i8, i8* @NUL, align 1
  %89 = load i8*, i8** %10, align 8
  store i8 %88, i8* %89, align 1
  %90 = load i8*, i8** %5, align 8
  %91 = call i64 @mch_chdir(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i8* null, i8** %12, align 8
  br label %102

94:                                               ; preds = %84
  %95 = load i8*, i8** %10, align 8
  store i8* %95, i8** %5, align 8
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 92
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  br label %101

101:                                              ; preds = %98, %94
  br label %102

102:                                              ; preds = %101, %93
  %103 = load i32, i32* %11, align 4
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %10, align 8
  store i8 %104, i8* %105, align 1
  br label %106

106:                                              ; preds = %102, %65
  br label %107

107:                                              ; preds = %106, %58
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32* @getcwd(i8* %108, i32 %109)
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  store i8* null, i8** %12, align 8
  %113 = load i8, i8* @NUL, align 1
  %114 = load i8*, i8** %4, align 8
  store i8 %113, i8* %114, align 1
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = add nsw i32 %117, %119
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %121, 1
  %123 = icmp sge i32 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %126 = call i32 @myexit(i32 1)
  br label %127

127:                                              ; preds = %124, %115
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 @add_pathsep(i8* %128)
  %130 = load i8*, i8** %4, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @strcat(i8* %130, i8* %131)
  %133 = load i8*, i8** %9, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = call i64 @mch_chdir(i8* %16)
  br label %137

137:                                              ; preds = %135, %127
  br label %138

138:                                              ; preds = %137, %21
  br label %139

139:                                              ; preds = %143, %138
  %140 = load i8*, i8** %4, align 8
  %141 = call i8* @strchr(i8* %140, i8 signext 47)
  store i8* %141, i8** %9, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i8*, i8** %9, align 8
  store i8 92, i8* %144, align 1
  br label %139

145:                                              ; preds = %139
  %146 = load i8*, i8** %12, align 8
  %147 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %147)
  ret i8* %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32* @getcwd(i8*, i32) #2

declare dso_local i64 @mch_chdir(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @myexit(i32) #2

declare dso_local i32 @add_pathsep(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
