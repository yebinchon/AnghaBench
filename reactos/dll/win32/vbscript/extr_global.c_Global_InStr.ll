; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_InStr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_InStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unsupported compare argument %s\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"start %d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@VT_NULL = common dso_local global i64 0, align 8
@VT_BSTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported str1 type %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unsupported str2 type %s\0A\00", align 1
@DEFAULT_UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_InStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_InStr(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  %21 = icmp ule i32 2, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ule i32 %23, 4
  br label %25

25:                                               ; preds = %22, %4
  %26 = phi i1 [ false, %4 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %45 [
    i32 2, label %30
    i32 3, label %34
    i32 4, label %40
  ]

30:                                               ; preds = %25
  store i32* null, i32** %10, align 8
  %31 = load i32*, i32** %7, align 8
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32* %33, i32** %12, align 8
  br label %45

34:                                               ; preds = %25
  %35 = load i32*, i32** %7, align 8
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32* %39, i32** %12, align 8
  br label %45

40:                                               ; preds = %25
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @debugstr_variant(i32* %41)
  %43 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %44, i32* %5, align 4
  br label %134

45:                                               ; preds = %25, %34, %30
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @to_int(i32* %49, i32* %15)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i64 @FAILED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %17, align 4
  store i32 %55, i32* %5, align 4
  br label %134

56:                                               ; preds = %48
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @FIXME(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @E_FAIL, align 4
  store i32 %63, i32* %5, align 4
  br label %134

64:                                               ; preds = %56
  br label %66

65:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32*, i32** %11, align 8
  %68 = call i64 @V_VT(i32* %67)
  %69 = load i64, i64* @VT_NULL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i32*, i32** %12, align 8
  %73 = call i64 @V_VT(i32* %72)
  %74 = load i64, i64* @VT_NULL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %66
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @return_null(i32* %77)
  store i32 %78, i32* %5, align 4
  br label %134

79:                                               ; preds = %71
  %80 = load i32*, i32** %11, align 8
  %81 = call i64 @V_VT(i32* %80)
  %82 = load i64, i64* @VT_BSTR, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @debugstr_variant(i32* %85)
  %87 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %88, i32* %5, align 4
  br label %134

89:                                               ; preds = %79
  %90 = load i32*, i32** %11, align 8
  %91 = call i32* @V_BSTR(i32* %90)
  store i32* %91, i32** %13, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = call i64 @V_VT(i32* %92)
  %94 = load i64, i64* @VT_BSTR, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @debugstr_variant(i32* %97)
  %99 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %100, i32* %5, align 4
  br label %134

101:                                              ; preds = %89
  %102 = load i32*, i32** %12, align 8
  %103 = call i32* @V_BSTR(i32* %102)
  store i32* %103, i32** %14, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @SysStringLen(i32* %105)
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %101
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32*, i32** %14, align 8
  %114 = call i32* @strstrW(i32* %112, i32* %113)
  store i32* %114, i32** %18, align 8
  %115 = load i32*, i32** %18, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %108
  %118 = load i32*, i32** %18, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = ptrtoint i32* %118 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = add nsw i64 %123, 1
  br label %126

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %117
  %127 = phi i64 [ %124, %117 ], [ 0, %125 ]
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %16, align 4
  br label %130

129:                                              ; preds = %101
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @return_int(i32* %131, i32 %132)
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %96, %84, %76, %60, %54, %40
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @to_int(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @return_null(i32*) #1

declare dso_local i32* @V_BSTR(i32*) #1

declare dso_local i32 @SysStringLen(i32*) #1

declare dso_local i32* @strstrW(i32*, i32*) #1

declare dso_local i32 @return_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
