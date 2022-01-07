; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__splitpath_raw.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__splitpath_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STB_EXT_NO_PERIOD = common dso_local global i32 0, align 4
@STB_EXT = common dso_local global i32 0, align 4
@STB_PATH = common dso_local global i32 0, align 4
@STB_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @stb__splitpath_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stb__splitpath_raw(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @stb_strrchr2(i8* %19, i8 signext 47, i8 signext 92)
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 46)
  store i8* %22, i8** %15, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i8*, i8** %15, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %15, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* null, i8** %15, align 8
  br label %33

33:                                               ; preds = %32, %28, %25, %3
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %14, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @STB_EXT_NO_PERIOD, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @STB_EXT, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @STB_PATH, align 4
  %50 = load i32, i32* @STB_FILE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @STB_EXT, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %48, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  store i8* null, i8** %4, align 8
  br label %181

57:                                               ; preds = %47
  %58 = load i8*, i8** %14, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %67

61:                                               ; preds = %57
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  br label %67

67:                                               ; preds = %61, %60
  %68 = phi i64 [ 0, %60 ], [ %66, %61 ]
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  br label %81

75:                                               ; preds = %67
  %76 = load i8*, i8** %15, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  br label %81

81:                                               ; preds = %75, %72
  %82 = phi i64 [ %74, %72 ], [ %80, %75 ]
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @STB_PATH, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @STB_PATH, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 2, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %91, %88
  br label %124

97:                                               ; preds = %81
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @STB_FILE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %9, align 4
  br label %123

104:                                              ; preds = %97
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @STB_EXT_NO_PERIOD, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %110
  br label %122

122:                                              ; preds = %121, %104
  br label %123

123:                                              ; preds = %122, %102
  br label %124

124:                                              ; preds = %123, %96
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @STB_EXT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %10, align 4
  br label %141

131:                                              ; preds = %124
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @STB_FILE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %10, align 4
  br label %140

138:                                              ; preds = %131
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %138, %136
  br label %141

141:                                              ; preds = %140, %129
  %142 = load i8*, i8** %5, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %147, %148
  %150 = add nsw i32 %149, 1
  %151 = call i64 @malloc(i32 %150)
  %152 = inttoptr i64 %151 to i8*
  store i8* %152, i8** %5, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %144
  store i8* null, i8** %4, align 8
  br label %181

156:                                              ; preds = %144
  br label %157

157:                                              ; preds = %156, %141
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i8*, i8** %5, align 8
  %162 = call i32 @stb_p_strcpy_s(i8* %161, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %163 = load i8*, i8** %5, align 8
  store i8* %163, i8** %4, align 8
  br label %181

164:                                              ; preds = %157
  %165 = load i8*, i8** %5, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %9, align 4
  %172 = sub nsw i32 %170, %171
  %173 = call i32 @stb_p_strncpy_s(i8* %165, i32 8, i8* %169, i32 %172)
  %174 = load i8*, i8** %5, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %9, align 4
  %177 = sub nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %174, i64 %178
  store i8 0, i8* %179, align 1
  %180 = load i8*, i8** %5, align 8
  store i8* %180, i8** %4, align 8
  br label %181

181:                                              ; preds = %164, %160, %155, %56
  %182 = load i8*, i8** %4, align 8
  ret i8* %182
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @stb_strrchr2(i8*, i8 signext, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stb_p_strcpy_s(i8*, i32, i8*) #1

declare dso_local i32 @stb_p_strncpy_s(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
