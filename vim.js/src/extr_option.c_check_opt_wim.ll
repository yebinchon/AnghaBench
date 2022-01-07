; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_option.c_check_opt_wim.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_option.c_check_opt_wim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_wim = common dso_local global i8* null, align 8
@NUL = common dso_local global i8 0, align 1
@FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"longest\00", align 1
@WIM_LONGEST = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@WIM_FULL = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@WIM_LIST = common dso_local global i8 0, align 1
@wim_flags = common dso_local global i8* null, align 8
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_opt_wim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_opt_wim() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 %11
  store i8 0, i8* %12, align 1
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i8*, i8** @p_wim, align 8
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %144, %16
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %147

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %32, %22
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @ASCII_ISALPHA(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %23

35:                                               ; preds = %23
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @NUL, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %35
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 44
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 58
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @FAIL, align 4
  store i32 %62, i32* %1, align 4
  br label %180

63:                                               ; preds = %53, %45, %35
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 7
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i8*, i8** %3, align 8
  %68 = call i64 @STRNCMP(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i8, i8* @WIM_LONGEST, align 1
  %72 = sext i8 %71 to i32
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = or i32 %77, %72
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %75, align 1
  br label %118

80:                                               ; preds = %66, %63
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 4
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load i8*, i8** %3, align 8
  %85 = call i64 @STRNCMP(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i8, i8* @WIM_FULL, align 1
  %89 = sext i8 %88 to i32
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = or i32 %94, %89
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %92, align 1
  br label %117

97:                                               ; preds = %83, %80
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i8*, i8** %3, align 8
  %102 = call i64 @STRNCMP(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load i8, i8* @WIM_LIST, align 1
  %106 = sext i8 %105 to i32
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = or i32 %111, %106
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %109, align 1
  br label %116

114:                                              ; preds = %100, %97
  %115 = load i32, i32* @FAIL, align 4
  store i32 %115, i32* %1, align 4
  br label %180

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %87
  br label %118

118:                                              ; preds = %117, %70
  %119 = load i32, i32* %4, align 4
  %120 = load i8*, i8** %3, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %3, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = load i8, i8* @NUL, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %147

130:                                              ; preds = %118
  %131 = load i8*, i8** %3, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 44
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @FAIL, align 4
  store i32 %139, i32* %1, align 4
  br label %180

140:                                              ; preds = %135
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %140, %130
  br label %144

144:                                              ; preds = %143
  %145 = load i8*, i8** %3, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %3, align 8
  br label %18

147:                                              ; preds = %129, %18
  br label %148

148:                                              ; preds = %151, %147
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %149, 3
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 %158
  store i8 %155, i8* %159, align 1
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %148

162:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %175, %162
  %164 = load i32, i32* %4, align 4
  %165 = icmp slt i32 %164, 4
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = load i8*, i8** @wim_flags, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  store i8 %170, i8* %174, align 1
  br label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %163

178:                                              ; preds = %163
  %179 = load i32, i32* @OK, align 4
  store i32 %179, i32* %1, align 4
  br label %180

180:                                              ; preds = %178, %138, %114, %61
  %181 = load i32, i32* %1, align 4
  ret i32 %181
}

declare dso_local i64 @ASCII_ISALPHA(i8 signext) #1

declare dso_local i64 @STRNCMP(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
