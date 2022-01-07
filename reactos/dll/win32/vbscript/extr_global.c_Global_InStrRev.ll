; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_InStrRev.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_InStrRev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"%s %s arg_cnt=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unsupported args\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@VT_NULL = common dso_local global i64 0, align 8
@VBSE_ILLEGAL_NULL_USE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Unsupported start %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_InStrRev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_InStrRev(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @debugstr_variant(i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = call i32 @debugstr_variant(i32* %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ugt i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %28, i32* %5, align 4
  br label %166

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ule i32 2, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp ule i32 %33, 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @V_VT(i32* %39)
  %41 = load i64, i64* @VT_NULL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %58, label %43

43:                                               ; preds = %35
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = call i64 @V_VT(i32* %45)
  %47 = load i64, i64* @VT_NULL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = icmp ugt i32 %50, 2
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = call i64 @V_VT(i32* %54)
  %56 = load i64, i64* @VT_NULL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %43, %35
  %59 = load i32, i32* @VBSE_ILLEGAL_NULL_USE, align 4
  %60 = call i32 @MAKE_VBSERROR(i32 %59)
  store i32 %60, i32* %5, align 4
  br label %166

61:                                               ; preds = %52, %49
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @to_string(i32* %62, i32** %12)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i64 @FAILED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %5, align 4
  br label %166

69:                                               ; preds = %61
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = call i32 @to_string(i32* %71, i32** %13)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i64 @SUCCEEDED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = icmp ugt i32 %77, 2
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = call i32 @to_int(i32* %81, i32* %10)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i64 @SUCCEEDED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %89, %86, %79
  br label %97

94:                                               ; preds = %76
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @SysStringLen(i32* %95)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %93
  br label %99

98:                                               ; preds = %69
  store i32* null, i32** %13, align 8
  br label %99

99:                                               ; preds = %98, %97
  %100 = load i32, i32* %14, align 4
  %101 = call i64 @SUCCEEDED(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %152

103:                                              ; preds = %99
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @SysStringLen(i32* %104)
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %16, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %16, align 8
  %110 = icmp uge i64 %108, %109
  br i1 %110, label %111, label %151

111:                                              ; preds = %103
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @SysStringLen(i32* %113)
  %115 = icmp sle i32 %112, %114
  br i1 %115, label %116, label %151

116:                                              ; preds = %111
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @SysStringLen(i32* %121)
  %123 = sext i32 %122 to i64
  %124 = sub i64 0, %123
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  store i32* %125, i32** %15, align 8
  br label %126

126:                                              ; preds = %147, %116
  %127 = load i32*, i32** %15, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = icmp uge i32* %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %126
  %131 = load i32*, i32** %15, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = load i64, i64* %16, align 8
  %134 = mul i64 %133, 4
  %135 = call i32 @memcmp(i32* %131, i32* %132, i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %130
  %138 = load i32*, i32** %15, align 8
  %139 = load i32*, i32** %12, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = add nsw i64 %143, 1
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %11, align 4
  br label %150

146:                                              ; preds = %130
  br label %147

147:                                              ; preds = %146
  %148 = load i32*, i32** %15, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 -1
  store i32* %149, i32** %15, align 8
  br label %126

150:                                              ; preds = %137, %126
  br label %151

151:                                              ; preds = %150, %111, %103
  br label %152

152:                                              ; preds = %151, %99
  %153 = load i32*, i32** %12, align 8
  %154 = call i32 @SysFreeString(i32* %153)
  %155 = load i32*, i32** %13, align 8
  %156 = call i32 @SysFreeString(i32* %155)
  %157 = load i32, i32* %14, align 4
  %158 = call i64 @FAILED(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %5, align 4
  br label %166

162:                                              ; preds = %152
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @return_int(i32* %163, i32 %164)
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %162, %160, %67, %58, %26
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @MAKE_VBSERROR(i32) #1

declare dso_local i32 @to_string(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @to_int(i32*, i32*) #1

declare dso_local i32 @SysStringLen(i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @return_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
