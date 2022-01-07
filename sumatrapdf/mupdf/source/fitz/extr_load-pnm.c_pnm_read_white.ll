; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-pnm.c_pnm_read_white.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-pnm.c_pnm_read_white.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot parse whitespace in pnm image\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"expected whitespace/comment in pnm image\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"expected whitespace in pnm image\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*, i32)* @pnm_read_white to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pnm_read_white(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = ptrtoint i8* %9 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %18 = call i32 @fz_throw(i32* %16, i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %90

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @iswhiteeol(i8 zeroext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 35
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %35 = call i32 @fz_throw(i32* %33, i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %27, %22
  br label %37

37:                                               ; preds = %48, %36
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ult i8* %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @iswhite(i8 zeroext %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i1 [ false, %37 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  br label %37

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 35
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @iseol(i8 zeroext %67)
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %65, %61
  %72 = phi i1 [ false, %61 ], [ %70, %65 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  br label %61

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %55, %51
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i64 @iseol(i8 zeroext %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %86, %81, %77
  br label %188

90:                                               ; preds = %19
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @iswhiteeol(i8 zeroext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 35
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %103 = call i32 @fz_throw(i32* %101, i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %95, %90
  br label %105

105:                                              ; preds = %116, %104
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = icmp ult i8* %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = load i8, i8* %110, align 1
  %112 = call i64 @iswhiteeol(i8 zeroext %111)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %109, %105
  %115 = phi i1 [ false, %105 ], [ %113, %109 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  br label %105

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %186, %119
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = icmp ult i8* %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i8*, i8** %6, align 8
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 35
  br label %129

129:                                              ; preds = %124, %120
  %130 = phi i1 [ false, %120 ], [ %128, %124 ]
  br i1 %130, label %131, label %187

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %144, %131
  %133 = load i8*, i8** %6, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = icmp ult i8* %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i8*, i8** %6, align 8
  %138 = load i8, i8* %137, align 1
  %139 = call i64 @iseol(i8 zeroext %138)
  %140 = icmp ne i64 %139, 0
  %141 = xor i1 %140, true
  br label %142

142:                                              ; preds = %136, %132
  %143 = phi i1 [ false, %132 ], [ %141, %136 ]
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %6, align 8
  br label %132

147:                                              ; preds = %142
  %148 = load i8*, i8** %6, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = icmp ult i8* %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load i8*, i8** %6, align 8
  %153 = load i8, i8* %152, align 1
  %154 = call i64 @iseol(i8 zeroext %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %6, align 8
  br label %159

159:                                              ; preds = %156, %151, %147
  br label %160

160:                                              ; preds = %171, %159
  %161 = load i8*, i8** %6, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = icmp ult i8* %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i8*, i8** %6, align 8
  %166 = load i8, i8* %165, align 1
  %167 = call i64 @iswhiteeol(i8 zeroext %166)
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %164, %160
  %170 = phi i1 [ false, %160 ], [ %168, %164 ]
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %6, align 8
  br label %160

174:                                              ; preds = %169
  %175 = load i8*, i8** %6, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = icmp ult i8* %175, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = load i8*, i8** %6, align 8
  %180 = load i8, i8* %179, align 1
  %181 = call i64 @iseol(i8 zeroext %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i8*, i8** %6, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %6, align 8
  br label %186

186:                                              ; preds = %183, %178, %174
  br label %120

187:                                              ; preds = %129
  br label %188

188:                                              ; preds = %187, %89
  %189 = load i8*, i8** %6, align 8
  ret i8* %189
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i64 @iswhiteeol(i8 zeroext) #1

declare dso_local i64 @iswhite(i8 zeroext) #1

declare dso_local i64 @iseol(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
