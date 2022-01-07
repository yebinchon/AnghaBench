; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_remove_dot_segments.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_remove_dot_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"(%p %d): Path after dot segments removed %s len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @remove_dot_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_dot_segments(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %141, %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %142

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @is_slash(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i1 [ false, %20 ], [ %29, %24 ]
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  %35 = load i8, i8* %33, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  store i8 %35, i8* %36, align 1
  br label %20

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %142

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  %46 = load i8, i8* %44, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %5, align 8
  store i8 %46, i8* %47, align 1
  br label %49

49:                                               ; preds = %140, %73, %43
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ult i8* %50, %51
  br i1 %52, label %53, label %141

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 46
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %141

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  br label %141

67:                                               ; preds = %59
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @is_slash(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %6, align 8
  br label %49

76:                                               ; preds = %67
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 46
  br i1 %81, label %93, label %82

82:                                               ; preds = %76
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8*, i8** %7, align 8
  %86 = icmp ne i8* %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @is_slash(i8 signext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87, %76
  br label %141

94:                                               ; preds = %87, %82
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = icmp ugt i8* %95, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 -1
  store i8* %101, i8** %5, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @is_slash(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 -1
  store i8* %107, i8** %5, align 8
  br label %108

108:                                              ; preds = %105, %99, %94
  br label %109

109:                                              ; preds = %122, %108
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** %3, align 8
  %112 = icmp ugt i8* %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %115, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @is_slash(i8 signext %116)
  %118 = icmp ne i64 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %113, %109
  %121 = phi i1 [ false, %109 ], [ %119, %113 ]
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  br label %109

123:                                              ; preds = %120
  %124 = load i8*, i8** %5, align 8
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @is_slash(i8 signext %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %5, align 8
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  store i8* %133, i8** %6, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = icmp ne i8* %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %6, align 8
  br label %140

140:                                              ; preds = %137, %131
  br label %49

141:                                              ; preds = %93, %64, %58, %49
  br label %15

142:                                              ; preds = %42, %15
  %143 = load i8*, i8** %5, align 8
  %144 = load i8*, i8** %3, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %8, align 4
  %149 = load i8*, i8** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i8*, i8** %3, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @debugstr_wn(i8* %151, i32 %152)
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @TRACE(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %149, i32 %150, i32 %153, i32 %154)
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

declare dso_local i64 @is_slash(i8 signext) #1

declare dso_local i32 @TRACE(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
