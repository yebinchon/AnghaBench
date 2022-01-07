; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_ParseIniSectionName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_ParseIniSectionName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_THEME_APP_NAME = common dso_local global i32 0, align 4
@MAX_THEME_CLASS_NAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8*, i32*, i32*)* @MSSTYLES_ParseIniSectionName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSSTYLES_ParseIniSectionName(i8* %0, i64 %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [255 x i8], align 16
  %15 = alloca [60 x i8], align 16
  %16 = alloca [60 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = bitcast [60 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 60, i1 false)
  %20 = bitcast [60 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 60, i1 false)
  %21 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @min(i64 %24, i32 255)
  %26 = call i32 @lstrcpynW(i8* %21, i8* %22, i32 %25)
  %27 = load i8*, i8** %10, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %11, align 8
  store i8 0, i8* %28, align 1
  %29 = load i32*, i32** %12, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** %13, align 8
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  store i8* %31, i8** %18, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = call i8* @strchrW(i8* %32, i8 signext 58)
  store i8* %33, i8** %17, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %6
  %37 = load i8*, i8** %17, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %17, align 8
  store i8 0, i8* %37, align 1
  %39 = load i8*, i8** %17, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %17, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %18, align 8
  %43 = load i32, i32* @MAX_THEME_APP_NAME, align 4
  %44 = call i32 @lstrcpynW(i8* %41, i8* %42, i32 %43)
  %45 = load i8*, i8** %17, align 8
  store i8* %45, i8** %18, align 8
  br label %46

46:                                               ; preds = %36, %6
  %47 = load i8*, i8** %18, align 8
  %48 = call i8* @strchrW(i8* %47, i8 signext 46)
  store i8* %48, i8** %17, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  %52 = load i8*, i8** %17, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %17, align 8
  store i8 0, i8* %52, align 1
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = load i32, i32* @MAX_THEME_CLASS_NAME, align 4
  %57 = call i32 @lstrcpynW(i8* %54, i8* %55, i32 %56)
  %58 = load i8*, i8** %17, align 8
  store i8* %58, i8** %18, align 8
  %59 = load i8*, i8** %18, align 8
  %60 = call i8* @strchrW(i8* %59, i8 signext 40)
  store i8* %60, i8** %17, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %51
  %64 = load i8*, i8** %17, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %17, align 8
  store i8 0, i8* %64, align 1
  %66 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %67 = load i8*, i8** %18, align 8
  %68 = call i32 @lstrcpynW(i8* %66, i8* %67, i32 60)
  %69 = load i8*, i8** %17, align 8
  store i8* %69, i8** %18, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = call i8* @strchrW(i8* %70, i8 signext 41)
  store i8* %71, i8** %17, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %63
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %7, align 4
  br label %145

76:                                               ; preds = %63
  %77 = load i8*, i8** %17, align 8
  store i8 0, i8* %77, align 1
  %78 = getelementptr inbounds [60 x i8], [60 x i8]* %16, i64 0, i64 0
  %79 = load i8*, i8** %18, align 8
  %80 = call i32 @lstrcpynW(i8* %78, i8* %79, i32 60)
  br label %85

81:                                               ; preds = %51
  %82 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %83 = load i8*, i8** %18, align 8
  %84 = call i32 @lstrcpynW(i8* %82, i8* %83, i32 60)
  br label %85

85:                                               ; preds = %81, %76
  br label %116

86:                                               ; preds = %46
  %87 = load i8*, i8** %18, align 8
  %88 = call i8* @strchrW(i8* %87, i8 signext 40)
  store i8* %88, i8** %17, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load i8*, i8** %17, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %17, align 8
  store i8 0, i8* %92, align 1
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %18, align 8
  %96 = load i32, i32* @MAX_THEME_CLASS_NAME, align 4
  %97 = call i32 @lstrcpynW(i8* %94, i8* %95, i32 %96)
  %98 = load i8*, i8** %17, align 8
  store i8* %98, i8** %18, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = call i8* @strchrW(i8* %99, i8 signext 41)
  store i8* %100, i8** %17, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %91
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %7, align 4
  br label %145

105:                                              ; preds = %91
  %106 = load i8*, i8** %17, align 8
  store i8 0, i8* %106, align 1
  %107 = getelementptr inbounds [60 x i8], [60 x i8]* %16, i64 0, i64 0
  %108 = load i8*, i8** %18, align 8
  %109 = call i32 @lstrcpynW(i8* %107, i8* %108, i32 60)
  br label %115

110:                                              ; preds = %86
  %111 = load i8*, i8** %11, align 8
  %112 = load i8*, i8** %18, align 8
  %113 = load i32, i32* @MAX_THEME_CLASS_NAME, align 4
  %114 = call i32 @lstrcpynW(i8* %111, i8* %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %85
  %117 = load i8*, i8** %11, align 8
  %118 = load i8, i8* %117, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %7, align 4
  br label %145

122:                                              ; preds = %116
  %123 = load i8*, i8** %11, align 8
  %124 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %125 = load i8, i8* %124, align 16
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  br label %131

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i8* [ %129, %128 ], [ null, %130 ]
  %133 = getelementptr inbounds [60 x i8], [60 x i8]* %16, i64 0, i64 0
  %134 = load i8, i8* %133, align 16
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = getelementptr inbounds [60 x i8], [60 x i8]* %16, i64 0, i64 0
  br label %140

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi i8* [ %138, %137 ], [ null, %139 ]
  %142 = load i32*, i32** %12, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @MSSTYLES_LookupPartState(i8* %123, i8* %132, i8* %141, i32* %142, i32* %143)
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %140, %120, %103, %74
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lstrcpynW(i8*, i8*, i32) #2

declare dso_local i32 @min(i64, i32) #2

declare dso_local i8* @strchrW(i8*, i8 signext) #2

declare dso_local i32 @MSSTYLES_LookupPartState(i8*, i8*, i8*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
