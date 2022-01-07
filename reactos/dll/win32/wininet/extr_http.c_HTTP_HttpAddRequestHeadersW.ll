; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_HttpAddRequestHeadersW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_HttpAddRequestHeadersW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_HTTP_INVALID_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"copying header: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"interpreting header %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@HTTP_ADDHDR_FLAG_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @HTTP_HttpAddRequestHeadersW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTP_HttpAddRequestHeadersW(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @ERROR_HTTP_INVALID_HEADER, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @debugstr_wn(i32 %16, i32 %17)
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @strlenW(i32 %23)
  store i32 %24, i32* %12, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* %12, align 4
  %29 = add i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @heap_alloc(i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add i32 %36, 1
  %38 = call i32 @lstrcpynW(i8* %34, i32 %35, i32 %37)
  %39 = load i8*, i8** %11, align 8
  store i8* %39, i8** %9, align 8
  br label %40

40:                                               ; preds = %113, %27
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %10, align 8
  br label %42

42:                                               ; preds = %58, %40
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47
  br label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  br label %42

61:                                               ; preds = %57, %42
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %117

67:                                               ; preds = %61
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 13
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %81

77:                                               ; preds = %72, %67
  %78 = load i8*, i8** %10, align 8
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %10, align 8
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @debugstr_w(i8* %82)
  %84 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i8*, i8** %9, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i8*, i8** %10, align 8
  store i8* %90, i8** %9, align 8
  %91 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %91, i32* %13, align 4
  br label %113

92:                                               ; preds = %81
  %93 = load i8*, i8** %9, align 8
  %94 = call i8** @HTTP_InterpretHttpHeader(i8* %93)
  store i8** %94, i8*** %14, align 8
  %95 = load i8**, i8*** %14, align 8
  %96 = icmp ne i8** %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load i32*, i32** %5, align 8
  %99 = load i8**, i8*** %14, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i8**, i8*** %14, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @HTTP_ADDHDR_FLAG_REQ, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @HTTP_ProcessHeader(i32* %98, i8* %101, i8* %104, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i8**, i8*** %14, align 8
  %110 = call i32 @HTTP_FreeTokens(i8** %109)
  br label %111

111:                                              ; preds = %97, %92
  %112 = load i8*, i8** %10, align 8
  store i8* %112, i8** %9, align 8
  br label %113

113:                                              ; preds = %111, %89
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @ERROR_SUCCESS, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %40, label %117

117:                                              ; preds = %113, %66
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @heap_free(i8* %118)
  %120 = load i32, i32* %13, align 4
  ret i32 %120
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_wn(i32, i32) #1

declare dso_local i32 @strlenW(i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @lstrcpynW(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i8** @HTTP_InterpretHttpHeader(i8*) #1

declare dso_local i32 @HTTP_ProcessHeader(i32*, i8*, i8*, i32) #1

declare dso_local i32 @HTTP_FreeTokens(i8**) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
