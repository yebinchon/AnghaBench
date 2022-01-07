; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_DlgDirSelect.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_DlgDirSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%p %s %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@CB_GETLBTEXTLEN = common dso_local global i32 0, align 4
@LB_GETTEXTLEN = common dso_local global i32 0, align 4
@CB_GETLBTEXT = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Returning %d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i32, i32)* @DIALOG_DlgDirSelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DIALOG_DlgDirSelect(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @GetDlgItem(i32 %20, i64 %21)
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @debugstr_w(i64 %27)
  br label %33

29:                                               ; preds = %6
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to i64*
  %32 = call i32 @debugstr_a(i64* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i32 [ %28, %26 ], [ %32, %29 ]
  %35 = load i64, i64* %11, align 8
  %36 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %34, i64 %35)
  %37 = load i32, i32* %19, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %7, align 4
  br label %185

41:                                               ; preds = %33
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @CB_GETCURSEL, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @LB_GETCURSEL, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i64 @SendMessageW(i32 %42, i32 %50, i64 0, i32 0)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* @LB_ERR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %7, align 4
  br label %185

57:                                               ; preds = %49
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @CB_GETLBTEXTLEN, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @LB_GETTEXTLEN, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load i64, i64* %16, align 8
  %68 = call i64 @SendMessageW(i32 %58, i32 %66, i64 %67, i32 0)
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* @LB_ERR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %7, align 4
  br label %185

74:                                               ; preds = %65
  %75 = call i32 (...) @GetProcessHeap()
  %76 = load i64, i64* %17, align 8
  %77 = add nsw i64 %76, 2
  %78 = mul i64 %77, 1
  %79 = call i8* @HeapAlloc(i32 %75, i32 0, i64 %78)
  store i8* %79, i8** %14, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %7, align 4
  br label %185

83:                                               ; preds = %74
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @CB_GETLBTEXT, align 4
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @LB_GETTEXT, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load i64, i64* %16, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = call i64 @SendMessageW(i32 %84, i32 %92, i64 %93, i32 %95)
  %97 = load i8*, i8** %14, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 91
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %18, align 4
  br i1 %101, label %103, label %125

103:                                              ; preds = %91
  %104 = load i8*, i8** %14, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 45
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i8*, i8** %14, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  store i8 58, i8* %111, align 1
  %112 = load i8*, i8** %14, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %14, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  store i8* %115, i8** %15, align 8
  br label %124

116:                                              ; preds = %103
  %117 = load i8*, i8** %14, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = call i64 @strlenW(i8* %118)
  %120 = sub i64 %119, 1
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8 92, i8* %121, align 1
  %122 = load i8*, i8** %14, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  store i8* %123, i8** %15, align 8
  br label %124

124:                                              ; preds = %116, %109
  br label %141

125:                                              ; preds = %91
  %126 = load i8*, i8** %14, align 8
  %127 = call i32* @strchrW(i8* %126, i8 signext 46)
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = call i64 @strlenW(i8* %131)
  %133 = add i64 %132, 1
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %14, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = call i64 @strlenW(i8* %136)
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  store i8 46, i8* %138, align 1
  br label %139

139:                                              ; preds = %129, %125
  %140 = load i8*, i8** %14, align 8
  store i8* %140, i8** %15, align 8
  br label %141

141:                                              ; preds = %139, %124
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %162, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* %10, align 8
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  %148 = load i32, i32* @CP_ACP, align 4
  %149 = load i8*, i8** %15, align 8
  %150 = load i64, i64* %9, align 8
  %151 = inttoptr i64 %150 to i64*
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @WideCharToMultiByte(i32 %148, i32 0, i8* %149, i32 -1, i64* %151, i64 %152, i32 0, i32 0)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %147
  %156 = load i64, i64* %9, align 8
  %157 = inttoptr i64 %156 to i64*
  %158 = load i64, i64* %10, align 8
  %159 = sub nsw i64 %158, 1
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %155, %147, %144
  br label %167

162:                                              ; preds = %141
  %163 = load i64, i64* %9, align 8
  %164 = load i8*, i8** %15, align 8
  %165 = load i64, i64* %10, align 8
  %166 = call i32 @lstrcpynW(i64 %163, i8* %164, i64 %165)
  br label %167

167:                                              ; preds = %162, %161
  %168 = call i32 (...) @GetProcessHeap()
  %169 = load i8*, i8** %14, align 8
  %170 = call i32 @HeapFree(i32 %168, i32 0, i8* %169)
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load i64, i64* %9, align 8
  %176 = call i32 @debugstr_w(i64 %175)
  br label %181

177:                                              ; preds = %167
  %178 = load i64, i64* %9, align 8
  %179 = inttoptr i64 %178 to i64*
  %180 = call i32 @debugstr_a(i64* %179)
  br label %181

181:                                              ; preds = %177, %174
  %182 = phi i32 [ %176, %174 ], [ %180, %177 ]
  %183 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %182)
  %184 = load i32, i32* %18, align 4
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %181, %81, %72, %55, %39
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local i32 @GetDlgItem(i32, i64) #1

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

declare dso_local i32 @debugstr_w(i64) #1

declare dso_local i32 @debugstr_a(i64*) #1

declare dso_local i64 @SendMessageW(i32, i32, i64, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i32* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i64*, i64, i32, i32) #1

declare dso_local i32 @lstrcpynW(i64, i8*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
