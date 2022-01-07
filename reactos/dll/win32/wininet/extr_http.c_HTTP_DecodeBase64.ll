; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_DecodeBase64.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_DecodeBase64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTP_Base64Dec = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"invalid base64: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*)* @HTTP_DecodeBase64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTP_DecodeBase64(i64* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %169, %2
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %174

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i8*, i8** @HTTP_Base64Dec, align 8
  %17 = call i64 @ARRAYSIZE(i8* %16)
  %18 = icmp uge i64 %15, %17
  br i1 %18, label %46, label %19

19:                                               ; preds = %12
  %20 = load i8*, i8** @HTTP_Base64Dec, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %25, i8* %26, align 1
  %27 = sext i8 %25 to i32
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %46, label %29

29:                                               ; preds = %19
  %30 = load i64*, i64** %4, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = load i8*, i8** @HTTP_Base64Dec, align 8
  %34 = call i64 @ARRAYSIZE(i8* %33)
  %35 = icmp uge i64 %32, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** @HTTP_Base64Dec, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 %42, i8* %43, align 1
  %44 = sext i8 %42 to i32
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %36, %29, %19, %12
  %47 = load i64*, i64** %4, align 8
  %48 = call i32 @debugstr_w(i64* %47)
  %49 = call i32 @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 0, i32* %3, align 4
  br label %176

50:                                               ; preds = %36
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = shl i32 %56, 2
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = ashr i32 %60, 4
  %62 = or i32 %57, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 %63, i8* %67, align 1
  br label %68

68:                                               ; preds = %53, %50
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  %71 = load i64*, i64** %4, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 61
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i64*, i64** %4, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 61
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %174

81:                                               ; preds = %75, %68
  %82 = load i64*, i64** %4, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64, i64* %83, align 8
  %85 = load i8*, i8** @HTTP_Base64Dec, align 8
  %86 = call i64 @ARRAYSIZE(i8* %85)
  %87 = icmp ugt i64 %84, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %81
  %89 = load i8*, i8** @HTTP_Base64Dec, align 8
  %90 = load i64*, i64** %4, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 %94, i8* %95, align 1
  %96 = sext i8 %94 to i32
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %88, %81
  %99 = load i64*, i64** %4, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = call i32 @debugstr_w(i64* %100)
  %102 = call i32 @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %101)
  store i32 0, i32* %3, align 4
  br label %176

103:                                              ; preds = %88
  %104 = load i8*, i8** %5, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = shl i32 %109, 4
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = ashr i32 %113, 2
  %115 = or i32 %110, %114
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 %116, i8* %120, align 1
  br label %121

121:                                              ; preds = %106, %103
  %122 = load i32, i32* %6, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %6, align 4
  %124 = load i64*, i64** %4, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 61
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %174

129:                                              ; preds = %121
  %130 = load i64*, i64** %4, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 3
  %132 = load i64, i64* %131, align 8
  %133 = load i8*, i8** @HTTP_Base64Dec, align 8
  %134 = call i64 @ARRAYSIZE(i8* %133)
  %135 = icmp ugt i64 %132, %134
  br i1 %135, label %146, label %136

136:                                              ; preds = %129
  %137 = load i8*, i8** @HTTP_Base64Dec, align 8
  %138 = load i64*, i64** %4, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 3
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  store i8 %142, i8* %143, align 1
  %144 = sext i8 %142 to i32
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %151

146:                                              ; preds = %136, %129
  %147 = load i64*, i64** %4, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 3
  %149 = call i32 @debugstr_w(i64* %148)
  %150 = call i32 @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %149)
  store i32 0, i32* %3, align 4
  br label %176

151:                                              ; preds = %136
  %152 = load i8*, i8** %5, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = shl i32 %157, 6
  %159 = and i32 %158, 192
  %160 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = or i32 %159, %162
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 %164, i8* %168, align 1
  br label %169

169:                                              ; preds = %154, %151
  %170 = load i32, i32* %6, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %6, align 4
  %172 = load i64*, i64** %4, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 4
  store i64* %173, i64** %4, align 8
  br label %8

174:                                              ; preds = %128, %80, %8
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %146, %98, %46
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i64 @ARRAYSIZE(i8*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
